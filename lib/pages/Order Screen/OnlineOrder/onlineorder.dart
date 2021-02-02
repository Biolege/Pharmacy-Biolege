import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/OnlineOrder/onlineorderdetails.dart';


class OnlineOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(19),
          child:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Online orders',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                ),),
                
              ],
            ),
            SizedBox(height: 30,),
            Card(
              
              child: GestureDetector(
                onTap: (){
                  pushNewScreen(context, 
                  screen: OnlineOrderD(),
                  );
                },
                  child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person),
                              SizedBox(width: 10,),
                              Text('Abhinash Bora', style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300
                    ),)
                            ],
                          ),
                          Text('₹ 460',style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.w300
                    ),)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                           SizedBox(width: 10,),
                          Text('Kedia Puram, VIP Colony, \n Hojai, Assam',style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                          fontWeight: FontWeight.w300
                    ),)
                        ],
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Order number  BM234345',style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w300
                    ),),
                    Row(children: [
                        Icon(Icons.timer),
                        SizedBox(width:5),
                        Text('10:15 AM',style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w300
                    ),),
                    ],)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
           

          ],
        ),),
      ),
    );
  }
}