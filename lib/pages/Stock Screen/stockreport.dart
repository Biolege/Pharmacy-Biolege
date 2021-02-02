import 'package:flutter/material.dart';


class StockReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(19),
          child: Column(
            children: [
              Row(
             
            children: [
              Text('Stock report',style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w400
              ),),
              
            ],
          ),
            ],
          ),
        ),
      ),
    );
  }
}