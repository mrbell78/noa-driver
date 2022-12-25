import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:noa_driver/app-colors/app-colors.dart';

class OrderDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:  AppBar(
       backgroundColor: AppColors.pureWhite,
       leading:InkWell(
         onTap: (){
           Navigator.pop(context);
         },
         child: Container(
           margin: EdgeInsets.all(12),
           height: 15,
           width:15,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(10)),
               color: AppColors.Blue077C9E
           ),
           child: Center(child: Image.asset("assets/images/ic-back-noa-white.png",height: 15,width: 15,)),
         ),
       ),
       title: Image.asset("assets/images/ic-noa-colored.png"),
       centerTitle: true,
     ),
     body: Stack(
       children: [

         Positioned.fill(
           child: Container(
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   SizedBox(height: 20,),
                   Container(
                     margin: EdgeInsets.only(left: 20,right: 20),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                       color: AppColors.pureWhite,
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 7,
                           blurRadius: 5,
                           offset: Offset(0, 1), // changes position of shadow
                         ),
                       ],


                     ),
                     child:  Column(
                       children: [
                         Container(

                           padding: EdgeInsets.all(10),
                           height: 130,
                           width: double.infinity,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(10),
                                 topRight: Radius.circular(10)
                             ),
                             color: AppColors.Blue077C9E,
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.grey.withOpacity(0.5),
                                 spreadRadius: 1,
                                 blurRadius: 2,
                                 offset: Offset(0, 1), // changes position of shadow
                               ),
                             ],
                           ),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Column(
                                     children: [
                                       Container(
                                         height: 48,
                                         width: 48,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.all(Radius.circular(100)),
                                             color: AppColors.Blue077C9E.withOpacity(0.3),
                                             border: Border.all(color: AppColors.DeepYelowF37226,width: 2)
                                         ),
                                         child: Center(child: Text("#1",style: TextStyle(color: AppColors.pureWhite,fontSize: 15,fontWeight: FontWeight.w600),)),
                                       ),
                                       SizedBox(height: 15,),
                                       Container(
                                           width: 50,
                                           child: Text("Online Payment",style: TextStyle(color: AppColors.pureWhite,fontSize: 10,fontWeight: FontWeight.w600),)),
                                     ],
                                   ),
                                   SizedBox(width: 10,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("Asif Rahaman",style: TextStyle(color: AppColors.pureWhite,fontSize: 15,fontWeight: FontWeight.w600),),
                                       SizedBox(height: 5,),
                                       Container(
                                           width: 150,
                                           child: Text("G3, New City Build, Ground Floor,Jumera Lake Lower, Dubai",style: TextStyle(color: AppColors.pureWhite,fontSize: 10,),)),
                                       SizedBox(height: 25,),
                                       Row(
                                         children: [
                                           Container(

                                               child: Text("Order Number",style: TextStyle(color: AppColors.pureWhite,fontSize: 11,),)),
                                           SizedBox(width: 2,),
                                           Container(

                                               child: Text("#351512414",style: TextStyle(color: AppColors.pureWhite,fontSize: 11,fontWeight: FontWeight.bold),)),
                                         ],
                                       ),
                                     ],
                                   ),
                                   Spacer(),

                                   Column(
                                     children: [
                                       Text("Total",style: TextStyle(color: AppColors.pureWhite,fontSize: 12,),),
                                       SizedBox(height: 10,),
                                       RichText(text: TextSpan(
                                           children: [
                                             TextSpan(text: "AED ",style: TextStyle(color: AppColors.pureWhite,fontSize: 10,),),
                                             TextSpan(text: "250 ",style: TextStyle(color: AppColors.pureWhite,fontSize: 18,fontWeight: FontWeight.bold),),

                                           ]
                                       )),
                                       SizedBox(height: 10,),
                                       Text("Active",style: TextStyle(color: AppColors.DeepYelowF37226,fontSize: 14,fontWeight: FontWeight.bold),),
                                     ],
                                   ),
                                   SizedBox(width: 10,)
                                 ],
                               ),
                               SizedBox(height: 15,),


                             ],
                           ),
                         ),
                         SizedBox(height: 20,),
                         Row(
                           children: [
                             SizedBox(width: 20,),

                             Text("Item Details",style: TextStyle(color: AppColors.Blue077C9E,fontSize: 19,fontWeight: FontWeight.bold),),

                           ],
                         ),

                         Container(
                           height: 300,
                           margin: EdgeInsets.only(left: 10,right: 10),
                           padding: EdgeInsets.only(top: 10,bottom: 10),
                           child: ListView.builder(
                               shrinkWrap: true,
                               physics: BouncingScrollPhysics(),
                               itemCount: 15,
                               itemBuilder: (ctx,i){
                                 return Column(
                                   children: [

                                     Container(
                                       child: Row(
                                         children: [
                                           Container(

                                             child: ClipRRect(
                                               borderRadius: BorderRadius.all(Radius.circular(8)),
                                               child: CachedNetworkImage(
                                                 imageUrl: "",
                                                 height: 50,
                                                 width: 70,
                                                 errorWidget: (ctx,uarl,error)=>ClipRRect(
                                                     borderRadius: BorderRadius.all(Radius.circular(8)),
                                                     child: Image.asset("assets/images/golden-apple.png",fit: BoxFit.cover,width: 70,height: 50,)),
                                               ),
                                             ),
                                           ),
                                           SizedBox(width: 10,),

                                           Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Container(
                                                   width:170,
                                                   child: Text("Golden Apples",style: TextStyle(color: AppColors.defaultblack,fontSize: 13),overflow: TextOverflow.ellipsis,)),
                                               SizedBox(height: 8,),
                                               Row(
                                                 children: [
                                                   Container(
                                                       height:15,
                                                       width:15,

                                                       decoration:BoxDecoration(
                                                           borderRadius: BorderRadius.all(Radius.circular(5)),
                                                           color: AppColors.LightRedFAF2EE,
                                                           border: Border.all(color:AppColors.DeepYelowF37226 )
                                                       ),
                                                       child: Center(child: Text("2",style: TextStyle(color: AppColors.DeepYelowF37226,fontSize:10),))),
                                                   SizedBox(width: 10,),
                                                   Text("2 Kg  (8/Kg)",style: TextStyle(color: AppColors.gray8383,fontSize:9),overflow: TextOverflow.ellipsis,)
                                                 ],
                                               ),



                                             ],
                                           ),

                                           Spacer(),
                                           Row(
                                             children: [
                                               Container(

                                                   child: Text("AED",style: TextStyle(color: AppColors.defaultblack,fontSize: 8),)),
                                               SizedBox(width: 5,),
                                               Container(

                                                   child: Text("100",style: TextStyle(color: AppColors.Blue077C9E,fontSize: 14,fontWeight: FontWeight.bold),)),
                                             ],
                                           ),

                                         ],
                                       ),
                                     ),

                                     Container(

                                         child: Divider(color: AppColors.grayDBDBDB,thickness:2,)),
                                   ],
                                 );
                               }

                           ),
                         ),
                         SizedBox(height: 15,),

                         Container(
                           padding: EdgeInsets.all(5),
                           margin: EdgeInsets.only(left: 10,right: 10),
                           child: Column(
                             children: [
                               Row(
                                 children: [


                                   Text("Sub total",style: TextStyle(color: AppColors.defaultblack,fontSize: 12,),),
                                   SizedBox(width: 4,),
                                   Text("(Including VAT )",style: TextStyle(color: AppColors.gray8383,fontSize: 8,),),
                                   Spacer(),
                                   Text("AED",style: TextStyle(color: AppColors.defaultblack,fontSize: 8,),),
                                   SizedBox(width: 4,),
                                   Text("200",style: TextStyle(color: AppColors.defaultblack,fontSize: 15,fontWeight: FontWeight.bold),),
                                 ],
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 children: [


                                   Text("Delivery charge",style: TextStyle(color: AppColors.defaultblack,fontSize: 12,),),

                                   Spacer(),
                                   Text("AED",style: TextStyle(color: AppColors.defaultblack,fontSize: 8,),),
                                   SizedBox(width: 4,),
                                   Text("10",style: TextStyle(color: AppColors.defaultblack,fontSize: 15,fontWeight: FontWeight.bold),),
                                 ],
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 children: [


                                   Text("Discount",style: TextStyle(color: AppColors.defaultblack,fontSize: 13,fontWeight: FontWeight.w600),),

                                   Spacer(),
                                   Text("- AED",style: TextStyle(color: AppColors.defaultblack,fontSize: 8,),),
                                   SizedBox(width: 4,),
                                   Text("10",style: TextStyle(color: AppColors.defaultblack,fontSize: 15,fontWeight: FontWeight.bold),),
                                 ],
                               ),
                               SizedBox(height: 15,),
                               Container(
                                 height: 45,
                                 padding: EdgeInsets.all(8),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.all(Radius.circular(5)),
                                   color: AppColors.pureWhite,
                                   boxShadow: [
                                     BoxShadow(
                                       color: Colors.grey.withOpacity(0.5),
                                       spreadRadius: 1,
                                       blurRadius: 1,
                                       offset: Offset(0, 2), // changes position of shadow
                                     ),
                                   ],
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     SizedBox(width: 10,),

                                     Text("Total Payable Amount",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,fontWeight: FontWeight.w600),),

                                     Spacer(),
                                     Text("AED",style: TextStyle(color: AppColors.defaultblack,fontSize: 8,),),
                                     SizedBox(width: 4,),
                                     Text("200",style: TextStyle(color: AppColors.Blue077C9E,fontSize: 22,fontWeight: FontWeight.bold),),
                                     SizedBox(width: 10,)
                                   ],
                                 ),
                               ),
                             ],
                           ),
                         ),
                         SizedBox(height: 10,),
                       ],
                     ),
                   ),
                   SizedBox(height: 20,),

                   Container(
                     margin: EdgeInsets.only(left: 20,right: 20),
                     padding: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                       color: AppColors.pureWhite,
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 7,
                           blurRadius: 5,
                           offset: Offset(0, 1), // changes position of shadow
                         ),
                       ],

                     ),

                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text("Order Details",style: TextStyle(color: AppColors.Blue077C9E,fontSize: 19,fontWeight: FontWeight.bold),),
                           ],
                         ),
                         SizedBox(height: 20,),
                         Text("Order Number",style: TextStyle(color: AppColors.pureBlack,fontSize: 10,),),
                         SizedBox(height: 5,),
                         Text("#351512414",style: TextStyle(color: AppColors.pureBlack,fontSize: 14,fontWeight: FontWeight.w600),),


                         SizedBox(height: 15,),
                         Text("Payment",style: TextStyle(color: AppColors.pureBlack,fontSize: 10,),),
                         SizedBox(height: 5,),
                         Text("Online Payment",style: TextStyle(color: AppColors.pureBlack,fontSize: 14,fontWeight: FontWeight.w600),),


                         SizedBox(height: 15,),
                         Text("Date",style: TextStyle(color: AppColors.pureBlack,fontSize: 10,),),
                         SizedBox(height: 5,),
                         Text("03 November, 2021 at 03:15PM",style: TextStyle(color: AppColors.pureBlack,fontSize: 14,fontWeight: FontWeight.w600),),

                         SizedBox(height: 15,),
                         Text("Mobile Number",style: TextStyle(color: AppColors.pureBlack,fontSize: 10,),),
                         SizedBox(height: 5,),
                         Text("0545439XXX",style: TextStyle(color: AppColors.pureBlack,fontSize: 14,fontWeight: FontWeight.w600),),

                         SizedBox(height: 15,),

                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Mobile Number",style: TextStyle(color: AppColors.pureBlack,fontSize: 10,),),
                                 SizedBox(height: 5,),
                                 Text("0545439XXX",style: TextStyle(color: AppColors.pureBlack,fontSize: 14,fontWeight: FontWeight.w600),),
                                 SizedBox(height: 5,),
                                 Container(
                                     width: 130,
                                     child: Text("G3, New City Build, Ground Floor,Jumera Lake Lower, Dubai",style: TextStyle(color: AppColors.gray8383,fontSize: 9,),)),
                               ],
                             ),
                             Spacer(),
                             Container(
                               height: 35,
                               width: 35,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(100)),
                                 color: AppColors.pureWhite,
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.grey.withOpacity(0.5),
                                     spreadRadius: 3,
                                     blurRadius: 2,
                                     offset: Offset(0, 1), // changes position of shadow
                                   ),
                                 ],

                               ),
                               child: Center(child: Image.asset("assets/images/google-maps.png")),
                             ),
                             SizedBox(width: 10,)
                           ],
                         ),

                       ],
                     ),
                   ),
                   SizedBox(height: 20,),
                 ],
               ),
             ),
           ),
         ),
         Positioned(
           bottom: 0,
           child: Container(
             width: double.infinity,
             height: 80,
             decoration: BoxDecoration(
                 color: AppColors.pureWhite
             ),
             child: Row(
               children: [
                 SizedBox(width: 20,),
                 Expanded(
                   child: Container(
                     height: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(100)),
                       border: Border.all(color: AppColors.green00AF17),
                       color: AppColors.pureWhite,
                     ),
                     child: Center(child: Text("Active",style: TextStyle(color: AppColors.green00AF17,fontSize: 15,fontWeight: FontWeight.w600),)),
                   ),
                 ),
                 SizedBox(width: 15,),


                 Expanded(
                   child: Container(
                     height: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(100)),
                       border: Border.all(color: AppColors.Blue077C9E),
                       color: AppColors.pureWhite,
                     ),
                     child: Center(child: Text("Complete",style: TextStyle(color: AppColors.Blue077C9E,fontSize: 15,fontWeight: FontWeight.w600),)),
                   ),
                 ),
                 Image.asset("assets/images/ic-call.png",height: 50,width: 50,),
                 SizedBox(width: 20,),
               ],
             ),
           ),
         ),
       ],
     )
   );
  }

}