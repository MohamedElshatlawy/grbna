import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
       
        Text(
          'ادخل رمز التفعيل ',
          style: TextStyle(color: Colors.grey,fontSize: 20),
        ),
        Text(
          ' الذي تم ارساله الى رقم الهاتف',
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
                  hintText: 'رمز التفعيل',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                  icon:ImageIcon(AssetImage('assets/active_code.png',),size: 30,color: Colors.grey,)
                  
                  ),
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
              'تفعيل',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  
  }
}