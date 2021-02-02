import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/Constants/innershadow.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/OnlineOrder/checkitems.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/OnlineOrder/customerdetails.dart';

class OnlineOrderD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
            margin: EdgeInsets.only(left:28, right:15, top:18),
            child: Column(children: [
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
                SizedBox(height: 15,),
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
                      Text('Customer details',style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                    ),),
                    IconButton(
                  icon: Icon(Icons.arrow_drop_down),
                  onPressed: (){
                    pushNewScreen(context, screen: CustomerDetails());
                  },
                    ),
                    ],
                  ),
                ),
                    ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(top:10),
                  child: Padding(
                        padding: const EdgeInsets.only(left:15, right:5,top:10, bottom: 15),
                        child: Column(
                          
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [      
                              Container(
                                height: 40,
                        width: 85,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                  
                        ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row( 
                                  children: [
                                    Icon(Icons.shopping_cart),
                                    Text('Cart')
                                  ],
                                  ),
                                ),
                              ),
                               Container(
                                height: 40,
                        width: 85,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                  
                        ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row( 
                                  children: [
                                    
                                    Text('07 items')
                                  ],
                                  ),
                                ),
                              ),
                                  
                            ],),
                            
                            SizedBox(height: 25,),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('Medicine name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                    ),),
                                    
                                  ],
                                ),
                                 SizedBox(width: 50,),
                                
                                Text('2',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black
                                ),),
                                
                                
                                SizedBox(width: 100,),
                                Text('₹ 366',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue
                                ),
                                )
                              ],
                            ),
                            Row(
                                     
                              children: [
                                Text('Brand Name',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 17
                                ),
                                ),
                                 SizedBox(width: 85,),
                                 Text('Strip',
                                style: TextStyle(
                                  color: Colors.grey[500]
                                ),),
                                SizedBox(width: 100,),
                                Text('5% off',
                                style: TextStyle(
                                  fontSize:13 ,
                                  color: Colors.grey[500]
                                ),),
                                      ],
                                    ),
                            
                            SizedBox(height: 20,),
                             Row(
                              children: [
                                Column(
                                  children: [
                                    Text('Medicine name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                    ),),
                                    
                                  ],
                                ),
                                 SizedBox(width: 50,),
                                
                                Text('2',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black
                                ),),
                                
                                
                                SizedBox(width: 100,),
                                Text('₹ 366',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue
                                ),
                                )
                              ],
                            ),
                            Row(
                                     
                              children: [
                                Text('Brand Name',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 17
                                ),
                                ),
                                 SizedBox(width: 85,),
                                 Text('Strip',
                                style: TextStyle(
                                  color: Colors.grey[500]
                                ),),
                                SizedBox(width: 100,),
                                Text('5% off',
                                style: TextStyle(
                                  fontSize:13 ,
                                  color: Colors.grey[500]
                                ),),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                 Row(
                              children: [
                                Column(
                                  children: [
                                    Text('Medicine name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                    ),),
                                    
                                  ],
                                ),
                                 SizedBox(width: 50,),
                                
                                Text('2',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black
                                ),),
                                
                                
                                SizedBox(width: 100,),
                                Text('₹ 366',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue
                                ),
                                )
                              ],
                            ),
                            Row(
                                     
                              children: [
                                Text('Brand Name',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 17
                                ),
                                ),
                                 SizedBox(width: 85,),
                                 Text('Strip',
                                style: TextStyle(
                                  color: Colors.grey[500]
                                ),),
                                SizedBox(width: 100,),
                                Text('5% off',
                                style: TextStyle(
                                  fontSize:13 ,
                                  color: Colors.grey[500]
                                ),),
                                      ],
                                    ),
                           SizedBox(height: 20,),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('Medicine name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                    ),),
                                    
                                  ],
                                ),
                                 SizedBox(width: 50,),
                                
                                Text('2',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black
                                ),),
                                
                                
                                SizedBox(width: 100,),
                                Text('₹ 366',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue
                                ),
                                )
                              ],
                            ),
                            Row(
                                     
                              children: [
                                Text('Brand Name',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 17
                                ),
                                ),
                                 SizedBox(width: 85,),
                                 Text('Strip',
                                style: TextStyle(
                                  color: Colors.grey[500]
                                ),),
                                SizedBox(width: 100,),
                                Text('5% off',
                                style: TextStyle(
                                  fontSize:13 ,
                                  color: Colors.grey[500]
                                ),),
                                      ],
                                    ),                                                                   
                          ],
                        ),
                  ),
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[100],
                  ),
                   ),
                    SizedBox(height: 15,),
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
                                  height: 40,
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
                    SizedBox(height: 18,),
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

            ],),
          ),
        ),
      ),
    );
  }
}