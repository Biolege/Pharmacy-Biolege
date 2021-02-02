import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/Constants/innershadow.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/CreateBill/onshopbill.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/CreateBill/order.dart';

class BiolegeCard extends StatelessWidget {
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
              Text('Enter biolege card number',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                ),)
            ],),
            SizedBox(height:10 ,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'card number'
              ),
            ),
            SizedBox(height: 200,),
            InnerShadow(
                    blur: 5,
                    color: Colors.black38,
                    offset: const Offset(5, 5),
                    child: Container(
                     height: 40,
                    width: 210,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey[100],),

                    child: GestureDetector(  
                                 
                    onTap: (){
                      pushNewScreen(context,
                       screen:OrderP()
                       );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                       
                        children: [
                          Icon(Icons.scanner),
                          SizedBox(width: 10,),
                          Text('Scan biolege card',
                          style: TextStyle(
                            fontSize: 20
                          ),
                          ),
                          
                          
                        ],
                        
                      ),
                    ),
                        ),
                ),
                 ),
            SizedBox(height: 230,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                   Icon(Icons.phone_android, size: 25, color: Colors.grey[400]),
              GestureDetector(
                child: Text('Mobile number',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25
                ),
                ),
                onTap: (){},
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
                       screen:OnShopbill()
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