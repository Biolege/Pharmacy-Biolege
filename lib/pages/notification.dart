import 'package:flutter/material.dart';
import 'package:pharmacy_bioledge/bloc.navigation_bloc/navigation_bloc.dart';


class Notification extends StatelessWidget  with NavigationStates{
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
                Text('Notification',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                ),),
              ],
            ),
            SizedBox(height: 18,),
            Row(
              children: [
                Text('You have got a message',style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                ),),
              ],
            ),
            
            
           

          ],
        ),),
      ),
      
    );
  }
}