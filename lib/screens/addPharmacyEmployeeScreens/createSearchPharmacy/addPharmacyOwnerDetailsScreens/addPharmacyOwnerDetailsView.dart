import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:stacked/stacked.dart';
import '../../../../main.dart';
import '../../../../widgets/reusables.dart';
import '../../../../app/mediaQ.dart';
import '../../../../theme/theme.dart';
import '../../../../widgets/animations.dart';
import 'addPharmacyOwnerDetailsViewModel.dart';

class AddPharmacyOwnerDetailsScreenView extends StatelessWidget {
  static const routeName = "/addPharmacyOwnerDetailsScreenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddPharmacyOwnerDetailsScreenViewModel>.reactive(
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
                      "Pharmacy Owner",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Form(
                      key: model.pharmacyOwnerDetailsFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeInLTR(
                            0.9,
                            Text(
                              "Pharmacy Phone Number",
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
                                  model.validatePharmacyOwnerPhoneNumber(value),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              maxLength: 10,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              keyboardType: TextInputType.phone,
                              decoration: buildInputDecoration(
                                  "Phone Number",
                                  Icon(
                                    MaterialCommunityIcons.account,
                                    color: primaryColor,
                                  )),
                              controller: model.pharmacyPhoneNumber,
                            ),
                          ),
                          FadeInLTR(
                            0.6,
                            Text(
                              "Pharmacy Owner Name",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(5),
                          ),
                          FadeInLTR(
                            0.6,
                            TextFormField(
                              validator: (value) =>
                                  model.validatePharmacyOwnerName(value),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              maxLength: 30,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              keyboardType: TextInputType.name,
                              decoration: buildInputDecoration(
                                  "Name",
                                  Icon(
                                    MaterialCommunityIcons.account,
                                    color: primaryColor,
                                  )),
                              controller: model.pharmacyOwnerName,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          FadeInLTR(
                            0.9,
                            Text(
                              "Pharmacy Owner Phone Number",
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
                                  model.validatePharmacyOwnerPhoneNumber(value),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              maxLength: 10,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              keyboardType: TextInputType.phone,
                              decoration: buildInputDecoration(
                                  "Phone Number",
                                  Icon(
                                    MaterialCommunityIcons.account,
                                    color: primaryColor,
                                  )),
                              controller: model.pharmacyOwnerPhoneNumber,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          FadeInLTR(
                            1.2,
                            Text(
                              "Pharmacy Owner ID proof",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          FadeInLTR(
                            1.2,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildBasicOutlineButton(
                                    Text(
                                      "Upload Photo",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                    ),
                                    () => model.pickPharmacyOwnerIdProof()),
                                model.getPharmacyOwnerIdProof != null
                                    ? Image.memory(
                                        model.getPharmacyOwnerIdProof,
                                        width: 50,
                                        height: 50,
                                      )
                                    : Text("No file selected")
                              ],
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
                      model.savePharmacyOwnerDetails,
                    ),
                  )
                ],
              ),
            ),
          )),
        );
      },
      viewModelBuilder: () => AddPharmacyOwnerDetailsScreenViewModel(),
    );
  }
}
