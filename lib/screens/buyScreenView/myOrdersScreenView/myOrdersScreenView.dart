import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'myOrdersScreenViewModel.dart';

class MyOrdersScreenView extends StatelessWidget {
  static const String routeName = "/MyOrdersScreenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyOrdersScreenViewModel>.reactive(
      viewModelBuilder: () => MyOrdersScreenViewModel(),
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
                        'Buy',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Text(
                        'My orders',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
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
