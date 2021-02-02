import 'package:flutter/material.dart';
import 'package:pharmacy_bioledge/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/Import%20Screen/importmed.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/bioledgemeds.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/inventory.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/stockreport.dart';




class StockL extends StatefulWidget with NavigationStates {
  @override
  _StockLState createState() => _StockLState();
}

class _StockLState extends State<StockL > {


   PersistentTabController _controller;

   @override
   void initState(){
     super.initState();
    _controller = PersistentTabController(initialIndex: 0); 

   }

  List<Widget> _buildScreens(){
    return [
    Inventory(),
    ImportMeds(),
    BioledgeMeds(),
    StockReport(),
  ];
  }

  List<PersistentBottomNavBarItem> _navBarItems(){
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.menu),
        title: 'Inventory',
        
        activeColor: Colors.orange,
        inactiveColor: Colors.grey,
        ),
        PersistentBottomNavBarItem(
        icon: Icon(Icons.cloud_download),
        title: 'Import meds',
        activeColor: Colors.orange,
        inactiveColor: Colors.grey,
        ),
        PersistentBottomNavBarItem(
        icon: Icon(Icons.add),
        title: 'Biolege meds',
        activeColor: Colors.orange,
        inactiveColor: Colors.grey,
        ),
        PersistentBottomNavBarItem(
        icon: Icon(Icons.bug_report),
        title: 'Stock Report',
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