import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
       
        Text(
          'ادخل رقم الهاتف للمتابعة',
          style: TextStyle(color: Colors.grey,fontSize: 20),
        ),
        SizedBox(height: 10,),
        Container(
          height: 50,
          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
          margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'رقم الهاتف',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                  icon: Icon(
                    Icons.phone_android,
                    color: Colors.grey,
                    size: 30,
                  )),
            ),
          ),
        ),
        Container(
          width: 130,
          child: RaisedButton(
            onPressed: () {},
            color: Colors.yellow[600],
            textColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Text(
              'متابعة',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  
  
  }
}
