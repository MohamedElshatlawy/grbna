import 'package:flutter/material.dart';
import 'package:grbna/appscreens/shops.dart';

class ThirdPage extends StatefulWidget{
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
       
        Text(
          '! تبقى خطوة واحدة',
          style: TextStyle(color: Colors.grey,fontSize: 20),
        ),
        Text(
          ' ادخل اسمك الثلاثي',
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
                  hintText: 'الأسم ثلاثي',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                  icon:Icon(Icons.person,color: Colors.grey,)
                  
                  ),
            ),
          ),
        ),
        Container(
          width: 130,
          child: RaisedButton(
            onPressed: () {
               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Shops()));
            },
            color: Colors.yellow[600],
            textColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Text(
              'دخول',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  
 
  }
}