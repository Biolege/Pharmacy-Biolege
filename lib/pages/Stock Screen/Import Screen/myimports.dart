import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/Import%20Screen/meddetails.dart';



class MyImports extends StatelessWidget {



Widget _singlemeds(context){
  return GestureDetector(
               onTap: (){
                 pushNewScreen(context, screen: MedDeatails());
               },
                 
            child:Card(
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Row(
                      
                      
                      children: [
                        Text('Med varities', style:TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        )),
                        SizedBox(width: 10,),
                        Text('12',style:TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          color: Colors.grey
                        ))
                      ],
                    ),
                    Row(
                      
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: Row(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('July 27, 2020', style:TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.grey
                              )),
                              SizedBox(width: 10,),
                              Text('12 : 30 am',style:TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                color: Colors.grey
                              ))
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Total amount', style:TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                
                              )),
                              SizedBox(width: 10,),
                              Text('₹ 3453',style:TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                               
                              ))
                          ],
                        ),
                        Text(
                          'Distributor name', style:TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.green
                              )
                        )
                      ],
                    )
                  ],
                ),
              ),
            ) 
            
          );
               }
               
               
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      
      child:Container(
        margin: EdgeInsets.all(19),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My imports',style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w400
              ),),
              Icon(Icons.calendar_today,color: Colors.black,)
            ],
          ),
          SizedBox(height: 15,),
          _singlemeds(context),
          _singlemeds(context),
          _singlemeds(context),
          _singlemeds(context),
          ],
        ),
      ) ,),
  );
}
               
                 
}