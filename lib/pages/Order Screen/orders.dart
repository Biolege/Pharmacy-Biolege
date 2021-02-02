import 'package:flutter/material.dart';
import 'package:pharmacy_bioledge/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/CreateBill/createbill.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/OnlineOrder/onlineorder.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/OrderProgress/orderprogress.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/report/report.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';



class Orders extends StatefulWidget with NavigationStates {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

   PersistentTabController _controller;

   @override
   void initState(){
     super.initState();
    _controller = PersistentTabController(initialIndex: 0); 

   }

  
  List<Widget> _buildScreens(){
    return [
    CreateBill(),
    OnlineOrder(),
    OrderProgress(),
    Report(),
  ];
  }

  List<PersistentBottomNavBarItem> _navBarItems(){
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