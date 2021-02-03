import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'newArrivalScreenViewModel.dart';

class NewArrivalScrenView extends StatelessWidget {
  static const String routeName = "/NewArrivalScrenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewArrivalScreenViewModel>.reactive(
      viewModelBuilder: () => NewArrivalScreenViewModel(),
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
                        'New Arrival',
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
