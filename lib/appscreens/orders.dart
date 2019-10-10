import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with SingleTickerProviderStateMixin {
  String dropdownValue = 'طلبات منتهية';
  var _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    final List<Tab> myTabs = <Tab>[
      Tab(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/myorders.png',
              height: 50,
              width: 50,
            ),
            Text('طلباتي')
          ],
        ),
      ),
      Tab(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/deliver.png',
              height: 50,
              width: 50,
              color: Colors.grey,
            ),
            Text('توصيل')
          ],
        ),
      ),
    ];
    // TODO: implement build
    return Container(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {},
                    child: DropdownButton<String>(
                      iconEnabledColor: Colors.grey,
                      value: 'طلبات منتهية',
                      isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>['طلبات منتهية', 'طلبات غير منتيهة']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.grey),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
                child: Column(
              children: <Widget>[
                Container(
                  color: Colors.yellow[600],
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: TabBar(
                          indicatorColor: Colors.transparent,
                          labelColor: Colors.blueGrey,
                          unselectedLabelColor: Colors.white,
                          controller: _tabController,
                          tabs: myTabs,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      MyOrders(),
                      Container()
                    ]
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class MyOrders extends StatefulWidget{
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/no orders.png'),
          SizedBox(height: 10,),
          Text('لا يوجد طلبات غير نشطة',style: TextStyle(color: Colors.grey,fontSize: 20),)
        ],
      
    );
  }
}