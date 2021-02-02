import 'package:flutter/material.dart';


class OtherProgress extends StatelessWidget {
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
                Text('Order progress',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                ),),
              ],
            ),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Your order progress',style: TextStyle(
                           color: Colors.grey
                        ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[100]

                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 40,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Other's progress",
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[100]

                    ),
                  ),
                ),
                

              ],
            ),
            SizedBox(height: 20,),
                Card(
              
              child: GestureDetector(
                onTap: (){
              
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on),
                               SizedBox(width: 10,),
                              Text('Kedia Puram, VIP Colony, \n Hojai, Assam',style: TextStyle(
                              fontSize: 15,
                              color: Colors.green,
                              fontWeight: FontWeight.w300
                    ),),
                    
                            ],
                          ),
                          Text('You',style: TextStyle(
                            color: Colors.grey
                          ),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            
                            children: [
                              Text('Online order',style: TextStyle(
                            color: Colors.purple
                          ),),
                          SizedBox(height: 10,),
                           Text('Out for delivery',style: TextStyle(
                            color: Colors.green
                          ),),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 5,),
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
           Card(
              
              child: GestureDetector(
                onTap: (){
              
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on),
                               SizedBox(width: 10,),
                              Text('Kedia Puram, VIP Colony, \n Hojai, Assam',style: TextStyle(
                              fontSize: 15,
                              color: Colors.green,
                              fontWeight: FontWeight.w300
                    ),),
                    
                            ],
                          ),
                          Text('You',style: TextStyle(
                            color: Colors.grey
                          ),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            
                            children: [
                              Text('On shop',style: TextStyle(
                            color: Colors.purple
                          ),),
                          SizedBox(height: 10,),
                           Text('Done',style: TextStyle(
                            color: Colors.grey
                          ),),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 5,),
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