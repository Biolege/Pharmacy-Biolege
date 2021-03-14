import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class OrderPageScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies

  final NavigationService _navigatorService = locator<NavigationService>();
  // _________________________________________________________________________
  TextEditingController searchKey = TextEditingController();

  void searchResults(BuildContext ctx) async {
    await showModalBottomSheet(
        context: ctx,
        builder: (ctx) => BottomSheet(
              onClosing: () {},
              builder: (ctx) => Center(child: Text(searchKey.text)),
            ));
  }

  void pushPaymentModeView() =>
      _navigatorService.navigateTo(Routes.paymentModeView);

  @override
  Future futureToRun() async {
    // TODO: implement futureToRun
    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
