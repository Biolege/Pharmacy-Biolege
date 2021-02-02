import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/Constants/innershadow.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/CreateBill/biolegecart.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/CreateBill/customerdetails.dart';


class OnShopbill extends StatelessWidget {
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
                Text('On shop billing',style: TextStyle(
                  fontSize: 21,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
                ),),
              ],
            ),
            SizedBox(height: 25,),
            Row(children: [
              Text('Enter customer mobile number',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                ),)
            ],),
            SizedBox(height:10 ,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'mobile number'
              ),
            ),
            SizedBox(height: 447,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                   Icon(Icons.card_membership, size: 25, color: Colors.grey[400]),
              GestureDetector(
                child: Text('Biolege card',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
                ),
                onTap: (){
                  pushNewScreen(context, 
                  screen: BiolegeCard(),
                  );
                },
              ),
                ],),               
                 InnerShadow(
                    blur: 5,
                    color: Colors.black38,
                    offset: const Offset(5, 5),
                    child: Container(
                     height: 40,
                    width: 90,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey[200],),

                    child: GestureDetector(  
                                 
                    onTap: (){
                      pushNewScreen(context,
                       screen: Customerdetails(),
                       );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Next',
                          style: TextStyle(
                            fontSize: 23
                          ),
                          ),
                          Icon(Icons.arrow_forward)
                          
                        ],
                        
                      ),
                    ),
                        ),
                ),
                 ),
              
            ],)
            
            ],
          ),
        )
        ),
    );
  }
}