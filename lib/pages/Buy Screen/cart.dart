import 'package:flutter/material.dart';


class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(19),
          child:Column(
          children: [
            Row(
              children: [
                Text('Buy',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                ),),
              ],
            ),
            SizedBox(height: 18,),
            Row(
              
              children: [
                Text('My Cart',style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                ),),
                
              ],
            ),
            SizedBox(height: 35,),
            
           

          ],
        ),),
      ),
    );
  }
}