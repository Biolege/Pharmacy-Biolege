import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'myAccountsPageScreenViewModel.dart';

class MyAccountsPageScreenView extends StatelessWidget {
  static const String routeName = "/MyAccountsPageScreenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyAccountsPageScreenViewModel>.reactive(
      viewModelBuilder: () => MyAccountsPageScreenViewModel(),
      builder: (context, model, child) {
        return Center(
          child: Text(
            "My Accounts",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
          ),
        );
      },
    );
  }
}
