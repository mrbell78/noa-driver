import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:noa_driver/app-colors/app-colors.dart';

import 'package:provider/provider.dart';
import 'login-controller.dart';
import 'model/body-data/registration-body.dart';
import 'model/body-data/registration-body.dart' as addressModel;

class Register extends StatefulWidget{


  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController fullName = TextEditingController();

  TextEditingController mail = TextEditingController();

  TextEditingController mobileNumber = TextEditingController();

  TextEditingController type = TextEditingController();

  TextEditingController homeAddress = TextEditingController();

  TextEditingController country = TextEditingController();

  TextEditingController city = TextEditingController();

  TextEditingController address = TextEditingController();

  TextEditingController address2 = TextEditingController();

  TextEditingController password = TextEditingController();

  bool validateName=false;
  bool validateEmail=false;
  bool validateMobileNumber=false;
  bool validatePassword=false;

  bool isAggrement=false;

  String? selectLocationAppbar;
  String? selectState;
  String? cityList;
  List<String>locationString=["Dubai","Arab Amirat","Abudabi"];

  @override
  void initState() {
    Provider.of<CustommerLoginController>(context, listen: false).getCountry();
    super.initState();
  }
  @override
  void dispose() {
    cityList=null;
    selectState=null;
    selectLocationAppbar=null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
//
    return Consumer<CustommerLoginController>(

      builder: (context,provider,child){
        return Scaffold(
          appBar:AppBar(backgroundColor: AppColors.Blue077C9E,elevation: 0.0,leading: Text(""),),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Stack(
                  children: [
                    Image.asset("assets/images/ic-appbar.png"),
                    Positioned(

                      left: 8,
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: AppColors.defaultblack
                          ),
                          child: Center(child: Image.asset("assets/images/ic-back-noa-white.png")),
                        ),
                      ),
                    ),
                  ],
                ),



                SizedBox(height: 30,),

                Container(

                  margin: EdgeInsets.only(left:20,right: 20 ),
                  padding: EdgeInsets.all(20),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: AppColors.pureWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Text("Welcome",style: TextStyle(color: AppColors.defaultblack,fontSize: 26),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Text("Register To Continue",style: TextStyle(color: AppColors.defaultblack,fontSize: 13),),
                      ),

                      SizedBox(height: 20,),

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          children: [
                            Container(
                                child:Image.asset("assets/images/ic-profile.png")

                            ),
                            SizedBox(width: 8,),

                            Text("Full Name",style: TextStyle(color: AppColors.defaultblack,fontSize: 14),),

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: TextField(
                          controller: fullName,
                          style: TextStyle(color: AppColors.defaultblack,fontSize: 10),
                          decoration: InputDecoration(
                              hintText: "admin",
                              hintStyle: TextStyle(color: AppColors.gray8383,fontSize: 10),
                              contentPadding: EdgeInsets.all(5),
                              errorText: validateName? 'Name Can\'t Be Empty':null
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          children: [
                            Container(
                                child:Image.asset("assets/images/ic-mail.png")

                            ),
                            SizedBox(width: 8,),
                            Text("Email",style: TextStyle(color: AppColors.defaultblack,fontSize: 14),),

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: TextField(
                          controller: mail,
                          style: TextStyle(color: AppColors.defaultblack,fontSize: 10),
                          decoration: InputDecoration(
                              hintText: "admin@gmail.com",
                              hintStyle: TextStyle(color: AppColors.gray8383,fontSize: 10),
                              contentPadding: EdgeInsets.only(top: 20),
                              errorText: validateEmail? 'Mail Can\'t Be Empty':null
                          ),
                        ),
                      ),


                      SizedBox(height: 20,),

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          children: [
                            Container(
                                child:Image.asset("assets/images/ic-phone.png")

                            ),
                            SizedBox(width: 8,),
                            Text("Mobile Number",style: TextStyle(color: AppColors.defaultblack,fontSize: 14),),

                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 20,right: 20),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: mobileNumber,
                                style: TextStyle(color: AppColors.defaultblack,fontSize: 10),
                                decoration: InputDecoration(
                                    hintText: "163265",

                                    hintStyle: TextStyle(color: AppColors.gray8383,fontSize: 10),
                                    contentPadding: EdgeInsets.all(5),
                                    errorText: validateMobileNumber? 'Number Can\'t Be Empty':null
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              border: Border.all(color: AppColors.DeepYelowF37226),
                            ),
                            child: Center(child: Text("Verify Now",style: TextStyle(color: AppColors.DeepYelowF37226,fontSize: 9,fontWeight: FontWeight.w600),)),
                          ),
                        ],
                      ),

                      /* Row(
                      children: [
                        SizedBox(width: 20,),
                        DropdownButton(
                            hint: Text("Dubai",style: TextStyle(color:AppColors.defaultblack,fontSize: 9, ),),
                            value: selectLocationAppbar,
                            underline: SizedBox(),
                            icon: Image.asset("assets/images/ic-dropdown-appbar.png"),
                            onChanged: (newValue){
                              setState(() {
                                selectLocationAppbar=newValue.toString();
                              });
                            },
                            items:locationString.map((e) =>
                                DropdownMenuItem(
                                  value: e,
                                  child:Row(
                                    children: [
                                      Image.asset("assets/images/country-istanbul.png"),
                                      SizedBox(width: 2,),
                                      Text("$e",style: TextStyle(color: AppColors.defaultblack,fontSize:9,),),
                                    ],
                                  ),
                                )).toList()),

                      ],
                    ),*/


                      SizedBox(height: 20,),




                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          children: [

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: Row(
                                    children: [
                                      Container(
                                          child:Image.asset("assets/images/ic-location.png")

                                      ),
                                      SizedBox(width: 8,),
                                      Text("Country",style: TextStyle(color: AppColors.defaultblack,fontSize: 14),),

                                    ],
                                  ),
                                ),

                                Container(
                                  width: 120,
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                    value: selectLocationAppbar,
                                    hint: Text("country",style: TextStyle(color: AppColors.gray8383,fontSize: 10),),
                                    items: provider.country.map((e) => DropdownMenuItem(
                                      child: Text(e,style: TextStyle(color: AppColors.defaultblack,fontSize: 10),),
                                      value: e,
                                    )).toList(),
                                    onChanged: (value){

                                      setState(() {
                                        selectLocationAppbar=value;
                                        provider.getState(provider.getCountryId(selectLocationAppbar!));
                                      });

                                      print("the value is ${selectLocationAppbar}");
                                    },
                                    

                                  ),
                                ),

                              ],
                            ),
                            Spacer(),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: Row(
                                    children: [
                                      Container(
                                          child:Image.asset("assets/images/ic-location.png")

                                      ),
                                      SizedBox(width: 8,),
                                      Text("State",style: TextStyle(color: AppColors.defaultblack,fontSize: 14),),

                                    ],
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                    value: selectState,
                                    hint: Text("State",style:TextStyle(color: AppColors.gray8383,fontSize: 10),),
                                    items: provider.state.map((e) => DropdownMenuItem(
                                      child: Text(e,style: TextStyle(color: AppColors.defaultblack,fontSize: 10),),
                                      value: e,
                                    )).toList(),
                                    onChanged: (value){

                                      setState(() {
                                        selectState=value;
                                        provider.getCity(provider.getStateId(selectState!));
                                      });
                                    },

                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(

                              child: Row(
                                children: [
                                  Container(
                                      child:Image.asset("assets/images/ic-location.png")

                                  ),
                                  SizedBox(width: 8,),
                                  Text("City",style: TextStyle(color: AppColors.defaultblack,fontSize: 14),),

                                ],
                              ),
                            ),
                            Container(
                              width: 120,
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: cityList,
                                hint: Text("City",style:TextStyle(color: AppColors.gray8383,fontSize: 10),),
                                items: provider.city.map((e) => DropdownMenuItem(
                                  child: Text(e,style: TextStyle(color: AppColors.defaultblack,fontSize: 10),),
                                  value: e,
                                )).toList(),
                                onChanged: (value){

                                  setState(() {
                                    cityList=value;
                                  });
                                },


                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          children: [
                            Container(
                                child:Image.asset("assets/images/ic-location.png")

                            ),
                            SizedBox(width: 8,),
                            Text("Address",style: TextStyle(color: AppColors.defaultblack,fontSize: 14),),

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: TextField(
                          controller: address,
                          style: TextStyle(color: AppColors.defaultblack,fontSize: 10),
                          decoration: InputDecoration(
                            hintText: "64/A UAE,DUBAI",

                            hintStyle: TextStyle(color: AppColors.gray8383,fontSize: 10),
                            contentPadding: EdgeInsets.all(5),
                            // errorText: validateName? 'Name Can\'t Be Empty':null
                          ),
                        ),
                      ),



                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          children: [
                            Container(
                                child:Image.asset("assets/images/ic-phone.png")

                            ),
                            SizedBox(width: 8,),
                            Text("Password",style: TextStyle(color: AppColors.defaultblack,fontSize: 14),),

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: TextField(
                          obscureText: true,
                          controller: password,
                          style: TextStyle(color: AppColors.defaultblack,fontSize: 10),
                          decoration: InputDecoration(
                              hintText: "******",

                              hintStyle: TextStyle(color: AppColors.gray8383,fontSize: 10),
                              contentPadding: EdgeInsets.all(5),
                              errorText: validatePassword? 'Password Can\'t Be Empty':null
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),


                      Row(
                        children: [
                          isAggrement==false?
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                if(isAggrement==false){
                                  isAggrement=true;
                                }
                              });
                            },
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                border: Border.all(color: AppColors.grayA0),
                              ),
                            ),
                          ):
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                if(isAggrement==true){
                                  isAggrement=false;
                                }
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(2),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                border: Border.all(color: AppColors.grayA0),

                              ),
                              child: Center(
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                      color: AppColors.primary
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8,),
                          Expanded(
                            child: Text("By signingup you agree to our "
                                "user Agreement, Privacy Policy and Draw Terms & amp, Conditions",style: TextStyle(color: AppColors.grayA0),),
                          ),


                        ],
                      ),

                      SizedBox(height: 20,),

                      InkWell(
                        onTap: (){



                          setState(() {
                            fullName.text.isEmpty? validateName=true:validateName=false;
                            mobileNumber.text.isEmpty? validateMobileNumber=true:validateMobileNumber=false;
                            mail.text.isEmpty? validateEmail=true:validateEmail=false;
                            password.text.isEmpty? validatePassword=true:validatePassword=false;

                          });

                          if(selectLocationAppbar==null){

                            Fluttertoast.showToast(
                                msg: "select country",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );
                          }

                          if(selectState==null){
                            Fluttertoast.showToast(
                                msg: "select state",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );
                          }

                          if(cityList==null){

                            Fluttertoast.showToast(
                                msg: "select city",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );
                          }

                          if(fullName.text.isNotEmpty && mobileNumber.text.isNotEmpty && mail.text.isNotEmpty && password.text.isNotEmpty && selectLocationAppbar!=null && selectState!=null && cityList!=null){


                            addressModel.CustomerAddressViewModel dvt= addressModel.CustomerAddressViewModel(

                              customerAddressId: 0,
                              customerId: 0,
                              addressType: "Home Address",
                              countryId: provider.getCountryId(selectLocationAppbar!),
                              stateId: provider.getStateId(selectState!),
                              cityId: provider.getCityID(cityList!),
                              address: address.text,
                              phoneNumber: mobileNumber.text

                            );

                            var data = BodyRegistrationData(
                                customerId: 0,
                                userName: fullName.text,
                                firstName: fullName.text,
                                email: mail.text,
                                phoneNo: mobileNumber.text,
                                password: password.text,
                                customerAddressViewModel:dvt
                            );
                            provider.postRegistration(data).whenComplete(() {

                              Fluttertoast.showToast(
                                  msg: "Registration Success",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                              );
                              Navigator.pop(context,true);

                            });




                          }else{
                            Fluttertoast.showToast(
                                msg: "mandatory field can't be empty",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                              color: AppColors.Blue077C9E,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          child: Center(child: Text("Register",style: TextStyle(color: AppColors.pureWhite,fontSize: 14,fontWeight: FontWeight.w600),)),
                        ),
                      ),

                      SizedBox(height: 10,),


                      Center(
                        child: Container(
                          child: Text("Already Noa Member ?",style: TextStyle(color: AppColors.defaultblack, fontSize: 12)),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Text("Login",style: TextStyle(color: AppColors.DeepYelowF37226, fontSize: 16,fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),

                      SizedBox(height: 30,),




                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Image.asset("assets/images/ic-footer.png",fit: BoxFit.fill,),




              ],
            ),
          ),
        );
      },
    );
  }
}