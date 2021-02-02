import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'cartScreenView.dart';
import 'myOrdersScreenView.dart';
import 'newArrivalScrenView.dart';
import '../../app/locator.dart';
import 'shopScreen/shopScreenView.dart';

class BuyScreenView extends StatefulWidget with NavigationStates {
  @override
  _BuyScreenViewState createState() => _BuyScreenViewState();
}

class _BuyScreenViewState extends State<BuyScreenView> {
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      ShopScreenView(),
      MyOrdersScreenView(),
      NewArrivalScrenView(),
      CartScreenView()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.menu),
        title: 'Shop',
        activeColor: Colors.orange,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.cloud_done),
        title: 'My orders',
        activeColor: Colors.orange,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add),
        title: 'New arrival',
        activeColor: Colors.orange,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart),
        title: 'Cart',
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
