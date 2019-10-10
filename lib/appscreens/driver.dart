import 'package:flutter/material.dart';

import 'map.dart';

class Deliver extends StatefulWidget {
  @override
  _DeliverState createState() => _DeliverState();
}

class _DeliverState extends State<Deliver> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
     
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.fromLTRB(7, 10, 7, 0),
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DeliverMap()));
                      },
                      contentPadding: EdgeInsets.only(left: 15),
                      leading: Image.asset('assets/rest1.png'),
                      title: Text('مطعم خيال'),
                      subtitle: Text('2 سكندر لحم ..'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                size: 30,
                              ),
                              Text(
                                '2 دقيقة واحدة',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.local_offer,
                                textDirection: TextDirection.rtl,
                                size: 30,
                              ),
                              Text(
                                '15 ريال',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child:    Container(
                    padding: EdgeInsets.only(left: 3, right: 3,top: 5,bottom: 5),
                    margin: EdgeInsets.fromLTRB(8, 0, 8, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.my_location,
                              size: 18,
                              color: Colors.orange[300],
                            ),
                            Text(
                              'انت',
                              style: TextStyle(color: Colors.orange[300],fontSize: 12),
                            )
                          ],
                        ),
                        Text('... '),
                        Container(
                          padding: EdgeInsets.only(left: 7, right: 7),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            '27 كم',
                            style: TextStyle(color: Colors.white,fontSize: 12),
                          ),
                        ),
                        Text(' ... >'),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.business_center,
                              size: 18,
                              color: Colors.orange[300],
                            ),
                            Text(
                              'موقع الأستلام',
                              style: TextStyle(color: Colors.orange[300],fontSize: 12),
                            )
                          ],
                        ),
                        Text('... '),
                        Container(
                          padding: EdgeInsets.only(left: 7, right: 7),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            '27 كم',
                            style: TextStyle(color: Colors.white,fontSize: 12),
                          ),
                        ),
                        Text(' ... >'),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.flag,
                              size: 18,
                              color: Colors.orange[300],
                            ),
                            Text(
                              'موقع التسليم',
                              style: TextStyle(color: Colors.orange[300],fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
               
                  
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.fromLTRB(7, 10, 7, 0),
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 15),
                      leading: Image.asset('assets/rest1.png'),
                      title: Text('مطعم خيال'),
                      subtitle: Text('2 سكندر لحم ..'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                size: 30,
                              ),
                              Text(
                                '2 دقيقة واحدة',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.local_offer,
                                textDirection: TextDirection.rtl,
                                size: 30,
                              ),
                              Text(
                                '15 ريال',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child:    Container(
                    padding: EdgeInsets.only(left: 3, right: 3,top: 5,bottom: 5),
                    margin: EdgeInsets.fromLTRB(8, 0, 8, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.my_location,
                              size: 18,
                              color: Colors.orange[300],
                            ),
                            Text(
                              'انت',
                              style: TextStyle(color: Colors.orange[300],fontSize: 12),
                            )
                          ],
                        ),
                        Text('... '),
                        Container(
                          padding: EdgeInsets.only(left: 7, right: 7),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            '27 كم',
                            style: TextStyle(color: Colors.white,fontSize: 12),
                          ),
                        ),
                        Text(' ... >'),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.business_center,
                              size: 18,
                              color: Colors.orange[300],
                            ),
                            Text(
                              'موقع الأستلام',
                              style: TextStyle(color: Colors.orange[300],fontSize: 12),
                            )
                          ],
                        ),
                        Text('... '),
                        Container(
                          padding: EdgeInsets.only(left: 7, right: 7),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            '27 كم',
                            style: TextStyle(color: Colors.white,fontSize: 12),
                          ),
                        ),
                        Text(' ... >'),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.flag,
                              size: 18,
                              color: Colors.orange[300],
                            ),
                            Text(
                              'موقع التسليم',
                              style: TextStyle(color: Colors.orange[300],fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
               
                
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.fromLTRB(7, 10, 7, 0),
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 15),
                      leading: Image.asset('assets/rest1.png'),
                      title: Text('مطعم خيال'),
                      subtitle: Text('2 سكندر لحم ..'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                size: 30,
                              ),
                              Text(
                                '2 دقيقة واحدة',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.local_offer,
                                textDirection: TextDirection.rtl,
                                size: 30,
                              ),
                              Text(
                                '15 ريال',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child:    Container(
                    padding: EdgeInsets.only(left: 3, right: 3,top: 5,bottom: 5),
                    margin: EdgeInsets.fromLTRB(8, 0, 8, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.my_location,
                              size: 18,
                              color: Colors.orange[300],
                            ),
                            Text(
                              'انت',
                              style: TextStyle(color: Colors.orange[300],fontSize: 12),
                            )
                          ],
                        ),
                        Text('... '),
                        Container(
                          padding: EdgeInsets.only(left: 7, right: 7),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            '27 كم',
                            style: TextStyle(color: Colors.white,fontSize: 12),
                          ),
                        ),
                        Text(' ... >'),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.business_center,
                              size: 18,
                              color: Colors.orange[300],
                            ),
                            Text(
                              'موقع الأستلام',
                              style: TextStyle(color: Colors.orange[300],fontSize: 12),
                            )
                          ],
                        ),
                        Text('... '),
                        Container(
                          padding: EdgeInsets.only(left: 7, right: 7),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            '27 كم',
                            style: TextStyle(color: Colors.white,fontSize: 12),
                          ),
                        ),
                        Text(' ... >'),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.flag,
                              size: 18,
                              color: Colors.orange[300],
                            ),
                            Text(
                              'موقع التسليم',
                              style: TextStyle(color: Colors.orange[300],fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
               
                  
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.fromLTRB(7, 10, 7, 0),
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 15),
                      leading: Image.asset('assets/rest1.png'),
                      title: Text('مطعم خيال'),
                      subtitle: Text('2 سكندر لحم ..'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                size: 30,
                              ),
                              Text(
                                '2 دقيقة واحدة',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.local_offer,
                                textDirection: TextDirection.rtl,
                                size: 30,
                              ),
                              Text(
                                '15 ريال',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child:   Container(
                    padding: EdgeInsets.only(left: 3, right: 3,top: 5,bottom: 5),
                    margin: EdgeInsets.fromLTRB(8, 0, 8, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.my_location,
                              size: 18,
                              color: Colors.orange[300],
                            ),
                            Text(
                              'انت',
                              style: TextStyle(color: Colors.orange[300],fontSize: 12),
                            )
                          ],
                        ),
                        Text('... '),
                        Container(
                          padding: EdgeInsets.only(left: 7, right: 7),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            '27 كم',
                            style: TextStyle(color: Colors.white,fontSize: 12),
                          ),
                        ),
                        Text(' ... >'),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.business_center,
                              size: 18,
                              color: Colors.orange[300],
                            ),
                            Text(
                              'موقع الأستلام',
                              style: TextStyle(color: Colors.orange[300],fontSize: 12),
                            )
                          ],
                        ),
                        Text('... '),
                        Container(
                          padding: EdgeInsets.only(left: 7, right: 7),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            '27 كم',
                            style: TextStyle(color: Colors.white,fontSize: 12),
                          ),
                        ),
                        Text(' ... >'),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.flag,
                              size: 18,
                              color: Colors.orange[300],
                            ),
                            Text(
                              'موقع التسليم',
                              style: TextStyle(color: Colors.orange[300],fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
               
            
            
                   )
              
              
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
