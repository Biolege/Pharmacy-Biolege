import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/Constants/innershadow.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/OnlineOrder/checkitems.dart';


class CustomerDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Online orders',style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                    ),),
                    
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.all(Radius.circular(8))                  
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [      
                                Container(
                                  height: 40,
                          
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                    
                          ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row( 
                                    children: [
                                      
                                      Text('Customer details')
                                    ],
                                    ),
                                  ),
                                ),
                                 Container(
                                  height: 40,
                          
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.orange,
                    
                          ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row( 
                                    children: [
                                      Icon(Icons.phone, size: 20,color: Colors.white,),
                                      Text('CALL', style: TextStyle(color: Colors.white,))
                                    ],
                                    ),
                                  ),
                                ),
                                    
                              ],),
                              SizedBox(height: 18,),
                              Row(
                                children: [
                                  Text('Order number  BM234345', style: TextStyle(color: Colors.grey,))
                                ],
                              ),
                              SizedBox(height: 18,),
                              Row(
                                children: [
                                  Icon(Icons.timer,size: 15,),
                                  Text('10:15 AM', style: TextStyle(color: Colors.grey,))
                                ],
                              ),
                              SizedBox(height: 30,),
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
                          SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                           SizedBox(width: 10,),
                          Text('Kedia Puram, VIP Colony, Hojai, Assam',style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                          fontWeight: FontWeight.w300
                    ),)
                        ],
                      ),
                       SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.phone),
                           SizedBox(width: 10,),
                          Text('9854675434',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w300
                    ),)
                        ],
                      ),
                       SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.card_membership),
                           SizedBox(width: 10,),
                          Text('BIO5434',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w300
                    ),)
                        ],
                      ),
                      SizedBox(height: 18,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(Icons.arrow_drop_up)
                      ],)
                      
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                      Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey[200]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:10.0,right:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Orders',style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                    ),),
                    IconButton(
                  icon: Icon(Icons.arrow_drop_down),
                  onPressed: (){
                    
                  },
                    ),
                    ],
                  ),
                ),
                    ),
                     SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.all(Radius.circular(10)),                         
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  
                                  width: 125,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Price Breakdown', style: TextStyle(
                                    )),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                ),
                                 Container(
                                   child: Row(
                                    children: [
                                      Text('You will receive',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        
                                      ),
                                      ),
                                      Text('₹ 1800', style: TextStyle(
                                        color: Colors.orange
                                      ))
                                    ],
                                ),
                                 )
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Amount',style: TextStyle(
                                        fontSize: 15
                                      ) ),
                                Text('₹ 2000' , style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 15
                                      ))
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Discount',style: TextStyle(
                                        fontSize: 15
                                      ) ),
                                Text('- ₹ 200' , style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 15
                                      ))
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Amount',style: TextStyle(
                                        fontSize: 15
                                      ) ),
                                Text('₹ 1800' , style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 15
                                      ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                              Text('Payment mode',style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey
                                        ) ),
                            ],),
                            Row(
                            
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              Text('CASH',style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.orange
                                        ) ),
                            ],),
                          ],
                        ),
                        InnerShadow(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                  onTap: (){
                                    pushNewScreen(context, screen:CheckItems()
                                    );
                                  },
                                  child: Row(
                                  children: [
                                    Text('Start Billing',style: TextStyle(
                                                fontSize: 22
                                              )),
                                    Icon(Icons.arrow_forward)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}