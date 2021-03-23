import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pharmacyapp/theme/theme.dart';
import '../../../../app/mediaQ.dart';
import '../../../../theme/reusables.dart';
import 'package:stacked/stacked.dart';
import 'orderPageScreenViewModel.dart';

class OrderPageScreenView extends StatelessWidget {
  static const String routeName = "/OrderPageScreenView";
  Widget _singlemeddetails() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      color: white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Medicine name',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  )),
              Text('Brand name',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.grey)),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Icon(Icons.remove_circle),
              ),
              Text('2'),
              GestureDetector(
                child: Icon(Icons.add_circle),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Strip',
                style: TextStyle(color: Colors.grey[400], fontSize: 12),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '₹ 460',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderPageScreenViewModel>.reactive(
      viewModelBuilder: () => OrderPageScreenViewModel(),
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
                  () => model.pushPaymentModeView(),
                  40),
            ),
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                margin: EdgeInsets.all(20),
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
                          'Billing',
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          width: SizeConfig.screenWidth / 1.8,
                          // height: 80,
                          child: TextFormField(
                            controller: model.searchKey,
                            // onChanged: (x) => model.searchResults(x, context),
                            decoration: InputDecoration(
                                hoverColor: Colors.grey,
                                suffixIcon: IconButton(
                                  onPressed: () => model.searchResults(context),
                                  icon: Icon(
                                    Icons.search,
                                    size: 20,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Search Medicines'),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.center_focus_strong,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.shopping_cart),
                                          Text('Cart')
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(child: Text('07 items')),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            _singlemeddetails(),
                            _singlemeddetails(),
                            _singlemeddetails(),
                            _singlemeddetails(),
                            _singlemeddetails(),
                            _singlemeddetails(),
                            _singlemeddetails(),
                            _singlemeddetails(),
                            _singlemeddetails(),
                            _singlemeddetails(),
                            _singlemeddetails(),
                            _singlemeddetails(),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[100],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
