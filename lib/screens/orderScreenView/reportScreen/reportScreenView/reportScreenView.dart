import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'reportScreenViewModel.dart';

class ReportScreenView extends StatelessWidget {
  static const String routeName = '/ReportScreenView';
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReportScreenViewModel>.reactive(
      viewModelBuilder: () => ReportScreenViewModel(),
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
                        'Order Report',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Meds sold',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Icon(Icons.center_focus_strong),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'On shop order report',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Icon(Icons.call_missed_outgoing),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Online order report',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Icon(Icons.crop_square),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Revenue',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Icon(Icons.card_membership),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Bioledge customer added',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
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
