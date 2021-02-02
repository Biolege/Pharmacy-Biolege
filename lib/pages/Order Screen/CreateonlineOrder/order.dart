import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/Constants/innershadow.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/CreateBill/paymentmode.dart';


class OrderP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top:15,left:38,right: 20),
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
              SizedBox(height: 10,) ,
              Row(
                
                children: [
                  IconButton(
                    onPressed: (){},
                  icon: Icon(Icons.camera_alt,
                    size: 30,
                    color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
      margin: EdgeInsets.symmetric(vertical: 9),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: 250,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
       
      ),
        child: TextField(
          
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search),
             border: InputBorder.none,
             hintText: 'Search for medicines'
          ),
        ),          
          ),  
             
             IconButton(
               onPressed: (){},
               icon: Icon(Icons.center_focus_strong,
               size: 30,
               color: Colors.grey,
               ),
             )               
                      ],
               ),
               SizedBox(height: 10,),
               InnerShadow(
  blur: 5,
  color: Colors.black38,
  offset: const Offset(5, 5),
  child: Container(
    margin: EdgeInsets.only(top:10),
    child: Padding(
        padding: const EdgeInsets.all(5.0),
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
                child: GestureDetector(
                  
                  onTap: (){},
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
              ),
               Container(
                height: 40,
        width: 85,
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
                      
                      Text('07 items')
                    ],
                    ),
                  ),
                  
                  ),
              ),
                  
            ],),
            
            SizedBox(height: 15,),
            Row(
              children: [
                Text('Medicine name',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),),
                 SizedBox(width: 50,),
                GestureDetector(
                  child: Icon(Icons.add_circle),

                ),
                Text('2'),
                GestureDetector(
                  child: Icon(Icons.add_circle),

                ),
                SizedBox(width: 10,),
                Text('Strip',
                style: TextStyle(
                  color: Colors.grey[400]
                ),),
                SizedBox(width: 10,),
                Text('₹ 460',
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
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Medicine name',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),),
                SizedBox(width: 50,),
                GestureDetector(
                  child: Icon(Icons.add_circle),

                ),
                Text('2'),
                GestureDetector(
                  child: Icon(Icons.add_circle),

                ),
                SizedBox(width: 10,),
                Text('Strip',
                style: TextStyle(
                  color: Colors.grey[400]
                ),),
                SizedBox(width: 10,),
                Text('₹ 460',
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
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Medicine name',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),),
                 SizedBox(width: 50,),
                GestureDetector(
                  child: Icon(Icons.add_circle),

                ),
                Text('2'),
                GestureDetector(
                  child: Icon(Icons.add_circle),

                ),
                SizedBox(width: 10,),
                Text('Strip',
                style: TextStyle(
                  color: Colors.grey[400]
                ),),
                SizedBox(width:  10,),
                Text('₹ 460',
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
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Medicine name',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),),
                 SizedBox(width: 50,),
                GestureDetector(
                  child: Icon(Icons.add_circle),

                ),
                Text('2'),
                GestureDetector(
                  child: Icon(Icons.add_circle),

                ),
                SizedBox(width: 10,),
                Text('Strip',
                style: TextStyle(
                  color: Colors.grey[400]
                ),),
                SizedBox(width:  10,),
                Text('₹ 460',
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
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Medicine name',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),),
                 SizedBox(width: 50,),
                GestureDetector(
                  child: Icon(Icons.add_circle),

                ),
                Text('2'),
                GestureDetector(
                  child: Icon(Icons.add_circle),

                ),
                SizedBox(width: 10,),
                Text('Strip',
                style: TextStyle(
                  color: Colors.grey[400]
                ),),
                SizedBox(width:  10,),
                Text('₹ 460',
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
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Medicine name',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),),
                 SizedBox(width: 50,),
                GestureDetector(
                  child: Icon(Icons.add_circle),

                ),
                Text('2'),
                GestureDetector(
                  child: Icon(Icons.add_circle),

                ),
                SizedBox(width: 10,),
                Text('Strip',
                style: TextStyle(
                  color: Colors.grey[400]
                ),),
                SizedBox(width: 10,),
                Text('₹ 460',
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
              ],
            ),
            SizedBox(height: 20,),

          ],
        ),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.grey[100],
    ),
    height: 500,  ),
),
SizedBox(height: 65,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Container(
    height: 40,
    width: 130,
        decoration: BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.orange
    
        ),
    
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Total ₹ 460',
    
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w300,
            color: Colors.white
    
          ),
    
          ),
        ),
    
    ),
    InnerShadow(
       blur: 5,
  color: Colors.black38,
  offset: const Offset(5, 5),
      child: Container(
        height: 40,
        width: 122,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.grey[200]
    
        ),
        child: GestureDetector(
          onTap: (){
            pushNewScreen(context, 
            screen: PaymentMode(),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text('Payment',
              style: TextStyle(
                fontSize: 20
              ),
              ),
              Icon(Icons.arrow_forward)
            ],),
          ),
          ),
      ),
    ),
  ],
) ,         
                  ],
            ),
          ),
        ),
      ),
    );
  }
}