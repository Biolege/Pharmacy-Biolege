import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'orderConfirmationDetailScreenViewModel.dart';

class ConfirmationDetailsScreenView extends StatelessWidget {
  static const String routeName = '/ConfirmationDetailsScreenView';
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderConfirmationDetailScreenViewModel>.reactive(
      viewModelBuilder: () => OrderConfirmationDetailScreenViewModel(),
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
                        'Online orders',
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
