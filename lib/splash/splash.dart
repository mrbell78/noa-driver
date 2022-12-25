import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:noa_driver/app-colors/app-colors.dart';
import 'package:noa_driver/login-registration/login.dart';
import 'package:noa_driver/login-registration/model/custommer-login.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Splash extends StatefulWidget{

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  CustommerLogin? custommerLogin;

  Future<bool> getUserData()async{

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String loginData = (prefs.getString('logininfo') ?? "") ;

    if(loginData!=null && loginData.isNotEmpty){

      print("the data is ${loginData}");

      Map<String,dynamic> mapdata= jsonDecode(loginData);
      custommerLogin  =CustommerLogin.fromJson(mapdata);
      return true;

    }else return false;

  }



  @override
  void initState() {

    getUserData().then((value) {
      if(custommerLogin!=null){
       /* Future.delayed(
            const Duration(seconds: 3),
                () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            ));*/
      }else{
        Future.delayed(
            const Duration(seconds: 3),
                () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            ));
      }

    });



    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.pureWhite,
        child: Stack(
          children: [
            Positioned(
              left:-90,
                top: -90,

                child: Image.asset("assets/images/image-logo icon.png",height: 200,width:200,fit: BoxFit.fill,)),
            Positioned(
              right:-90,
                bottom: -90,

                child: Image.asset("assets/images/ic-logo-colored.png",height: 200,width:200,fit: BoxFit.fill,)),

            Positioned(

                child: Center(child: Image.asset("assets/images/logowithtext.png"))),

            Positioned(
                bottom: -40.0,
                child: Image.asset("assets/images/lori.png")),

          ],
        ),
      ),
    );
  }
}
