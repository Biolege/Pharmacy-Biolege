import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../constants/innershadow.dart';
import 'paymenModeScreenViewModel.dart';

class PaymentModeScreenView extends StatelessWidget {
  static const String routeName = "/PaymentModeScreenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymenModeScreenViewModel>.reactive(
      viewModelBuilder: () => PaymenModeScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
            body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 15, left: 38, right: 20),
            child: Column(children: [
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
                height: 20,
              ),
              Row(
                children: [
                  Text('Payment method',
                      style: TextStyle(
                          fontSize: 29,
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
                              fontSize: 25,
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
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w300)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 400,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.orange),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Total ₹ 460',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  InnerShadow(
                    blur: 5,
                    color: Colors.black38,
                    offset: const Offset(5, 5),
                    child: Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.grey[200]),
                      child: GestureDetector(
                        onTap: () => model.pushOrderConfirmationView(),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Row(
                            children: [
                              Text(
                                'Done',
                                style: TextStyle(fontSize: 20),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ));
      },
    );
  }
}
