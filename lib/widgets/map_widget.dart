import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  // Set Location - Terminal Landungsari
  static const LatLng _pGooglePlex =
      LatLng(-7.924215793609619, 112.59892272949219);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: _pGooglePlex,
            zoom: 17,
          ),
          markers: {
            // Marker(
            //   markerId: MarkerId("_currentLocation"),
            //   icon: BitmapDescriptor.defaultMarker,
            //   position: _pGooglePlex,
            // ),
          }),
    );
  }
}
