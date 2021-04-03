import 'package:flutter/material.dart';
import 'package:pharmacyapp/app/mediaQ.dart';
import 'package:stacked/stacked.dart';
import '../../../screens/homePageScreenView/homePageScreenView.dart';
import 'sideBarLayoutScreenViewModel.dart';

class SideBarLayoutView extends StatefulWidget {
  static const String routeName = "/SideBarLayoutView";

  @override
  _SideBarLayoutViewState createState() => _SideBarLayoutViewState();
}

class _SideBarLayoutViewState extends State<SideBarLayoutView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ViewModelBuilder<SideBarLayoutScreenViewModel>.reactive(
      viewModelBuilder: () => SideBarLayoutScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
              onPressed: () => model.showMenu(context),
              label: Text("      Menu     ")),
          body: HomePageScreenView(),
        );
      },
    );
  }
}
