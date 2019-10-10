import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:grbna/appscreens/updates.dart';

import 'addorder.dart';
import 'driver.dart';
import 'orders.dart';

class Shops extends StatefulWidget {
  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  int _selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Image.asset('assets/logo.png'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: CurvedNavigationBar(
          
          backgroundColor: Colors.white,
          height: 60,
          color: Colors.yellow[600],
          items: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    'المتاجر',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.local_shipping,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    'الطلبات',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                Container(
                  child: Center(
                    child: Text(
                      'التحديثات',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.local_car_wash,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    'التوصيل',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.add_circle,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    'طلب',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                )
              ],
            ),
            Image.asset('assets/profile.png')
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              print('index:$_selectedIndex');
            });
          },
        ),
      ),
      body: 
      (_selectedIndex ==0)?Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(5),
                  height: 100,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            'assets/ghaz.png',
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            'توصيل غاز',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            'assets/market.png',
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            'ماركت الخليل',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            'assets/rest1.png',
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            'مطعم حورس',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            'assets/ghaz.png',
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            'توصيل غاز',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            'assets/market.png',
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            'ماركت الخليل',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            'assets/rest1.png',
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            'مطعم حورس',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'ابحث عن متاجر ...',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 30,
                          )),
                    ),
                  ),
                ),
                Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: 45,
                    
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          RaisedButton(
                            elevation: 0,
                            onPressed: () {},
                            color: Colors.yellow[600],
                            textColor: Colors.blueGrey[700],
                            shape: RoundedRectangleBorder(
                            
                                borderRadius: BorderRadius.circular(7)),
                            child: Text(
                              'الكل',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          RaisedButton(
                            elevation: 0,
                              onPressed: () {},
                              color: Colors.yellow[600],
                              textColor: Colors.blueGrey[700],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset('assets/rest.png'),
                                  Text('مطاعم')
                                ],
                              )),
                          SizedBox(
                            width: 8,
                          ),
                          RaisedButton(
                            elevation: 0,
                              onPressed: () {},
                              color: Colors.yellow[600],
                              textColor: Colors.blueGrey[700],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset('assets/markets.png'),
                                  Text('سوبر ماركت')
                                ],
                              )),
                          SizedBox(
                            width: 8,
                          ),
                          RaisedButton(
                            elevation: 0,
                              onPressed: () {},
                              color: Colors.yellow[600],
                              textColor: Colors.blueGrey[700],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset('assets/cafe.png'),
                                  Text('كافيهات')
                                ],
                              )),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  height: 10,
                ),
                Divider(
                  height: 1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: ListView(
                  
                  children: <Widget>[
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 20),
                      leading: Image.asset('assets/rest1.png'),
                      title: Text('شوبك'),
                      subtitle: Text('طريق الملك فهد , جدة'),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.yellow[600],
                          ),
                          Text(
                            '68.0 كم',
                            style: TextStyle(color: Colors.yellow[600]),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 20),
                      leading: Image.asset('assets/rest1.png'),
                      title: Text('شوبك'),
                      subtitle: Text('طريق الملك فهد , جدة'),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.yellow[600],
                          ),
                          Text(
                            '68.0 كم',
                            style: TextStyle(color: Colors.yellow[600]),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 20),
                      leading: Image.asset('assets/rest1.png'),
                      title: Text('شوبك'),
                      subtitle: Text('طريق الملك فهد , جدة'),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.yellow[600],
                          ),
                          Text(
                            '68.0 كم',
                            style: TextStyle(color: Colors.yellow[600]),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 20),
                      leading: Image.asset('assets/rest1.png'),
                      title: Text('شوبك'),
                      subtitle: Text('طريق الملك فهد , جدة'),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.yellow[600],
                          ),
                          Text(
                            '68.0 كم',
                            style: TextStyle(color: Colors.yellow[600]),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 20),
                      leading: Image.asset('assets/rest1.png'),
                      title: Text('شوبك'),
                      subtitle: Text('طريق الملك فهد , جدة'),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.yellow[600],
                          ),
                          Text(
                            '68.0 كم',
                            style: TextStyle(color: Colors.yellow[600]),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    
                    
                    ],
                )),
          ),
        ],
      )
     
      :(_selectedIndex ==1)?Orders()
      :(_selectedIndex ==2)?Updates()
      :(_selectedIndex ==3)?Deliver()
      :(_selectedIndex ==4)? AddOrder()
   
      :Container()
   
    );
  }
}
