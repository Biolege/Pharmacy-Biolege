import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'alertDialogScreenViewModel.dart';

class AlertDialog extends StatelessWidget {
  static const String routeName = "/AlertDialog";
  final String medname, brandname, box, strip;

  AlertDialog({
    this.medname,
    this.brandname,
    this.box,
    this.strip,
  });

  Widget _cancelbutton() {
    return Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(color: Color(0xFF808080)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Cancel',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white),
        ),
      ),
    );
  }

  Widget _nextbutton(context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog2(),
        );
      },
      child: Container(
        height: 30,
        width: 65,
        decoration: BoxDecoration(color: Colors.orange),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 14.0, right: 10, top: 5, bottom: 5),
          child: Text(
            'Next',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AlertDialogModel>.reactive(
      viewModelBuilder: () => AlertDialogModel(),
      builder: (context, model, child) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: dialogContent(context),
        );
      },
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8.0,
                    offset: Offset(0.0, 10.0))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Medicine name',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Box',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Strip',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Brand name',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                        child: Icon(
                      Icons.remove_circle,
                      size: 16,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Text('2'),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.add_circle,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        _cancelbutton(),
                        SizedBox(
                          width: 16,
                        ),
                        _nextbutton(context),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AlertDialog2 extends StatelessWidget {
  final String medname, brandname, box, strip;

  AlertDialog2({
    this.medname,
    this.brandname,
    this.box,
    this.strip,
  });

  Widget _cancelbutton() {
    return Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(color: Color(0xFF808080)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Cancel',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white),
        ),
      ),
    );
  }

  Widget _donebutton(context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        height: 30,
        width: 65,
        decoration: BoxDecoration(color: Colors.orange),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 14.0, right: 10, top: 5, bottom: 5),
          child: Text(
            'Done',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AlertDialogModel1>.reactive(
      viewModelBuilder: () => AlertDialogModel1(),
      builder: (context, model, child) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: dialogContent(context),
        );
      },
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8.0,
                    offset: Offset(0.0, 10.0))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Medicine name',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Brand name',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('GST',
                        style: TextStyle(color: Colors.grey, fontSize: 19)),
                    SizedBox(
                      width: 10,
                    ),
                    Text('8 %', style: TextStyle(fontSize: 19)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('Purchase  price  ₹300',
                        style: TextStyle(color: Colors.grey, fontSize: 19)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        _cancelbutton(),
                        SizedBox(
                          width: 16,
                        ),
                        _donebutton(context),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
