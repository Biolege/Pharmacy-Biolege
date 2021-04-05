import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';
import '../../../../main.dart';
import '../../../../widgets/reusables.dart';
import '../../../../app/mediaQ.dart';
import '../../../../theme/theme.dart';
import '../../../../widgets/animations.dart';
import 'addPharmacyScreenViewModel.dart';

class AddPharmacyScreenView extends StatelessWidget {
  static const routeName = "/addPharmacyScreenView";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddPharmacyScreenViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: buildAppBar(context),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                height: SizeConfig.screenHeight * 0.8,
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
                      height: getProportionateScreenHeight(20),
                    ),
                    FadeInLTR(
                      0.6,
                      Text(
                        "Create a new pharmacy",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Form(
                      key: model.createPharmacyForm,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeInLTR(
                            0.9,
                            Text(
                              "Pharmacy Name",
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
                                  model.validatePharmacyName(value),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              maxLength: 30,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              keyboardType: TextInputType.name,
                              decoration: buildInputDecoration(
                                  "Pharmacy Name",
                                  Icon(
                                    MaterialCommunityIcons.account,
                                    color: primaryColor,
                                  )),
                              controller: model.pharmacyName,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          FadeInLTR(
                            1.8,
                            Text(
                              "Pharmacy address proof  ( Trade License ) ",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(5),
                          ),
                          FadeInLTR(
                            1.8,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildBasicOutlineButton(
                                    Text(
                                      "Upload Photo",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                    ),
                                    () => model.pickPharmacyAddressProof()),
                                model.getPharmacyAddressProof != null
                                    ? Image.memory(
                                        model.getPharmacyAddressProof,
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
                          FadeInLTR(
                            2.1,
                            Text(
                              "Pharmacy Logo",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(5),
                          ),
                          FadeInLTR(
                            2.1,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildBasicOutlineButton(
                                    Text(
                                      "Upload Photo",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                    ),
                                    () => model.pickPharmacyLogo()),
                                model.getPharmacyLogo != null
                                    ? Image.memory(
                                        model.getPharmacyLogo,
                                        width: 50,
                                        height: 50,
                                      )
                                    : Text("No file selected")
                              ],
                            ),
                          ),
                          FadeInLTR(
                            1.5,
                            Text(
                              "Clinic on Map",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          FadeInLTR(
                            1.5,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 200,
                                  child: GoogleMap(
                                    cameraTargetBounds:
                                        CameraTargetBounds.unbounded,
                                    minMaxZoomPreference:
                                        MinMaxZoomPreference.unbounded,
                                    zoomGesturesEnabled: true,
                                    myLocationButtonEnabled: true,
                                    myLocationEnabled: true,
                                    mapType: MapType.normal,
                                    gestureRecognizers: Set()
                                      ..add(Factory<PanGestureRecognizer>(
                                          () => PanGestureRecognizer())),
                                    onCameraMove: (v) =>
                                        model.pickedLocationOnMap(v),
                                    initialCameraPosition:
                                        model.initialCoordinates,
                                    onMapCreated:
                                        (GoogleMapController controller) {
                                      // Bind the controllers
                                      model.locationOnMapcontroller
                                          .complete(controller);
                                      model.mapController = controller;
                                    },
                                    markers: model.markers,
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(10),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Add a marker and drag it your\nclinic location for accuracy",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          fontSize: 12),
                                    ),
                                    !model.isLocationMarked
                                        ? buildBasicOutlineButton(
                                            Text(
                                              "Set marker",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            () => model
                                                .onAddMarkerButtonPressed())
                                        : buildBasicOutlineButton(
                                            Text(
                                              "Remove marker",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            () => model.removeMarker()),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(40),
                    ),
                    FadeInLTR(
                      2.1,
                      buildOutlineButton("Continue", model.savePharmacyDetails),
                    ),
                  ],
                ),
              ),
            ),
          )),
        );
      },
      onModelReady: (model) => model.getCurrentLocation(),
      viewModelBuilder: () => AddPharmacyScreenViewModel(),
    );
  }
}
