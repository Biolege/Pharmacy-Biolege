import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'createBillScreenViewModel.dart';

class CreateBillScreenView extends StatelessWidget {
  static const String routeName = "/CreateBillScreenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateBillScreenViewModel>.reactive(
      viewModelBuilder: () => CreateBillScreenViewModel(),
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
                    'Orders',
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
                    'Create billing',
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
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Text(
                        'Create on shop order',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.w300),
                      ),
                      onTap: () => model.pushOnShopBillScreenView(),
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
                    Icon(Icons.local_airport),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => model.pushOnShopBillScreenView(),
                      child: Text(
                        'Create online order',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
      },
    );
  }
}
