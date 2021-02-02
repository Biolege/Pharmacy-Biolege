import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/Constants/innershadow.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/OnlineOrder/orderconf.dart';


class CheckItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
            margin: EdgeInsets.only(left:28, right:15, top:18),
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
                SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Check items',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w300
                    ),),
                    Text('Total items 12',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w300
                    ),)
                  ],
                ),
                 SizedBox(height: 18,),
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.grey[100],
                     borderRadius: BorderRadius.all(Radius.circular(5))
                   ),
                   child: Padding(
                     padding: EdgeInsets.all(10),
                     child: Column(
                       children: [
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
                     ],),

                   ),
                 ),
                 SizedBox(height: 15,),
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
          width: 109,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
    
          ),
                  child: GestureDetector(
                    
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row( 
                      children: [
                        
                        Text('07 Medicines')
                      ],
                      ),
                    ),
                    
                    ),
                ),
                Text('CART', style:TextStyle(
                    fontWeight: FontWeight.w700,
                    
                )),
                 Container(
                  height: 40,
          width: 100,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
    
          ),
                  child: GestureDetector(
                    
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row( 
                      children: [
                        
                        Text('07 items left')
                      ],
                      ),
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
     SizedBox(height:110 ,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                Text('Amount to receive',style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                    ) ),
                              ],),
                              Row(
                              
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                Text('₹ 6787',style: TextStyle(
                      fontSize: 15,
                      color: Colors.orange
                    ) ),
                              ],),
                            ],
                          ),
                          InnerShadow(
                              child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                  onTap: (){
                                    pushNewScreen(context, screen:ConfirmationD()
                                    );
                                  },
                                  child: Row(
                                  children: [
                                    Text('Ready to deliver',style: TextStyle(
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
                      )
              ]
            ),
          ),
        ),
      ),
    );
  }
}