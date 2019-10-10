import 'package:flutter/material.dart';

class AddOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(top: 7, left: 10, right: 10),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  border: InputBorder.none,
                  filled: true,
                  hintText: 'اسم الطلب'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  border: InputBorder.none,
                  filled: true,
                  hintText: 'اسم جهة الطلب'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  border: InputBorder.none,
                  filled: true,
                  hintText: 'تحديد مكان التوصيل على الخريطة'),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              maxLines: 8,
              decoration: InputDecoration(
                  fillColor: Colors.grey[300],
                  border: InputBorder.none,
                  filled: true,
                  hintText: 'تفاصيل'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'طلب',
                      textAlign: TextAlign.center,
                    ),
                    textColor: Colors.white,
                    color: Colors.yellow[600],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
