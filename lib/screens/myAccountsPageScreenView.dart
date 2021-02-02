import 'package:flutter/material.dart';
import 'package:pharmacy_bioledge/app/locator.dart';

class MyAccountsPageScreenView extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My Accounts",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}
