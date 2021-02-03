import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'confirmationScreenViewModel.dart';

class ConfirmationScreenView extends StatelessWidget {
  static const String routeName = "/ConfirmationScreenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConfirmationScreenViewModel>.reactive(
      viewModelBuilder: () => ConfirmationScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Orders',
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Text(
                    'Confirmation page with \n detailes of that day sales',
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
