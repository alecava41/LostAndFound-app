import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/presentation/select_position/bloc/select_position_bloc.dart';

import '../../../injection_container.dart';

class SelectPositionScreen extends StatefulWidget {
  const SelectPositionScreen({super.key});

  @override
  State<SelectPositionScreen> createState() => _SelectPositionScreenState();
}

class _SelectPositionScreenState extends State<SelectPositionScreen> with TickerProviderStateMixin {
  late StreamSubscription subscription;
  bool isAlertSet = false;
  LatLng center = const LatLng(43.102107520506756, 12.349117446797067);

  late final AnimatedMapController mapController =
      AnimatedMapController(vsync: this, duration: const Duration(milliseconds: 3000));

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SelectPositionBloc>(
      create: (_) => sl<SelectPositionBloc>()..add(const SelectPositionEvent.selectPositionCreated()),
      child: BlocBuilder<SelectPositionBloc, SelectPositionState>(
        builder: (ctx, state) {
          return SafeArea(
            top: false,
            minimum: EdgeInsets.zero,
            child: Scaffold(
                appBar: AppBar(
                  iconTheme: const IconThemeData(color: Colors.black),
                  title: const Text(
                    "Select the position",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  backgroundColor: Colors.white,
                ),
                body: Stack(
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
                                interactiveFlags: InteractiveFlag.all & ~InteractiveFlag.rotate,
                                center: center,
                                zoom: 5.5,
                                onMapReady: () { // TODO find right place for this animation
                                  mapController.animatedZoomOut();
                                  mapController.centerOnPoint(LatLng(state.markerPos.latitude, state.markerPos.longitude), zoom: 10);
                                },
                                onPositionChanged: (MapPosition position, bool gesture) {
                                  // Update marker position based on the map center
                                  ctx.read<SelectPositionBloc>().add(SelectPositionEvent.selectedPositionChanged(
                                      LatLng(position.center!.latitude, position.center!.longitude)));},
                              ),
                              children: [
                                TileLayer(
                                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                  userAgentPackageName: 'com.af.lostandfound',
                                ),
                                MarkerLayer(
                                  markers: [
                                    Marker(
                                      width: 200.0,
                                      height: 200.0,
                                      point: state.markerPos,
                                      builder: (ctx) => const Icon(
                                        Icons.location_on,
                                        color: Color.fromRGBO(47, 122, 106, 1),
                                        weight: 10,
                                        size: 80,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                        bottom: 0.0,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 200.0,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextButton(
                                    onPressed: () async {
                                      if (state.hasPermissions && state.isDeviceConnected && state.isServiceAvailable) {
                                        ctx
                                            .read<SelectPositionBloc>()
                                            .add(const SelectPositionEvent.selectCurrentPosition());
                                      } else if (!state.hasPermissions) {
                                        if (!state.isPermissionPermanentlyNegated) {
                                          // ignore: use_build_context_synchronously
                                          showLocationPermissionDeniedDialog(context);
                                        } else {
                                          // ignore: use_build_context_synchronously
                                          showLocationPermissionPermanentlyDeniedDialog(context);
                                        }
                                      } else if (!state.isDeviceConnected || !state.isServiceAvailable) {
                                        showConnectionLostAlert(state.isDeviceConnected);
                                      }
                                    },
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.navigation,
                                          size: 30,
                                        ),
                                        SizedBox(width: 8.0),
                                        Text(
                                          'Use my current location',
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context, state.markerPos);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                shape: const StadiumBorder(),
                                                padding: const EdgeInsets.symmetric(vertical: 18),
                                              ),
                                              child: const Text(
                                                'Choose this position',
                                                style: TextStyle(fontSize: 20),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))
                  ],
                )),
          );
        },
      ),
    );
  }

  void showLocationPermissionDeniedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Location Permissions Denied'),
          content: const Text('Location permissions are required to use your current location.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
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
          title: const Text('Location Permissions Permanently Denied'),
          content: const Text(
              'Location permissions are required to use your current location. Please go to app settings and enable location permissions.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
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
          title: const Text('No Connection'),
          content: const Text('Please check your internet connectivity'),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                Navigator.pop(context, 'Cancel');
                setState(() => isAlertSet = false);
                if (!isDeviceConnected && !isAlertSet) {
                  showConnectionLostAlert(isDeviceConnected);
                  setState(() => isAlertSet = true);
                }
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
