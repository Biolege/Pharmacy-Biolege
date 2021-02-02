import 'package:flutter/material.dart';
import '../orderScreen/reportScreen/report.dart';
import '../../app/router.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'createBillScreen/createBillScreenView.dart';
import 'onlineOrderScreen/onlineOrder.dart';
import 'orderProgressScreen/orderprogress.dart';

class OrdersScreenView extends StatefulWidget with NavigationStates {
  @override
  _OrdersScreenViewState createState() => _OrdersScreenViewState();
}

class _OrdersScreenViewState extends State<OrdersScreenView> {
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      CreateBillScreenView(),
      OnlineOrderScreenView(),
      OrderProgressScreenView(),
      ReportScreenView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.blur_circular),
        title: 'Create billing',
        activeColor: Colors.orange,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.cloud_circle),
        title: 'Online Orders',
        activeColor: Colors.orange,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add),
        title: 'Order progress',
        activeColor: Colors.orange,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.router),
        title: 'Report',
        activeColor: Colors.orange,
        inactiveColor: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        iconSize: 35,
        controller: _controller,
        screens: _buildScreens(),
        confineInSafeArea: true,
        itemCount: 4,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        stateManagement: true,
        popAllScreensOnTapOfSelectedTab: true,
        items: _navBarItems(),
        onItemSelected: (index) {
          setState(() {
            _controller.index = index;
          });
        },
      ),
    );
  }
}
