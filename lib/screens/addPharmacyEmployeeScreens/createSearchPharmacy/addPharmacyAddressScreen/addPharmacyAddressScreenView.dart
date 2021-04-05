import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:stacked/stacked.dart';
import '../../../../main.dart';
import '../../../../widgets/reusables.dart';
import '../../../../app/mediaQ.dart';
import '../../../../theme/theme.dart';
import '../../../../widgets/animations.dart';
import 'addPharmacyAddressScreenViewModel.dart';

class AddPharmacyAddressScreenView extends StatelessWidget {
  static const routeName = "/addPharmacyAddressScreenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddPharmacyAddressViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: buildAppBar(context),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FadeInLTR(
                        0.3,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              mainLogo,
                              height: getProportionateScreenHeight(25),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  FadeInLTR(
                    0.6,
                    Text(
                      "Pharmacy address",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Form(
                      key: model.pharmacyDesciptionFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeInLTR(
                            0.9,
                            Text(
                              "State",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(5),
                          ),
                          FadeInLTR(
                            0.9,
                            TextFormField(
                              validator: (value) =>
                                  model.validatePharmacyStateName(value),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              maxLength: 30,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              keyboardType: TextInputType.text,
                              decoration: buildInputDecoration(
                                  "Statename",
                                  Icon(
                                    MaterialCommunityIcons.account,
                                    color: primaryColor,
                                  )),
                              controller: model.pharmacyStateName,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          FadeInLTR(
                            1.2,
                            Text(
                              "City",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(5),
                          ),
                          FadeInLTR(
                            1.2,
                            TextFormField(
                              validator: (value) =>
                                  model.validatePharmacyCityName(value),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              maxLength: 30,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              keyboardType: TextInputType.text,
                              decoration: buildInputDecoration(
                                  "Cityname",
                                  Icon(
                                    MaterialCommunityIcons.account,
                                    color: primaryColor,
                                  )),
                              controller: model.pharmacyCityName,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          FadeInLTR(
                            1.2,
                            Text(
                              "Pincode",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(5),
                          ),
                          FadeInLTR(
                            1.2,
                            TextFormField(
                              validator: (value) =>
                                  model.validatePharmacyPincode(value),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              maxLength: 6,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              keyboardType: TextInputType.number,
                              decoration: buildInputDecoration(
                                  "Pincode",
                                  Icon(
                                    MaterialCommunityIcons.map,
                                    color: primaryColor,
                                  )),
                              controller: model.pharmacyPincode,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          FadeInLTR(
                            1.5,
                            Text(
                              "Pharmacy Address",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(5),
                          ),
                          FadeInLTR(
                            1.5,
                            TextFormField(
                              validator: (value) =>
                                  model.validatePharmacyCityAddress(value),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              maxLength: 50,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              keyboardType: TextInputType.streetAddress,
                              decoration: buildInputDecoration(
                                  "Pharmacy Address",
                                  Icon(
                                    MaterialCommunityIcons.map,
                                    color: primaryColor,
                                  )),
                              controller: model.pharmacyAddress,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  FadeInLTR(
                    1.8,
                    buildOutlineButton(
                      "Continue",
                      model.savePharmacyDescription,
                    ),
                  )
                ],
              ),
            ),
          )),
        );
      },
      viewModelBuilder: () => AddPharmacyAddressViewModel(),
    );
  }
}
