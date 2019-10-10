import 'package:flutter/material.dart';

class DeliverDetails extends StatefulWidget {
  @override
  _DeliverDetailsState createState() => _DeliverDetailsState();
}

class _DeliverDetailsState extends State<DeliverDetails> {
  int radioVal = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Image.asset('assets/logo.png'),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.fromLTRB(7, 10, 7, 5),
              height: 415,
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
                      ],
                    ),
                  ),
                  Container(
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
                  Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('التفاصيل :',
                              style: TextStyle(color: Colors.grey)),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Radio(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                groupValue: radioVal,
                                value: 1,
                                onChanged: (val) {
                                  setState(() {
                                    radioVal = val;
                                  });
                                },
                                activeColor: Colors.orange[300],
                              ),
                              Text(
                                '2 قطع لحم',
                                style: TextStyle(color: Colors.grey[700]),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Radio(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                groupValue: radioVal,
                                value: 2,
                                onChanged: (val) {
                                  setState(() {
                                    radioVal = val;
                                  });
                                },
                                activeColor: Colors.orange[300],
                              ),
                              Text(
                                'سلطة خضراء',
                                style: TextStyle(color: Colors.grey[700]),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Radio(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                groupValue: radioVal,
                                value: 3,
                                onChanged: (val) {
                                  setState(() {
                                    radioVal = val;
                                  });
                                },
                                activeColor: Colors.orange[300],
                              ),
                              Text(
                                'أرز',
                                style: TextStyle(color: Colors.grey[700]),
                              )
                            ],
                          )
                        ],
                      )),
                  Divider(
                    endIndent: 15,
                    indent: 15,
                    color: Colors.grey,
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('التكلفة :',
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'سعر الوجبة',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  '52 ريال',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'تكلفة التوصيل',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  '52 ريال',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: MySeparator(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'الأجمالي',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  '104 ريال',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 7, right: 7),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.yellow[600],
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text('موافق'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({this.height = 1, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 5.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
