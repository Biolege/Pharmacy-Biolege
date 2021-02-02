import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/Import%20Screen/importmedine.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/Import%20Screen/myimports.dart';


class ImportMeds extends StatelessWidget {
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
                Text('Import meds',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
                ),),
              ],
            ),
            SizedBox(height: 18,),
            
             SizedBox(height: 35,),
            GestureDetector(
              onTap: (){
                pushNewScreen(context, screen: ImportMedicine());
              },
              child: Padding(
                padding: const EdgeInsets.only(left:25),
                child: Row(
                  children: [
                    Icon(Icons.add),
                    SizedBox(width: 10,),
                    Text('Import medicine  from others',style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.w300
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                pushNewScreen(context, screen: MyImports());
              },
              child: Padding(
                padding: const EdgeInsets.only(left:25),
                child: Row(
                  children: [
                    Icon(Icons.center_focus_strong),
                    SizedBox(width: 10,),
                    Text('My imports',style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.w300
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left:25),
              child: Row(
                children: [
                  Icon(Icons.call_missed_outgoing),
                  SizedBox(width: 10,),
                  Text('Imports from biolege',style: TextStyle(
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