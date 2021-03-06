import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:stacked/stacked.dart';
import '../shopScreen/shopScreenView/shopScreenView.dart';
import '../cartScreenView/cartScreenView.dart';
import '../myOrdersScreenView/myOrdersScreenView.dart';
import '../newArrivalScreenView/newArrivalScreenView.dart';
import 'buyScreenViewModel.dart';

class BuyScreenView extends StatefulWidget {
  static const String routeName = "/BuyScreenView";
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
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.cloud_done),
        title: 'My orders',
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add),
        title: 'New arrival',
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart),
        title: 'Cart',
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => BuyScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: PersistentTabView(
            context,
            // iconSize: 35,
            controller: _controller,
            screens: _buildScreens(),
            confineInSafeArea: true,
            // itemCount: 4,
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
      },
    );
  }
}
