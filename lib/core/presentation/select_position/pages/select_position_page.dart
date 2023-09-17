import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/presentation/app_global/bloc/app_global_bloc.dart';
import 'package:lost_and_found/core/presentation/select_position/bloc/select_position_bloc.dart';
import 'package:lost_and_found/utils/utility.dart';
import 'package:sizer/sizer.dart';

import '../../../../injection_container.dart';
import '../../../../utils/colors/custom_color.dart';
import '../../widgets/custom_circular_progress.dart';
import '../../widgets/large_green_button.dart';

class SelectPositionScreen extends StatefulWidget {
  final LatLng startingPosition;
  final String address;

  const SelectPositionScreen({super.key, required this.startingPosition, required this.address});

  @override
  State<SelectPositionScreen> createState() => _SelectPositionScreenState();
}

class _SelectPositionScreenState extends State<SelectPositionScreen> with TickerProviderStateMixin {
  bool isAlertSet = false;
  late LatLng center = widget.startingPosition;
  late LatLng markerPos = widget.startingPosition;
  late String address = widget.address;
  final _controller = TextEditingController();

  late final AnimatedMapController mapController =
      AnimatedMapController(vsync: this, duration: const Duration(milliseconds: 3000));

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppGlobalBloc, AppGlobalState>(
      builder: (appGlobalCtx, appGlobalState) => BlocBuilder<AppGlobalBloc, AppGlobalState>(
        builder: (appGlobalCtx, appGlobalState) => BlocProvider<SelectPositionBloc>(
          create: (_) => sl<SelectPositionBloc>()..add(SelectPositionEvent.selectPositionCreated(markerPos, address)),
          child: BlocConsumer<SelectPositionBloc, SelectPositionState>(
            listener: (ctx, state) {
              final addressFailureOrSuccess = state.addressFailureOrSuccess;
              final positionFailureOrSuccess = state.positionFailureOrSuccess;

              if (markerPos.latitude != state.userCurrentPos.latitude ||
                  (positionFailureOrSuccess != null && positionFailureOrSuccess.isRight())) {
                if (markerPos.latitude != state.userCurrentPos.latitude) {
                  setState(() {
                    markerPos = LatLng(state.userCurrentPos.latitude, state.userCurrentPos.longitude);
                  });
                }

                if (addressFailureOrSuccess != null && addressFailureOrSuccess.isRight()) {
                  mapController.animatedZoomOut();
                }

                mapController.centerOnPoint(LatLng(markerPos.latitude, markerPos.longitude), zoom: 17);
              }

              if (addressFailureOrSuccess != null) {
                addressFailureOrSuccess.fold((failure) => showBasicErrorSnackbar(ctx, failure), (r) => null);
              }

              if (positionFailureOrSuccess != null) {
                positionFailureOrSuccess.fold((failure) {
                  if (!state.hasPermissions) {
                    if (state.isPermissionNegated) {
                      showLocationPermissionDeniedDialog(context);
                    } else if (state.isPermissionPermanentlyNegated) {
                      showLocationPermissionPermanentlyDeniedDialog(context);
                    }
                  } else if (!state.isDeviceConnected) {
                    showConnectionLostAlert(state.isDeviceConnected);
                  } else if (!state.isServiceAvailable) {
                    showPositionServiceNotAvailableAlert(state.isDeviceConnected);
                  }
                }, (_) {
                  ctx.read<SelectPositionBloc>().add(const SelectPositionEvent.fakeContainerToggle(false));
                });
              }
            },
            builder: (ctx, state) {
              var fakeButton = InkWell(
                onTap: () => ctx
                    .read<SelectPositionBloc>()
                    .add(SelectPositionEvent.fakeContainerToggle(!state.isContainerExpanded)),
                child: Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            state.address.value.getOrElse(() => "").isEmpty
                                ? AppLocalizations.of(context)!.searchPosition
                                : state.address.value.getOrElse(() => ""),
                            textAlign:
                                state.address.value.getOrElse(() => "").isEmpty ? TextAlign.center : TextAlign.left,
                            style: const TextStyle(fontSize: 18, overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        SizedBox(
                          width: 4.2.w,
                        )
                      ],
                    )),
              );
              var textFormField = TextFormField(
                controller: _controller,
                onChanged: (value) => ctx.read<SelectPositionBloc>().add(SelectPositionEvent.addressFieldChanged(value)),
                autofocus: true,
                decoration: InputDecoration(
                    errorMaxLines: 3,
                    hintText: AppLocalizations.of(context)!.insertCityOrAddress,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
                    fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    suffixIconColor: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                    suffixIcon: IconButton(
                      onPressed: () {
                        ctx.read<SelectPositionBloc>().add(const SelectPositionEvent.addressFieldChanged(""));
                        _controller.clear();
                      },
                      icon: const Icon(Icons.cancel),
                    )),
                validator: (_) => state.address.value.fold(
                  (failure) => failure.maybeWhen<String?>(
                      validationFailure: () => AppLocalizations.of(context)!.failureInvalidAddress, orElse: () => null),
                  (_) => null,
                ),
                autovalidateMode: state.showError == true ? AutovalidateMode.always : AutovalidateMode.disabled,
              );
              return Scaffold(
                backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
                appBar: AppBar(
                  backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
                  elevation: 0,
                  surfaceTintColor: Theme.of(context).colorScheme.outline,
                  shadowColor: Theme.of(context).colorScheme.outline,
                  iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
                  title: Text(
                    AppLocalizations.of(context)!.positionPageTitle,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ),
                body: SafeArea(
                    minimum: EdgeInsets.zero,
                    child: Stack(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 150),
                                child: FlutterMap(
                                  mapController: mapController.mapController,
                                  options: MapOptions(
                                      maxZoom: 18,
                                      onMapReady: () {
                                        if (markerPos != appGlobalState.defaultPosition) {
                                          mapController.animatedZoomOut();
                                          mapController.centerOnPoint(LatLng(markerPos.latitude, markerPos.longitude),
                                              zoom: 17);
                                        }
                                      },
                                      interactiveFlags: InteractiveFlag.all & ~InteractiveFlag.rotate,
                                      center: center,
                                      zoom: 5.5,
                                      onPositionChanged: (MapPosition position, bool gesture) {
                                        // Update marker position based on the map center
                                        setState(() {
                                          markerPos = LatLng(position.center!.latitude, position.center!.longitude);
                                        });
                                      }),
                                  children: [
                                    TileLayer(
                                      urlTemplate: appGlobalState.theme == ThemeMode.dark
                                          ? 'https://tiles.stadiamaps.com/tiles/alidade_smooth_dark/{z}/{x}/{y}.png?api_key=1a6bb6ec-c67a-42db-bde0-08b060c71f13'
                                          : (appGlobalState.theme == ThemeMode.light
                                              ? 'https://tile.openstreetmap.org/{z}/{x}/{y}.png'
                                              : (MediaQuery.of(context).platformBrightness == Brightness.dark
                                                  ? 'https://tiles.stadiamaps.com/tiles/alidade_smooth_dark/{z}/{x}/{y}.png?api_key=1a6bb6ec-c67a-42db-bde0-08b060c71f13'
                                                  : 'https://tile.openstreetmap.org/{z}/{x}/{y}.png')),
                                      userAgentPackageName: 'it.fabc.lostandfound',

                                    ),
                                    !state.isContainerExpanded
                                        ? MarkerLayer(
                                            markers: [
                                              Marker(
                                                width: 200.0,
                                                height: 200.0,
                                                point: markerPos,
                                                builder: (ctx) => Padding(
                                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 65),
                                                  child: Icon(
                                                    Icons.location_on,
                                                    color: Theme.of(context).colorScheme.primary,
                                                    weight: 10,
                                                    size: 80,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Container(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 0.0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: state.isContainerExpanded
                                    ? Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Theme.of(context).colorScheme.primary,
                                        ),
                                        child: InkWell(
                                          onTap: () => ctx
                                              .read<SelectPositionBloc>()
                                              .add(SelectPositionEvent.fakeContainerToggle(!state.isContainerExpanded)),
                                          borderRadius: BorderRadius.circular(24.0),
                                          child: Center(
                                            child: Icon(
                                              Icons.arrow_downward,
                                              color: Theme.of(context).colorScheme.surface,
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(),
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                width: MediaQuery.of(context).size.width,
                                //height: state.isContainerExpanded? 260 : 240.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).extension<CustomColors>()!.background2,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                                      child: state.isContainerExpanded ? textFormField : fakeButton,
                                    ),
                                    state.isContainerExpanded
                                        ? Padding(
                                            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                            child: PersonalizedLargeGreenButton(
                                                onPressed: () {
                                                  if (!state.isSearchingCurrentPosition &&
                                                      !state.isSearchingAddressPosition) {
                                                    ctx
                                                        .read<SelectPositionBloc>()
                                                        .add(const SelectPositionEvent.searchPosition());
                                                  }
                                                },
                                                text: state.isSearchingCurrentPosition || state.isSearchingAddressPosition
                                                    ? CustomCircularProgress(
                                                        size: 25,
                                                        color: Theme.of(context).colorScheme.onPrimary,
                                                      )
                                                    : Text(
                                                        AppLocalizations.of(context)!.search,
                                                        style: TextStyle(
                                                            fontSize: 16, color: Theme.of(context).colorScheme.onPrimary),
                                                      )),
                                          )
                                        : Container(),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: TextButton(
                                        onPressed: () {
                                          if (!state.isSearchingAddressPosition && !state.isSearchingCurrentPosition) {
                                            if (state.hasPermissions &&
                                                state.isDeviceConnected &&
                                                state.isServiceAvailable) {
                                              mapController.animatedZoomOut();
                                            }

                                            ctx
                                                .read<SelectPositionBloc>()
                                                .add(const SelectPositionEvent.selectCurrentPosition());
                                          }
                                        },
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            state.isSearchingAddressPosition || state.isSearchingCurrentPosition
                                                ? Container()
                                                : const Flexible(
                                                    child: Icon(
                                                      Icons.navigation,
                                                      size: 28,
                                                    ),
                                                  ),
                                            const SizedBox(width: 8.0),
                                            state.isSearchingAddressPosition || state.isSearchingCurrentPosition
                                                ? const CustomCircularProgress(
                                                    size: 25,
                                                  )
                                                : Flexible(
                                                    flex: 3,
                                                    child: Text(
                                                      AppLocalizations.of(context)!.positionUseCurrentLocation,
                                                      overflow: TextOverflow.ellipsis,
                                                      style: const TextStyle(fontSize: 16),
                                                    ),
                                                  ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    state.isContainerExpanded
                                        ? Container()
                                        : Padding(
                                            padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context, markerPos);
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor: Theme.of(context).colorScheme.primary,
                                                      shape: const StadiumBorder(),
                                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                                    ),
                                                    child: state.isSearchingAddressPosition ||
                                                            state.isSearchingCurrentPosition
                                                        ? CustomCircularProgress(
                                                            size: 25,
                                                            color: Theme.of(context).colorScheme.onPrimary,
                                                          )
                                                        : Text(
                                                            AppLocalizations.of(context)!.positionUseSelected,
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Theme.of(context).colorScheme.onPrimary),
                                                          ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              );
            },
          ),
        ),
      ),
    );
  }

  void showLocationPermissionDeniedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor: Theme.of(context).extension<CustomColors>()!.background2,
          backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
          title: Text(AppLocalizations.of(context)!.locationPermissionDialogTitle),
          content: Text(AppLocalizations.of(context)!.locationPermissionDialogContentDenied),
          actions: <Widget>[
            PersonalizedLargeGreenButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                text: Text(AppLocalizations.of(context)!.close,
                    style: TextStyle(color: Theme.of(context).colorScheme.onPrimary))),
          ],
        );
      },
    );
  }

  void showLocationPermissionPermanentlyDeniedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor: Theme.of(context).extension<CustomColors>()!.background2,
          backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
          title: Text(AppLocalizations.of(context)!.locationPermissionDialogTitle),
          content: Text(AppLocalizations.of(context)!.locationPermissionDialogContentPermanentlyDenied),
          actions: <Widget>[
            PersonalizedLargeGreenButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                text: Text(AppLocalizations.of(context)!.close,
                    style: TextStyle(color: Theme.of(context).colorScheme.onPrimary))),
          ],
        );
      },
    );
  }

  showConnectionLostAlert(bool isDeviceConnected) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor: Theme.of(context).extension<CustomColors>()!.background2,
          backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
          title: Text(AppLocalizations.of(context)!.noConnectionDialogTitle),
          content: Text(AppLocalizations.of(context)!.noConnectionDialogContent),
          actions: <Widget>[
            PersonalizedLargeGreenButton(
                onPressed: () async {
                  Navigator.pop(context, 'Cancel');
                  setState(() => isAlertSet = false);
                  if (!isDeviceConnected && !isAlertSet) {
                    showConnectionLostAlert(isDeviceConnected);
                    setState(() => isAlertSet = true);
                  }
                },
                text: Text(AppLocalizations.of(context)!.ok,
                    style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)))
          ],
        );
      },
    );
  }

  showPositionServiceNotAvailableAlert(bool isServiceEnabled) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor: Theme.of(context).extension<CustomColors>()!.background2,
          backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
          title: Text(AppLocalizations.of(context)!.positionDialogTitle),
          content: Text(AppLocalizations.of(context)!.positionDialogContent),
          actions: <Widget>[
            PersonalizedLargeGreenButton(
                onPressed: () async {
                  Navigator.pop(context, 'Cancel');
                  setState(() => isAlertSet = false);
                  if (!isServiceEnabled && !isAlertSet) {
                    showPositionServiceNotAvailableAlert(isServiceEnabled);
                    setState(() => isAlertSet = true);
                  }
                },
                text: Text(
                  AppLocalizations.of(context)!.ok,
                  style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                ))
          ],
        );
      },
    );
  }
}
