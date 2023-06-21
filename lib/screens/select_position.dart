import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/utils/utility.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

class SelectPositionScreen extends StatefulWidget {
  const SelectPositionScreen({super.key});

  @override
  State<SelectPositionScreen> createState() => _SelectPositionScreenState();
}

class _SelectPositionScreenState extends State<SelectPositionScreen> with TickerProviderStateMixin{
  LatLng? markerPosition = LatLng(51.509364, -0.128928);
  LatLng center = LatLng(51.509364, -0.128928);
  
  late final AnimatedMapController mapController = AnimatedMapController(vsync: this, duration: const Duration(milliseconds: 3000));

  Future<void> requestLocationPermission() async {
    PermissionStatus status = await Permission.location.request();
    if (status.isGranted) {
      // Location permission granted, you can now access the device's location.
    } else if (status.isDenied) {
      // Location permission denied, show a dialog or message explaining why the permission is needed.
    } else if (status.isPermanentlyDenied) {
      // Location permission denied permanently, open app settings so the user can grant the permission manually.
      openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      minimum: EdgeInsets.zero,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Select the position"),
          ),
          body: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 150),
                      child: FlutterMap(
                        mapController: mapController.mapController,
                        options: MapOptions(
                          interactiveFlags:
                              InteractiveFlag.all & ~InteractiveFlag.rotate,
                          center: center,
                          zoom: 9.2,
                          onPositionChanged:
                              (MapPosition position, bool gesture) {
                            // Update marker position based on the map center
                            setState(() {
                              markerPosition = LatLng(position.center!.latitude,
                                  position.center!.longitude);
                            });
                          },
                        ),
                        children: [
                          TileLayer(
                            urlTemplate:
                                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
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
                        children: [
                          TextButton(
                            onPressed: () async {
                              await requestLocationPermission();
                              mapController.animatedZoomOut();
                              var newMarkerPosition = await Utility.getUserLocation();
                              
                              setState(() {
                                markerPosition = LatLng(newMarkerPosition.latitude, newMarkerPosition.longitude);
                              });
                              mapController.centerOnPoint(LatLng(newMarkerPosition.latitude, newMarkerPosition.longitude), zoom: 10);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.navigation),
                                SizedBox(width: 8.0),
                                Text(
                                  'Use my current location',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Add button functionality here
                            },
                            child: Text('Choose this position'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
