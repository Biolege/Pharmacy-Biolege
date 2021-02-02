import 'package:flutter/material.dart';
import 'package:pharmacy_bioledge/bloc.navigation_bloc/navigation_bloc.dart';


class Accounts extends StatelessWidget with NavigationStates {
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
                Text('Accounts',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                ),),
                
              ],
            ),
            SizedBox(height: 18,),
            Row(
              
              children: [
                Text('Track your employees',style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                ),),
                
              ],
            ),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left:25),
              child: Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 10,),
                  Text('File your GST',style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.w300
                  ),),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left:25),
              child: Row(
                children: [
                  Icon(Icons.local_atm),
                  SizedBox(width: 10,),
                  Text('Total purchase',style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.w300
                  ),),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left:25),
              child: Row(
                children: [
                  Icon(Icons.call_missed_outgoing),
                  SizedBox(width: 10,),
                  Text('Payment to Bioledge meds',style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.w300
                  ),),
                ],
              ),
            ),
          ],
        ),),
      ),
    );
  }
}