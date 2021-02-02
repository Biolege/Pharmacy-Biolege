import 'package:flutter/material.dart';


class MedSold extends StatelessWidget {



Widget _buildSoldMedBiolege(){    
    return Card(
              child:
                Container(
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
                    Padding(
                      padding: const EdgeInsets.only(right:10.0),
                      child: Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sold', style:TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          )),
                          SizedBox(height: 10,),
                          Text('2 Strip',style:TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 19,
                            color: Colors.grey
                          ))
                        ],
                      ),
                    ),
                    
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: Column(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Left', style:TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              )),
                              SizedBox(height: 10,),
                              Text('2 Strip',style:TextStyle(
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
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              
            );
  }

Widget _buildSoldMedOther(){    
    return Card(
              child:
                Container(
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
                    Padding(
                      padding: const EdgeInsets.only(right:10.0),
                      child: Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sold', style:TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          )),
                          SizedBox(height: 10,),
                          Text('2 Strip',style:TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 19,
                            color: Colors.grey
                          ))
                        ],
                      ),
                    ),
                    
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: Column(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Left', style:TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              )),
                              SizedBox(height: 10,),
                              Text('2 Strip',style:TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 19,
                                color: Colors.grey
                              ))
                            ],
                          ),
                        ),
                        SizedBox(width: 10,)
                      ],
                    ),
                  ],
                ),
              ),
              
              
            );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(19),
          child: Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Meds sold',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                ),),
                Row(
                  children: [
                    Text('Sept 12',style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w300
                    ),),
                    Icon(Icons.calendar_today)
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            _buildSoldMedBiolege(),
            _buildSoldMedBiolege(),
            _buildSoldMedOther(),
            _buildSoldMedOther()

            ],
          ),
        ),
      ),
    );
  }
}