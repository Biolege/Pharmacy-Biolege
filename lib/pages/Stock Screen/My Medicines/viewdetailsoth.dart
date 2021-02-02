import 'package:flutter/material.dart';

class ViewdetailsO extends StatelessWidget {

  Widget _buildMedicinedetails(){
    return Container(
               
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10,bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('Medicine name',style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400
                ),),
                        ],
                      ),
                      SizedBox(height: 10,),
                Text('Brand name',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey
                ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 110,
                          height: 30,
                          decoration: BoxDecoration(
                  color: Colors.grey
                )
                        ),
                      ],
                    ),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey
                    ),
                  ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:9.0, bottom: 9.0),
                        child: Row(
                          children: [
                            Text('Salt combination',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey
                ),),
                          ],
                        ),
                      ),
                       SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text('Made in India',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey
                ),),
                Text('Distributor name',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey
                ),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                            Text('MRP',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey
                           ),),
                           SizedBox(width: 8,),
                          Text('₹ 27',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                     
                           ),),
                          
                          ],),
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
                ),
              );
  }

  Widget _buildInstockDetails(){
    return Container(
               
                decoration: BoxDecoration(
                  border: Border.all(width:1),
                  borderRadius: BorderRadius.circular(8),

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10,bottom: 10),
                  child: Column(
                    children: [
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('In Stock',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),),
                  Row(
                   
                    children: [
                      Icon(Icons.shopping_basket, size: 18,),
                      SizedBox(width: 3,),
                      Text('10 Boxes',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.filter_center_focus,size: 18,),
                      SizedBox(width: 3,),
                      Text('2 Strips',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.import_contacts,size: 18,),
                      SizedBox(width: 3,),
                      Text('10 Tablets',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),),
                    ],
                  )
                        ],
                      ),
                    
                    ],
                  ),
                ),
              );
  }

  Widget _buildPricingDetails(){
    return Container(
               
                decoration: BoxDecoration(
                  border: Border.all(width:1),
                  borderRadius: BorderRadius.circular(8),

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10,bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Pricing',style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),),
                        ],
                      ),
                      SizedBox(height: 18,),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                  Row(
                   
                    children: [
                      Icon(Icons.shopping_basket, size: 18,),
                      SizedBox(width: 3,),
                      Text('1 Box',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),),
                    ],
                  ),
                  
                  Row(
                    children: [
                      Text('MRP',style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300
                  ),),
                      SizedBox(width: 6,),
                      Text('₹ 27',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),),
                    ],
                  )
                        ],
                      ),
                    SizedBox(height: 19,),
                    Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                  Row(
                   
                    children: [
                      Icon(Icons.category ,size: 18,),
                      SizedBox(width: 3,),
                      Text('1 Strip',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),),
                    ],
                  ),
                  
                  Row(
                    children: [
                      Text('MRP',style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300
                  ),),
                      SizedBox(width: 6,),
                      Text('₹ 27',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),),
                    ],
                  )
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }

  Widget _buildBarcodeDetails(){
    return Container(
                height: 90,
                decoration: BoxDecoration(
                  border: Border.all(width:1),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10,bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Barcode details',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                    ),)
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
          margin: EdgeInsets.only(left: 22, right: 20, top: 10,bottom: 10),
          child: Column(
            
            children: [
              Row(
                children: [
                  Text('Medicine details',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                ),),
                ],
              ),
               SizedBox(height: 18,),
              _buildMedicinedetails(),
             SizedBox(height: 18,),
              _buildInstockDetails(),
              SizedBox(height: 18,),
              _buildPricingDetails(),
               
              
            
          ],),
        ),
      ),
    );
  }

}