import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmacyapp/theme/reusables.dart';
import 'package:stacked/stacked.dart';
import 'onShopBillScreenViewModel.dart';

class OnShopBillScreenView extends StatefulWidget {
  static const String routeName = "/OnShopBillScreenView";

  @override
  _OnShopBillScreenViewState createState() => _OnShopBillScreenViewState();
}

class _OnShopBillScreenViewState extends State<OnShopBillScreenView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnShopBillScreenViewModel>.reactive(
      viewModelBuilder: () => OnShopBillScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              model.isValidPhoneNumber
                  ? buildOutlineButton(
                      "Continue", () => model.saveCustomerNumberAndNavigate())
                  : buildOutlineButton("Continue", null)
            ],
          ),
          body: SafeArea(
              child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
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
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Text(
                      'Customer Number',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autofocus: true,
                  maxLength: 10,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.phone,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  validator: (x) => model.validatePhoneNumber(x),
                  controller: model.phoneNumber,
                  onChanged: (x) => model.enableContinue(x),
                  decoration:
                      InputDecoration(hintText: 'Enter customer mobile number'),
                ),
                Spacer(),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          )),
        );
      },
    );
  }
}
