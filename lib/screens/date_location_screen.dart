import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DateLocation extends StatefulWidget {
  const DateLocation({Key? key}) : super(key: key);

  @override
  State<DateLocation> createState() => _DateLocationState();
}

class _DateLocationState extends State<DateLocation> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(31.5204, 74.3587);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Date and Location',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 12.0,
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
