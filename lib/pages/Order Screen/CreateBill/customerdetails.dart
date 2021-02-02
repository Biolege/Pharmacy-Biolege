import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/Constants/innershadow.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/CreateBill/order.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/orders.dart';


class Customerdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
            child: Container(
            margin: EdgeInsets.only(top: 15,left: 44),
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
                Text('Customer details',style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),)
              ],),
              SizedBox(height:20 ,),
              Row(children: [
                Text('Name',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),)
              ],),
               SizedBox(height:10 ,),
              Row(children: [
                Text('Customer Name',style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),)
              ],),
              SizedBox(height:18 ,),
              Row(children: [
                Text('Contact',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),)
              ],),
               SizedBox(height:10 ,),
              Row(children: [
                Text('01010101010',style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),)
              ],),
              SizedBox(height:18 ,),
              Row(children: [
                Text('Date of birth',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),)
              ],),
               SizedBox(height:10 ,),
              Row(children: [
                Text('September 4, 1998',style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),)
              ],),
              SizedBox(height:18 ,),
              Row(children: [
                Text('Address',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),)
              ],),
               SizedBox(height:10 ,),
              Row(children: [
                Text('Kedia puram, VIP colony, Hojai, \n Assam-782435'
                ,style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),)
              ],),
              SizedBox(height:18 ,),
              Row(children: [
                Text('Biolege points',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),)
              ],),
               SizedBox(height:10 ,),
              Row(children: [
                Text('1092'
                ,style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),)
              ],),
              SizedBox(height:18 ,),
              Row(children: [
                Text('Biolege Card Holder',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),)
              ],),
               SizedBox(height:10 ,),
              Row(children: [
                Text('No'
                ,style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),)
              ],),
              SizedBox(height: 85,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InnerShadow(
                     blur: 5,
                    color: Colors.black38,
                    offset: const Offset(5, 5),
                     child: Container(
                      height: 40,
                    width: 159,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(20)),
                     color: Colors.grey[200]
    
                      ),
                      child: GestureDetector(  
                                   
                      onTap: (){
                        pushNewScreen(context,
                         screen: OrderP(),
                         );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Start billing',
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
          ),
        ),
      )
    );
  }
}