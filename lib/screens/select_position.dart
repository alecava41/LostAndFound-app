import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/utils/utility.dart';
import 'package:permission_handler/permission_handler.dart';

class SelectPositionScreen extends StatefulWidget {
  const SelectPositionScreen({super.key});

  @override
  State<SelectPositionScreen> createState() => _SelectPositionScreenState();
}

class _SelectPositionScreenState extends State<SelectPositionScreen>
    with TickerProviderStateMixin {
  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;
  LatLng? markerPosition = const LatLng(43.102107520506756, 12.349117446797067);
  LatLng center = const LatLng(43.102107520506756, 12.349117446797067);

  late final AnimatedMapController mapController = AnimatedMapController(
      vsync: this, duration: const Duration(milliseconds: 3000));

  @override
  void initState() {
    // getConnectivity();
    super.initState();
  }

  // getConnectivity() =>
  //     subscription = Connectivity().onConnectivityChanged.listen(
  //       (ConnectivityResult result) async {
  //         isDeviceConnected = await InternetConnectionChecker().hasConnection;
  //         if (!isDeviceConnected && isAlertSet == false) {
  //           showConnectionLostAllert();
  //           setState(() => isAlertSet = true);
  //         }
  //       },
  //     );

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  Future<PermissionStatus> requestLocationPermission() async {
    PermissionStatus status = await Permission.location.request();

    return status;
  }

  @override
  Widget build(BuildContext context) {
    var chooseCurrentPositionButton = TextButton(
      onPressed: () async {
        var isConnected = true; // TODO: change with real check
        var permission = await requestLocationPermission();
        if (permission.isGranted && isConnected) {
          mapController.animatedZoomOut();
          var newMarkerPosition = await Utility.getUserLocation();

          setState(() {
            markerPosition =
                LatLng(newMarkerPosition.latitude, newMarkerPosition.longitude);
          });
          mapController.centerOnPoint(
              LatLng(newMarkerPosition.latitude, newMarkerPosition.longitude),
              zoom: 10);
        }
        if (permission.isDenied) {
          // ignore: use_build_context_synchronously
          showLocationPermissionDeniedDialog(context);
        }
        if (permission.isPermanentlyDenied) {
          // ignore: use_build_context_synchronously
          showLocationPermissionPermanentlyDeniedDialog(context);
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
    );

    var chooseThisPositionButton = Padding(
      padding: const EdgeInsets.all(18),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, markerPosition);
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
    );

    var buttonsBox = Row(
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
              chooseCurrentPositionButton,
              chooseThisPositionButton,
            ],
          ),
        ),
      ],
    );

    var flutterMap = FlutterMap(
      mapController: mapController.mapController,
      options: MapOptions(
        interactiveFlags: InteractiveFlag.all & ~InteractiveFlag.rotate,
        center: center,
        zoom: 5.5,
        onPositionChanged: (MapPosition position, bool gesture) {
          // Update marker position based on the map center
          setState(() {
            markerPosition =
                LatLng(position.center!.latitude, position.center!.longitude);
          });
        },
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: [
            Marker(
              width: 200.0,
              height: 200.0,
              point: markerPosition!,
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
    );

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
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 150),
                      child: flutterMap,
                    ),
                  ),
                ],
              ),
              Positioned(bottom: 0.0, child: buttonsBox)
            ],
          )),
    );
  }

  void showLocationPermissionDeniedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Location Permissions Denied'),
          content: const Text(
              'Location permissions are required to use your current location.'),
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

  showConnectionLostAllert() {
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
                isDeviceConnected = true; // TODO: modify
                if (!isDeviceConnected && !isAlertSet) {
                  showConnectionLostAllert();
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
