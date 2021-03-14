import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pharmacyapp/app/mediaQ.dart';
import 'package:pharmacyapp/theme/reusables.dart';
import 'package:pharmacyapp/theme/theme.dart';
import 'package:stacked/stacked.dart';
import '../../../../constants/innershadow.dart';
import 'paymentModeViewModel.dart';

class PaymentModeView extends StatelessWidget {
  static const String routeName = "/PaymentModeView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentModeViewModel>.reactive(
      viewModelBuilder: () => PaymentModeViewModel(),
      builder: (context, model, child) {
        return Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: buildOutlineButtonCustomWidget(
                    Container(
                      width: SizeConfig.screenWidth / 1.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Total Amount\n₹460",
                            style: TextStyle(
                                fontSize: 12,
                                color: white,
                                fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              Text(
                                "Continue",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: white,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                MaterialIcons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    () => model.pushConfirmationScreenView(),
                    40),
              ),
            ),
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'On Shop Billing',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Payment',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Text('Payment methods',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w300))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Text('Cash',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Text('UPI',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300)),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ));
      },
    );
  }
}
