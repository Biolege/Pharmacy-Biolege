import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/pages/Buy%20Screen/Shop/producdesc.dart';


class Shop extends StatelessWidget {



Widget _singlemed(){
  return Padding(
    padding: const EdgeInsets.only(left:10),
    child: Container(
                   width: 175,
                   height: 100,
                   decoration: BoxDecoration(
                     color: Colors.grey,
                     borderRadius: BorderRadius.circular(10)
                   ),
                 ),
  );
}

Widget _medicine(){
return Padding(
  padding: const EdgeInsets.only(left:8.0),
  child:   Container(
  
                  width: 100,
  
                     height: 20,
  
                     decoration: BoxDecoration(
  
                       color: Colors.grey[300],
  
                       borderRadius: BorderRadius.circular(10)
  
                     ),
  
                     child: Padding(
  
                       padding: const EdgeInsets.only(left:15),
  
                       child: Text('Medicines'),
  
                     ),
  
                ),
);
}

Widget _brands(){
  return Padding(
    padding: const EdgeInsets.only(left:10),
    child: Container(
                   width: 100,
                   height: 50,
                   decoration: BoxDecoration(
                     color: Colors.grey[300],
                     borderRadius: BorderRadius.circular(10)
                   ),
                 ),
  );
}

Widget _topsellmed(context){
return GestureDetector(
  onTap: (){
    pushNewScreen(context, screen: ProductDesc());
  },
  child:Card(
  
  child: Container(
  
    height: 300,
  
    width: 178,
  
    child: Padding(
  
      padding: const EdgeInsets.all(10.0),
  
      child: Column(
  
        children: [
  
          Container(
  
            height: 90,
  
            width: 170,
  
            decoration: BoxDecoration(
  
              color: Colors.grey,
  
              borderRadius: BorderRadius.circular(5)
  
            ),
  
          ),
  
          SizedBox(height: 10,),
  
          Row(
  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
            children: [
  
              Text('Cadilla Zydus'),
  
              Icon(Icons.gavel)
  
            ],
  
          ),
  
          SizedBox(height: 10,),
  
          Row(
  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
            children: [
  
              Text('Brand name',style: TextStyle(         
  
              color: Colors.grey[400], 
  
              fontWeight: FontWeight.w300,                         
  
                ),),
  
              Container(
  
                width: 50,
  
                height: 20,
  
                decoration: BoxDecoration(
  
                  color: Colors.grey[300]
  
                ),
  
              ),
  
            ],
  
          ),
  
          SizedBox(height: 15,),
  
          Row(
  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
            children: [
  
              Text('234 Per box',style: TextStyle(         
  
              fontWeight: FontWeight.w300,                          
  
                ),), 
  
              Text('Offer',style: TextStyle(         
  
              fontWeight: FontWeight.w300, 
  
              color: Colors.green                         
  
                ),), 
  
            ],
  
          ),
  
          SizedBox(height: 17,),
  
          Row(
  
            mainAxisAlignment: MainAxisAlignment.center,
  
            children: [
  
              GestureDetector(
  
                child: Container(
  
                  height: 30,
  
                  width: 90,
  
                  decoration: BoxDecoration(
  
                    color: Colors.orange,
  
                    borderRadius: BorderRadius.circular(8),
  
                  ),
  
                  child: Padding(
  
                    padding: const EdgeInsets.only(left:8.0,top:5),
  
                    child: Text('Add to cart',style: TextStyle(         
  
              fontWeight: FontWeight.w300, 
  
              fontSize: 15,
  
              color: Colors.white                       
  
                ),),
  
                  ),
  
                ),
  
              )
  
            ],
  
          ),
  
            SizedBox(height: 10,),
  
          Row(
  
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
            children: [
  
              Row(
  
                children: [
  
                  Icon(Icons.data_usage,size: 18,),
  
                  Text('02 boxes',style: TextStyle(         
  
              fontWeight: FontWeight.w300, 
  
              fontSize: 15,
  
              color: Colors.grey                       
  
                ),),
  
                ],
  
              ),
  
              Row(
  
                
  
                children: [
  
                  Icon(Icons.shopping_basket,size: 18,),
  
                  Text(' 534',style: TextStyle(         
  
              fontWeight: FontWeight.w300, 
  
              fontSize: 15,
  
              color: Colors.grey                       
  
                ),),
  
                ],
  
              ),
  
            ],
  
          )
  
  
  
        ],
  
      ),
  
    ),
  
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
          child:ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Buy',style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w300
                    ),),
                    Icon(Icons.search,color: Colors.black,)
                  ],
                ),
                SizedBox(height: 18,),
               Row(                
                 children: [
                  _singlemed(),
                  _singlemed(),               
                 ],
               ),
                SizedBox(height: 24,),
                Row(             
                  children: [
                  _medicine(),
                  _medicine(),
                  _medicine(),
                  ],
                ),
               SizedBox(height: 24,),
              Row(
                children: [
                  Text('Brands',style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300
                        ),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  _brands(),
                  _brands(),
                  _brands(),

                ],
              ),
              SizedBox(height: 58,),
              Row(
                children: [
                  Text('Top selling medicines',style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300
                        ),),
                ],
              ),
              Row(
                
                children: [
                  _topsellmed(context),
                  _topsellmed(context),
                ],
                )
        

              ],
        ),
            ],
          ),),
      ),
    );
  }
}