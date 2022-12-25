import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:noa_driver/app-colors/app-colors.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isCurrent=true;
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
      body:Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,

                child: ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(

                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)
                        ),
                        color: AppColors.Blue077C9E,
                      ),
                      child: Row(

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            height: 80,
                            width: 113,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                color: AppColors.pureWhite
                            ),
                            child: Center(child: CachedNetworkImage(
                              imageUrl: '',
                              width: 65,
                              height: 65,
                              errorWidget: (ctx,url,error)=>Image.asset("assets/images/image-near-item.png"),
                            )),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Kibson",style: TextStyle(color: AppColors.pureWhite,fontSize: 22,fontWeight: FontWeight.w600),),
                              SizedBox(height: 5,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/ic-noa-location.png"),
                                  SizedBox(width: 5,),
                                  Text("2 KM",style: TextStyle(color: AppColors.pureWhite,fontSize: 12),),
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(

                children: [
                  SizedBox(width: 20,),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isCurrent=true;
                        });
                      },
                      child: Container(

                        height: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: isCurrent?AppColors.Blue077C9E:AppColors.BlueE7F8FD,
                            border: Border.all(color:isCurrent?Colors.transparent:AppColors.Blue077C9E)
                        ),
                        child: Center(child: Text("Current order",style: TextStyle(color:isCurrent? AppColors.pureWhite:AppColors.Blue077C9E,fontSize: 9,fontWeight: FontWeight.w500),)),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isCurrent=false;
                        });
                      },
                      child: Container(

                        height: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color:isCurrent? AppColors.BlueE7F8FD:AppColors.Blue077C9E,
                            border:Border.all(color: isCurrent?AppColors.Blue077C9E:Colors.transparent)
                        ),
                        child: Center(child: Text("Previous order",style: TextStyle(color:isCurrent?AppColors.Blue077C9E:AppColors.pureWhite,fontSize: 9,fontWeight: FontWeight.w500),)),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                ],
              ),
              SizedBox(height: 25,),

              isCurrent? Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount:10,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (ctx,index){
                      return InkWell(
                        onTap: (){


                          // NavUtils.push(context, MyOrderDetails(provider.myorderList[index]!.invoiceDetailsViewModels,provider.myorderList[index]!.invoiceViewModels![0],"","", provider.myorderList[index]!.totalAmount!,provider.myorderList[index]!.invoiceViewModels![0].status!));
                        },
                        child: Column(
                          children: [
                            SizedBox(height: 10,),

                            Container(
                              margin: EdgeInsets.only(left: 20,right: 20),
                              padding: EdgeInsets.all(10),
                              height: 190,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: AppColors.pureWhite,
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
                                                border: Border.all(color: AppColors.Blue077C9E,width: 2)
                                            ),
                                            child: Center(child: Text("#1",style: TextStyle(color: AppColors.Blue077C9E,fontSize: 15,fontWeight: FontWeight.w600),)),
                                          ),
                                          SizedBox(height: 15,),
                                          Container(
                                              width: 50,
                                              child: Text("Online Payment",style: TextStyle(color: AppColors.Blue077C9E,fontSize: 10,fontWeight: FontWeight.w600),)),
                                        ],
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Asif Rahaman",style: TextStyle(color: AppColors.defaultblack,fontSize: 15,fontWeight: FontWeight.w600),),
                                          SizedBox(height: 5,),
                                          Container(
                                              width: 150,
                                              child: Text("G3, New City Build, Ground Floor,Jumera Lake Lower, Dubai",style: TextStyle(color: AppColors.gray8383,fontSize: 10,),)),
                                          SizedBox(height: 25,),
                                          Row(
                                            children: [
                                              Container(

                                                  child: Text("Order Number",style: TextStyle(color: AppColors.gray8383,fontSize: 11,),)),
                                              SizedBox(width: 2,),
                                              Container(

                                                  child: Text("#351512414",style: TextStyle(color: AppColors.gray8383,fontSize: 11,fontWeight: FontWeight.bold),)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(width:20,),

                                      Column(
                                        children: [
                                          SizedBox(height: 75,),
                                          Text("Active",style: TextStyle(color: AppColors.green00AF17,fontSize: 14,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      SizedBox(width: 10,),

                                      Column(
                                        children: [
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
                                          SizedBox(height: 10,),
                                          Text("2Km",style: TextStyle(color: AppColors.pureBlack,fontSize: 10,fontWeight: FontWeight.bold),),
                                          SizedBox(height: 10,),
                                          Text("5 Mins",style: TextStyle(color: AppColors.pureBlack,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      SizedBox(width: 10,)
                                    ],
                                  ),
                                  SizedBox(height: 15,),

                                  Divider(color: AppColors.grayDBDBDB,thickness: 1,),
                                  SizedBox(height: 10,),
//
                                  Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text("25 minago",style: TextStyle(color: AppColors.gray8383,fontSize: 10,fontWeight: FontWeight.w600),),
                                      SizedBox(width: 7,),

                                      RichText(text: TextSpan(
                                          children: [
                                            TextSpan(text: "Total Price: ",style:TextStyle(color: AppColors.defaultblack,fontSize: 14,fontWeight: FontWeight.w600),),
                                            TextSpan(text: "AED ",style:TextStyle(color: AppColors.defaultblack,fontSize: 10,),),
                                            TextSpan(text: "130 ",style:TextStyle(color: AppColors.Blue077C9E,fontSize: 22,fontWeight: FontWeight.bold),),
                                          ]
                                      )),
                                      SizedBox(width:7,),
                                      Image.asset("assets/images/ic-call.png"),
                                      SizedBox(width:7,),

                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(3),

                                          height: 30,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(50)),
                                              color: AppColors.Blue077C9E.withOpacity(0.4),
                                              border: Border.all(color: AppColors.Blue077C9E,width: 1)
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("View Items",style: TextStyle(color: AppColors.Blue077C9E,fontSize: 10,fontWeight: FontWeight.w600),overflow: TextOverflow.ellipsis,),
                                              SizedBox(width: 5,),
                                              Image.asset("assets/images/ic-arrow-blue.png")
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                    ],
                                  ),
                                ],
                              ),
                            ),



                            SizedBox(height: 10,),
                          ],
                        ),
                      );
                    }),
              ):



              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    //itemCount: provider.previousOrderedItemslist.length>0?provider.previousOrderedItemslist.length:0,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (ctx,index){
                      return InkWell(
                        onTap: (){


                          // NavUtils.push(context, MyOrderDetails(provider.myorderList[index]!.invoiceDetailsViewModels,provider.myorderList[index]!.invoiceViewModels![0],"","", provider.myorderList[index]!.totalAmount!,provider.myorderList[index]!.invoiceViewModels![0].status!));
                        },
                        child: Column(
                          children: [
                            SizedBox(height: 10,),

                            Container(
                              margin: EdgeInsets.only(left: 20,right: 20),
                              padding: EdgeInsets.all(10),
                              height: 190,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: AppColors.pureWhite,
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
                                                border: Border.all(color: AppColors.Blue077C9E,width: 2)
                                            ),
                                            child: Center(child: Image.asset("assets/images/ic-ok-blue.png")),
                                          ),
                                          SizedBox(height: 15,),
                                          Container(
                                              width: 50,
                                              child: Text("Online Payment",style: TextStyle(color: AppColors.Blue077C9E,fontSize: 10,fontWeight: FontWeight.w600),)),
                                        ],
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Asif Rahaman",style: TextStyle(color: AppColors.defaultblack,fontSize: 15,fontWeight: FontWeight.w600),),
                                          SizedBox(height: 5,),
                                          Container(
                                              width: 150,
                                              child: Text("G3, New City Build, Ground Floor,Jumera Lake Lower, Dubai",style: TextStyle(color: AppColors.gray8383,fontSize: 10,),)),
                                          SizedBox(height: 25,),
                                          Row(
                                            children: [
                                              Container(

                                                  child: Text("Order Number",style: TextStyle(color: AppColors.gray8383,fontSize: 11,),)),
                                              SizedBox(width: 2,),
                                              Container(

                                                  child: Text("#351512414",style: TextStyle(color: AppColors.gray8383,fontSize: 11,fontWeight: FontWeight.bold),)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacer(),



                                      Column(
                                        children: [
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
                                          SizedBox(height: 10,),
                                          Text("Completed",style: TextStyle(color: AppColors.DeepYelowF37226,fontSize: 12,fontWeight: FontWeight.w600),),

                                        ],
                                      ),
                                      SizedBox(width: 10,)
                                    ],
                                  ),
                                  SizedBox(height: 15,),

                                  Divider(color: AppColors.grayDBDBDB,thickness: 1,),
                                  SizedBox(height: 10,),

                                  Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text("25 minago",style: TextStyle(color: AppColors.gray8383,fontSize: 10,fontWeight: FontWeight.w600),),
                                      SizedBox(width: 7,),

                                      RichText(text: TextSpan(
                                          children: [
                                            TextSpan(text: "Total Price: ",style:TextStyle(color: AppColors.defaultblack,fontSize: 14,fontWeight: FontWeight.w600),),
                                            TextSpan(text: "AED ",style:TextStyle(color: AppColors.defaultblack,fontSize: 10,),),
                                            TextSpan(text: "130 ",style:TextStyle(color: AppColors.Blue077C9E,fontSize: 22,fontWeight: FontWeight.bold),),
                                          ]
                                      )),
                                      SizedBox(width:7,),
                                      Image.asset("assets/images/ic-call.png"),
                                      SizedBox(width:7,),

                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(3),

                                          height: 30,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(50)),
                                              color: AppColors.Blue077C9E.withOpacity(0.4),
                                              border: Border.all(color: AppColors.Blue077C9E,width: 1)
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("View Items",style: TextStyle(color: AppColors.Blue077C9E,fontSize: 10,fontWeight: FontWeight.w600),overflow: TextOverflow.ellipsis,),
                                              SizedBox(width: 5,),
                                              Image.asset("assets/images/ic-arrow-blue.png")
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                    ],
                                  ),
                                ],
                              ),
                            ),



                            SizedBox(height: 10,),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
          Positioned(
            bottom: -0.5,
            left: 0.0,
            right: 0.0,
            child: Stack(
              overflow: Overflow.visible,


              children: [
                Image.asset("assets/images/footernew.png",width: 1000,),
                Container(
                  margin: EdgeInsets.only(top:30),
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      Image.asset("assets/images/ic-noa-home.png"),
                      SizedBox(width: 25,),
                      GestureDetector(
                          onTap: (){
                            // if(provider.custommerLogin!=null){
                            //   NavUtils.push(context, MyOrders(provider.custommerLogin!.customerId));
                            // }else{
                            //   Fluttertoast.showToast(
                            //       msg: "You are not loged in",
                            //       toastLength: Toast.LENGTH_SHORT,
                            //       gravity: ToastGravity.CENTER,
                            //       timeInSecForIosWeb: 1,
                            //       backgroundColor: Colors.red,
                            //       textColor: Colors.white,
                            //       fontSize: 16.0
                            //   );
                            //   NavUtils.push(context, Login());
                            // }
                          },
                          child: Image.asset("assets/images/ic-noa-package.png")),
                      Spacer(),
                      GestureDetector(
                          onTap: (){

                            // if(provider.custommerLogin!=null){
                            //   NavUtils.push(context, MyProfile(provider.custommerLogin!.customerId));
                            // }else{
                            //   Fluttertoast.showToast(
                            //       msg: "You are not loged in",
                            //       toastLength: Toast.LENGTH_SHORT,
                            //       gravity: ToastGravity.CENTER,
                            //       timeInSecForIosWeb: 1,
                            //       backgroundColor: Colors.red,
                            //       textColor: Colors.white,
                            //       fontSize: 16.0
                            //   );
                            //   NavUtils.push(context, Login());
                            // }
                          },
                          child: Image.asset("assets/images/ic-noa-profile.png")),
                      SizedBox(width: 25,),
                      Image.asset("assets/images/ic-noa-notification.png"),
                      SizedBox(width:25,),
                    ],
                  ),
                ),
                Positioned(
                    top: -40,
                    left: 150,
                    right: 150,
                    child: Center(child: Image.asset("assets/images/ic-noa-center-location.png")))
              ],
            ),

          )

        ],
      ),
    );
  }
}