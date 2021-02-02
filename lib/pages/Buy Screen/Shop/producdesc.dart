import 'package:flutter/material.dart';
import 'package:pharmacy_bioledge/pages/Buy%20Screen/Shop/alertdialogshop.dart';

class ProductDesc extends StatelessWidget {


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 19, right: 5, top: 15, bottom: 15),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Medicine details',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 220,
                    width: 380,
                    decoration: BoxDecoration(color: Colors.grey[300]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Row(
                      children: [
                        Text(
                          'Medicine name',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:30.0),
                        child: Text(
                          'Salt combination',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Brand name',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Made in India',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 85,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Buy for ',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'MRP ',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '₹ 227',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Per box ',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Text(
                        '₹ 27',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                    width: 380,
                    child: Divider(
                      color: Colors.grey[600],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Available offer',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.bookmark,
                        color: Colors.green,
                      ),
                      Text(
                        'Buy 2 Box, Get 1 box free',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.bookmark,
                        color: Colors.green,
                      ),
                      Text(
                        'Available offer',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.bookmark,
                        color: Colors.green,
                      ),
                      Text(
                        'Available offer',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                    width: 380,
                    child: Divider(
                      color: Colors.grey[600],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'In Stock',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.broken_image),
                          Text(
                            '10 Boxes',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.center_focus_strong),
                          Text(
                            '2 Strips',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.gamepad),
                          Text(
                            '10 Tablets',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Expiry date',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                    color: Colors.grey[600]),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '10 July 2020',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                    color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ],
                      ),
                  SizedBox(
                    height: 30,
                    width: 380,
                    child: Divider(
                      color: Colors.grey[600],
                    ),
                  ),
                Row(
                    children: [
                      Text(
                        'Product Description',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                 SizedBox(height: 20,),
                 Wrap(
                   children: [
                     Text('Thyronorm 50mcg Tablet is a medicine used to treat an underactive thyroid gland (hypothyroidism). It replaces the hormone which is not being produced by your thyroid gland in sufficient quantity and helps regulate your body’s energy and metabolism.'),

                   ],
                 ),
                 SizedBox(height: 30,),
                 GestureDetector(
                   onTap: (){
                      showDialog(context: context, builder : (context) => ADialog3()
               );
                   },
                   child: Container(
                     height: 40,
                     decoration: BoxDecoration(
                       color: Colors.orange,
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('Add to cart',style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                       ],
                     ),
                   ),
                 ), 

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
