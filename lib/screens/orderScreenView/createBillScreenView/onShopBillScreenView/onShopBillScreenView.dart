import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:stacked/stacked.dart';
import '../biolegeCardScreenView/biolegeCardScreenView.dart';
import '../customerDetailsScreenView/customerDetailsScreenView.dart';
import '../../../../constants/innershadow.dart';
import 'onShopBillScreenViewModel.dart';

class OnShopBillScreenView extends StatelessWidget {
  static const String routeName = "/OnShopBillScreenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnShopBillScreenViewModel>.reactive(
      viewModelBuilder: () => OnShopBillScreenViewModel(),
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
                      'On shop billing',
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      'Enter customer mobile number',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'mobile number'),
                ),
                SizedBox(
                  height: 447,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.card_membership,
                            size: 25, color: Colors.grey[400]),
                        GestureDetector(
                          child: Text(
                            'Biolege card',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey,
                            ),
                          ),
                          onTap: () {
                            pushNewScreen(
                              context,
                              screen: BiolegeCardScreenView(),
                            );
                          },
                        ),
                      ],
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
                          color: Colors.grey[200],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            pushNewScreen(
                              context,
                              screen: CustomerDetailsScreenView(),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'Next',
                                  style: TextStyle(fontSize: 23),
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
              ],
            ),
          )),
        );
      },
    );
  }
}
