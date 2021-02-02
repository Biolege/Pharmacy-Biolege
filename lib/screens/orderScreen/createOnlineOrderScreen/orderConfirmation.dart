import 'package:flutter/material.dart';


class Confirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Orders',style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),),
                  
                    ],               
              ),
              SizedBox(
                height: 27,
              ),
              Text('Confirmation page with \n detailes of that day sales',style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),)
            ],
          ),
        ),
      ),
    );
  }
}