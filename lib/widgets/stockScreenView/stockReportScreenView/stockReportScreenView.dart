import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'stockReportScreenViewModel.dart';

class StockReportScreenView extends StatelessWidget {
  static const String routeName = "/StockReportScreenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StockReportScreenViewModel>.reactive(
      viewModelBuilder: () => StockReportScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(19),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Stock report',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
