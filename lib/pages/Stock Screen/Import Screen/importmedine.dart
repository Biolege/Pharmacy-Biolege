import 'package:flutter/material.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/Import%20Screen/alertdialog.dart';


class ImportMedicine extends StatelessWidget {



Widget _singlemeds(context){
  return GestureDetector(
               onTap: (){
                 showDialog(context: context, builder : (context) => 
               ADialog(
               
                ),);
               },
               child:Card(
                 child: Padding(
                   padding: const EdgeInsets.all(9.0),
                   child: Column(
                     children: [
                       Row(
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
                          Text('₹ 65',style:TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 19,
                                  
                                ))
                        ],
                      ),
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
        child: Container(
          margin: EdgeInsets.all(19),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
              children: [
                Text('Import medicine',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
                ),),
              ],
            ),
            SizedBox(height: 15,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Search for medicine',
                suffixIcon:Icon(Icons.search) ,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(29)
                ),
              ),
            ),
             SizedBox(height: 15,),
             Row(
               children: [
                 Text('Importing',style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
                ),),
               ],
             ),
             SizedBox(height: 10,),
             _singlemeds(context),
             _singlemeds(context),
             SizedBox(height: 249,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('Enter receipt',style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400
                ),),
               ],
             ),
             SizedBox(height: 25,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                         height: 40,
                        width: 150,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(29)),
                        color: Colors.orange,),

                        child: GestureDetector(  
                                     
                        onTap: (){
                          
                           
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('Update stock',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                              ),
                              
                              
                            ],
                            
                          ),
                        ),
                            ),
                    ),
               ],
             ),
            ],
          ),
        ),
      ),
      
    );
  }
}