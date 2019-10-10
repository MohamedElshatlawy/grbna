import 'package:flutter/material.dart';
import 'package:grbna/mainPager/second_page.dart';
import 'package:grbna/mainPager/third_page.dart';
import 'package:page_indicator/page_indicator.dart';

import 'first_page.dart';

class MainPage extends StatefulWidget {
  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<MainPage> {
  static PageController controller =
      new PageController(initialPage: 2, keepPage: false);
  static List<Widget> pages = [
    ThirdPage(),
    SecondPage(),
    FirstPage(),
  ];
  static int page = 1;
  PageView pageView = new PageView(
    onPageChanged: (pageNumber) {
      page = pageNumber;
      print('PageNumber:' + pageNumber.toString());
    },
    scrollDirection: Axis.horizontal,
    controller: controller,
    children: pages,
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height / 2.5,
                child: ClipPath(
                  clipper: getClipper(),
                  child: Container(
                    color: Colors.yellow,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset(
                          'assets/BG.png',
                          fit: BoxFit.cover,
                        ),
                        Center(
                          child: Image.asset('assets/logo.png'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                  padding: EdgeInsets.only(top: 80),
                  child: PageIndicatorContainer(
                    pageView: pageView,
                    align: IndicatorAlign.bottom,
                    length: 3,
                    indicatorSpace: 10.0,

                    padding: EdgeInsets.fromLTRB(10, 0, 10, 100),
                    indicatorColor: Colors.grey,
                    indicatorSelectorColor: Colors.yellow[600],
                    shape: IndicatorShape.circle(size: 12),
                    // shape: IndicatorShape.roundRectangleShape(size: Size.square(12),cornerSize: Size.square(3)),
                    // shape: IndicatorShape.oval(size: Size(12, 8)),
                  )),
            )
          ],
        )));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 50);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
