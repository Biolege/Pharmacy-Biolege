import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../screens/homePageScreenView/homePageScreenView.dart';
import '../../../widgets/sidebar/sideBarScreenView/sidebarScreenView.dart';
import 'sideBarLayoutScreenViewModel.dart';

class SideBarLayoutView extends StatelessWidget {
  static const String routeName = "/SideBarLayoutView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SideBarLayoutScreenViewModel>.reactive(
      viewModelBuilder: () => SideBarLayoutScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: Stack(
            children: <Widget>[
              HomePageScreenView(),
              SideBarView(),
            ],
          ),
        );
      },
    );
  }
}
