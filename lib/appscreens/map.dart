import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'driver_details.dart';

class DeliverMap extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<DeliverMap> {
  GoogleMapController mapController;


  final LatLng _center = const LatLng(45.521563, -122.677433);
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      child: Stack(
        fit: StackFit.expand,
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Container(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
              markers: _createMarker(),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding: EdgeInsets.only(top: 70),
                color: Colors.yellow[600],
                height: MediaQuery.of(context).size.height / 4 + 45,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            'شارع حراء النزهة 196 جدة',
                            style: TextStyle(
                                fontSize: 10,
                                decoration: TextDecoration.none,
                                color: Colors.black54),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            'شارع حراء النزهة 196 جدة',
                            style: TextStyle(
                                fontSize: 10,
                                decoration: TextDecoration.none,
                                color: Colors.black54),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 7, right: 7),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            '27 كم',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Text(
                          ' ............ ',
                          style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.grey),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 7, right: 7),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            '27 كم',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      margin: EdgeInsets.only(left: 30, right: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Expanded(
                              flex: 4,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    icon: Icon(
                                      Icons.camera_roll,
                                    ),
                                  ),
                                ),
                              )),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'ارسال',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 4.5,
                ),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(
                          'assets/estlam2.png',
                          width: 90,
                          height: 90,
                        ),
                        Text(
                          'موقع الأستلام',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
                         (context) => DeliverDetails()));

                    },
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(
                          'assets/tasleem2.png',
                          width: 90,
                          height: 90,
                        ),
                        Text(
                          'موقع التسليم',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    ));
  }

  Set<Marker> _createMarker() {
    // TODO(iskakaushik): Remove this when collection literals makes it to stable.
    // https://github.com/flutter/flutter/issues/28312
    // ignore: prefer_collection_literals
    return <Marker>[
      Marker(
          markerId: MarkerId("marker_1"),
          position: _center,
          icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueOrange)),
    ].toSet();
  }
}
