import 'dart:async';

import 'package:flutter/material.dart';

import 'mainPager/mainPager.dart';


class Splash extends StatefulWidget{
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
void initState() {
  super.initState();

  loadData();
}

Future<Timer> loadData() async {
  return new Timer(Duration(seconds: 3), onDoneLoading);
}

onDoneLoading() async {
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainPage()));
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          Image.asset('assets/BG.png',fit: BoxFit.cover,),
          Center(
            child: Image.asset('assets/logo.png'),
          )
        ],
      ),

      
    );
  }
}