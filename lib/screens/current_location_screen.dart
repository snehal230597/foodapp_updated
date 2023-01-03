import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../widgets/const.dart';

class CurrentLocationScreen extends StatefulWidget {
  @override
  State<CurrentLocationScreen> createState() => _CurrentLocationScreenState();
}

class _CurrentLocationScreenState extends State<CurrentLocationScreen> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(23.0048156, 72.4992438), zoom: 14.4746);

  List<Marker> _marker = [];
  List<Marker> _list = [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(23.0245701, 72.5047968),
      infoWindow: InfoWindow(title: 'Iscon Cross Road'),
    ),
  ];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission().then((value) {}).onError(
      (error, stackTrace) {
        print('error' + error.toString());
      },
    );
    return await Geolocator.getCurrentPosition();
  }

  loadData() {
    Future<Position> getUserCurrentLocation() async {
      await Geolocator.requestPermission().then((value) {}).onError(
        (error, stackTrace) {
          print('error' + error.toString());
        },
      );
      return await Geolocator.getCurrentPosition();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _kGooglePlex,
            mapType: MapType.normal,
            compassEnabled: true,
            markers: Set<Marker>.of(_marker),
            myLocationButtonEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(50),
                child: SizedBox(
                  height: 47,
                  child: TextField(
                    cursorColor: Colors.black45,
                    decoration: InputDecoration(
                      fillColor: textfieldColor,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.mic, color: Colors.black, size: 25),
                      ),
                      prefixIcon: Icon(
                        Icons.location_pin,
                        size: 25,
                        color: Colors.red,
                      ),
                      hintText: 'Search here...',
                      hintStyle: TextStyle(
                          fontSize: 17,
                          height: 3,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          getUserCurrentLocation().then(
            (value) async {
              _marker.add(
                Marker(
                  markerId: MarkerId('2'),
                  position: LatLng(value.latitude, value.longitude),
                  infoWindow: InfoWindow(
                    title: 'Hashtechy Technologies Pvt Ltd',
                  ),
                ),
              );
              CameraPosition cameraPosition = CameraPosition(
                  target: LatLng(value.latitude, value.longitude), zoom: 18);
              final GoogleMapController controller = await _controller.future;
              controller.animateCamera(
                  CameraUpdate.newCameraPosition(cameraPosition));
              setState(() {});
            },
          );
        },
        child: Container(
          height: 70,
          color: Colors.green,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  const Color(0xffff461e),
                  const Color(0xffff1054),
                ],
              ),
            ),
            child: Center(
              child: Text(
                "current location",
                style: const TextStyle(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
