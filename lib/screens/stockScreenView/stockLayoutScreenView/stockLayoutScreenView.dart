import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:stacked/stacked.dart';
import '../importScreen/importMedicineScreenView/importMedicineScreenView.dart';
import '../bioledgeMedicineScreenView/bioledgeMedicineScreenView.dart';
import '../inventoryScreenView/inventoryScreenView.dart';
import '../stockReportScreenView/stockReportScreenView.dart';
import 'stockLayoutScreenViewModel.dart';

class StockLayoutScreenView extends StatefulWidget {
  static const String routeName = "/StockLayoutScreenView";
  @override
  _StockLayoutScreenViewState createState() => _StockLayoutScreenViewState();
}

class _StockLayoutScreenViewState extends State<StockLayoutScreenView> {
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      InventoryScreenView(),
      ImportMedicineScreenView(),
      BiolegeMedicineScreenView(),
      StockReportScreenView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.menu),
        title: 'Inventory',
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.cloud_download),
        title: 'Import meds',
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add),
        title: 'Biolege meds',
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.bug_report),
        title: 'Stock Report',
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StockLayoutScreenViewModel>.reactive(
      viewModelBuilder: () => StockLayoutScreenViewModel(),
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
