import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'notificationScreenViewModel.dart';

class NotificationScreenView extends StatelessWidget {
  static const String routeName = "/NotificationScreenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationScreenViewModel>.reactive(
      viewModelBuilder: () => NotificationScreenViewModel(),
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
                        'Notification',
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
                        'You have got a message',
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
