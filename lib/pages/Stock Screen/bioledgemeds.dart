import 'package:flutter/material.dart';


class BioledgeMeds extends StatelessWidget {
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
                Text('Stock',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                ),),
              ],
            ),
            SizedBox(height: 18,),
            Row(
              
              children: [
                Text('Bioledge',style: TextStyle(
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
                  Text('My meds from biolege',style: TextStyle(
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
                  Icon(Icons.settings_backup_restore),
                  SizedBox(width: 10,),
                  Text('Biolege  stock',style: TextStyle(
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