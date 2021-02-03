import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'cartScreenViewModel.dart';

class CartScreenView extends StatelessWidget {
  static const String routeName = "/CartScreenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CartScreenViewModel>.reactive(
      viewModelBuilder: () => CartScreenViewModel(),
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
                        'My Cart',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
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
