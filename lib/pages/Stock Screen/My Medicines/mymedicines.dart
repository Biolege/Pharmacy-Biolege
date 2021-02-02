import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/My%20Medicines/viewdeatilsbioledge.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/My%20Medicines/viewdetailsnew.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/My%20Medicines/viewdetailsoth.dart';


class MyMedicines extends StatelessWidget {


  Widget _buildMedicineBiolege(context){
    

    return Card(
              child: ExpansionTile(
                title:Container(
                height: 76,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Medicine name', style:TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        )),
                        SizedBox(height: 10,),
                        Text('Brand name',style:TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 19,
                          color: Colors.grey
                        ))
                      ],
                    ),
                    Row(
                      
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: Column(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Qnty', style:TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              )),
                              SizedBox(height: 10,),
                              Text('2 Box',style:TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 19,
                                color: Colors.grey
                              ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(backgroundColor: Colors.blue,
                          radius: 5,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              children: [
                Container(
                  
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Biolege', style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.blue
                                ))
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Salt Combination', style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.grey
                                )),
                                
                                Text('View offer',style:TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18,
                                  color: Colors.blue[800]
                                ))
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                          
                          children: [
                            Text('Qnty', style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19,
                                  color: Colors.grey
                                )),
                                 SizedBox(width: 15,),
                                Text('2 Box',style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.green
                                ))
                          ],
                        ),
                        Row(
                         
                          children: [
                            Text('BUY ₹ 234', style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.purple[600]
                                )),
                                SizedBox(width: 15,),
                                Text('Per box',style:TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                  color: Colors.green[800]
                                ))
                          ],
                        ),
                          ],
                        ),

                         SizedBox(height: 15,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('MRP ₹ 234', style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  color: Colors.grey
                                )),
                        Row(
                         
                          children: [
                            GestureDetector(
                              onTap: (){
                                pushNewScreen(
                                  context, screen: ViewDetailsB()
                                  );
                              },
                              child: Text('View details', style:TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.blue[600]
                                  )),
                            ),
                                SizedBox(width: 15,),
                                Container(
                                  width: 59,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.orange
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Order',style:TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                      color: Colors.white
                                    )),
                                  ),
                                )
                          ],
                        ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
              ),
            );
  }

  Widget _buildMedicineNewArriv(context){
    return Card(
              child: ExpansionTile(

                title:Container(
                height: 76,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Medicine name', style:TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        )),
                        SizedBox(height: 10,),
                        Text('Brand name',style:TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 19,
                          color: Colors.grey
                        ))
                      ],
                    ),
                    Row(
                      
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: Column(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Qnty', style:TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              )),
                              SizedBox(height: 10,),
                              Text('2 Box',style:TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 19,
                                color: Colors.grey
                              ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(backgroundColor: Colors.yellow,
                          radius: 5,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              children: [
                Container(
                  
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Distributor name', style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.grey
                                ))
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Salt Combination', style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.grey
                                )),
                                
                                Text('View offer',style:TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 19,
                                  color: Colors.blue[800]
                                ))
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                          
                          children: [
                            Text('Qnty', style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19,
                                  color: Colors.grey
                                )),
                                 SizedBox(width: 15,),
                                Text('2 Box',style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19,
                                  color: Colors.green[800]
                                ))
                          ],
                        ),
                        Row(
                         
                          children: [
                            Text('BUY ₹ 234', style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19,
                                  color: Colors.purple[600]
                                )),
                                SizedBox(width: 15,),
                                Text('Per box',style:TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  color: Colors.green[800]
                                ))
                          ],
                        ),
                          ],
                        ),

                         SizedBox(height: 15,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.orange
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('Order from biolege',style:TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  color: Colors.white
                                )),
                              ),
                            ),
                        Row(
                         
                          children: [
                            GestureDetector(
                              onTap: (){
                                pushNewScreen(context, screen: ViewdetailsN());
                              },
                              child: Text('View details', style:TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    color: Colors.blue[600]
                                  )),
                            ),
                                SizedBox(width: 15,),
                                Container(
                                  width: 59,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.orange
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Order',style:TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                      color: Colors.white
                                    )),
                                  ),
                                )
                          ],
                        ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('New arrival',style:TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13,
                                        color: Colors.blue
                                      )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
              ),
            );
  }

  Widget _buildMedicineOtherDist(context){
    

    return Card(
              child: ExpansionTile(
                title:Container(
                height: 76,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Medicine name', style:TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        )),
                        SizedBox(height: 10,),
                        Text('Brand name',style:TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 19,
                          color: Colors.grey
                        ))
                      ],
                    ),
                    Row(
                      
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: Column(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Qnty', style:TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              )),
                              SizedBox(height: 10,),
                              Text('2 Box',style:TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 19,
                                color: Colors.grey
                              ))
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ],
                ),
              ),
              children: [
                Container(
                  
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Distributor name', style:TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20,
                                  color: Colors.grey
                                ))
                          ],
                        ),
                        SizedBox(height: 14,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Salt Combination', style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.grey
                                )),
                                
                                
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                          
                          children: [
                            Text('Qnty', style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19,
                                  color: Colors.grey
                                )),
                                 SizedBox(width: 15,),
                                Text('2 Box',style:TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.green
                                ))
                          ],
                        ),
                        Row(
                         
                          children: [
                            GestureDetector(
                              onTap: (){
                                pushNewScreen(context, screen: ViewdetailsO());
                              },
                              child: Text('View details', style:TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.blue[600]
                                  )),
                            ),
                                SizedBox(width: 15,),
                                Container(
                                  
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.orange
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Add to cart',style:TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                      color: Colors.white
                                    )),
                                  ),
                                )
                          ],
                        ),
                        
                          ],
                        ),

                         
                         

                      ],
                    ),
                  ),
                ),
              ],
              ),
            );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left:19,right:10,top: 10,bottom: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My medicines',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                ),),
                Row(
                  children: [
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29),
                        color: Colors.grey[100]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Brand',style: TextStyle(
                              color: Colors.grey,
                            ),),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                          icon: Icon(Icons.search),
                          onPressed: (){},
                        ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            
            _buildMedicineBiolege(context),
            _buildMedicineBiolege(context),
            _buildMedicineNewArriv(context),
            _buildMedicineOtherDist(context),
            ],
          ),
        ),
      ),
    );
  }
}