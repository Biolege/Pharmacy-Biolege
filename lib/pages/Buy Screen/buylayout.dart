import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:pharmacy_bioledge/pages/Buy%20Screen/cart.dart';
import 'package:pharmacy_bioledge/pages/Buy%20Screen/myorders.dart';
import 'package:pharmacy_bioledge/pages/Buy%20Screen/newarrival.dart';
import 'package:pharmacy_bioledge/pages/Buy%20Screen/Shop/shop.dart';






class BuyL extends StatefulWidget with NavigationStates {
  @override
  _BuyLState createState() => _BuyLState();
}

class _BuyLState extends State<BuyL> {

   PersistentTabController _controller;

   @override
   void initState(){
     super.initState();
    _controller = PersistentTabController(initialIndex: 0); 

   }
  
  List<Widget> _buildScreens(){
    return [
   Shop(),
   MyOrders(),
   NewArrival(),
   Cart() 
  ];
  }
  
  List<PersistentBottomNavBarItem> _navBarItems(){
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
      
      body:PersistentTabView(
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
        onItemSelected: (index){
          setState(() {
            _controller.index = index;
          });
        },      
        ),
    );
  }
}