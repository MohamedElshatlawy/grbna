import 'package:flutter/material.dart';

class Updates extends StatefulWidget {
  @override
  _UpdatesState createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            padding: EdgeInsets.only(top: 5),
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.only(left: 10),
                leading: Image.asset('assets/ghaz.png'),
                title: Text(
                  'تفاصيل الطلب 4546856 : تم خصم 5.5 ر.س رسوم توصيل 17.0 ورصيدك الجديد هو 455 ر.س',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ),
              Divider(),
            
              ListTile(
                contentPadding: EdgeInsets.only(left: 10),
                leading: Image.asset('assets/ghaz.png'),
                title: Text(
                  'تفاصيل الطلب 4546856 : تم خصم 5.5 ر.س رسوم توصيل 17.0 ورصيدك الجديد هو 455 ر.س',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ),
              Divider(),
              ListTile(
                contentPadding: EdgeInsets.only(left: 10),
                leading: Image.asset('assets/ghaz.png'),
                title: Text(
                  'تفاصيل الطلب 4546856 : تم خصم 5.5 ر.س رسوم توصيل 17.0 ورصيدك الجديد هو 455 ر.س',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ),
              Divider(),
              ListTile(
                contentPadding: EdgeInsets.only(left: 10),
                leading: Image.asset('assets/ghaz.png'),
                title: Text(
                  'تفاصيل الطلب 4546856 : تم خصم 5.5 ر.س رسوم توصيل 17.0 ورصيدك الجديد هو 455 ر.س',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ),
              Divider(),
              ListTile(
                contentPadding: EdgeInsets.only(left: 10),
                leading: Image.asset('assets/ghaz.png'),
                title: Text(
                  'تفاصيل الطلب 4546856 : تم خصم 5.5 ر.س رسوم توصيل 17.0 ورصيدك الجديد هو 455 ر.س',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ),
              Divider(),
              ListTile(
                contentPadding: EdgeInsets.only(left: 10),
                leading: Image.asset('assets/ghaz.png'),
                title: Text(
                  'تفاصيل الطلب 4546856 : تم خصم 5.5 ر.س رسوم توصيل 17.0 ورصيدك الجديد هو 455 ر.س',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ),
              Divider(),
            
               ],
          ),
        ));
  }
}
