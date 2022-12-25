
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:noa_driver/locator/locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login-repository.dart';
import 'model/CountryResponseData.dart';
import 'model/StateListResponseData.dart';
import 'model/city-list.dart';
import 'model/custommer-login.dart';
import 'model/registration-model.dart';

class CustommerLoginController extends ChangeNotifier{

  var _login_repo = locator<LoginRepository>();

  CustommerLogin ?custommerLogin;

  RegistrationResponseData? registrationResponseData;

  List<String> country=[];
  List<String> state=[];
  List<String> city=[];

  List<CountryResponseData?>countryList=[];
  List<StateList?>stateList=[];
  List<CityListResponseData?>cityList=[];

  Future<bool>  postLogin(String userName,String password,bool isRemember)async{
    var apiresponse = await _login_repo.userLogin(userName,password,isRemember);
    if(apiresponse.httpCode==200){
      custommerLogin=apiresponse.data;

      return true;
    }else return false;
  }


  Future<bool>  postRegistration(data)async{
    var apiresponse = await _login_repo.postRegistration(data);
    if(apiresponse.httpCode==200){
      registrationResponseData=apiresponse.data;
      return true;
    }else return false;
  }

  Future<bool> getUserData()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String loginData = (prefs.getString('logininfo') ?? "") ;

    if(loginData!=null && loginData.isNotEmpty){

      print("the data is ${loginData}");

      Map<String,dynamic> mapdata= jsonDecode(loginData);
      custommerLogin  =CustommerLogin.fromJson(mapdata);
      notifyListeners();
      return true;

    }else return false;

  }



  getCountry()async{

    var apiresponse = await _login_repo.getCountry();

    if(apiresponse.httpCode==200){
      countryList.clear();
      countryList.addAll(apiresponse.data);

      countryList.forEach((element) {

        country.add(element!.countryName.toString());

      });
      print("the number of country ${countryList.length}");
    }


    notifyListeners();
  }

  getState(int countryId)async{

    var apiresponse = await _login_repo.getState(countryId);

    if(apiresponse.httpCode==200){
      stateList.clear();
      stateList.addAll(apiresponse.data);
      stateList.forEach((element) {
        state.add(element!.stateName.toString());
      });
      print("the number of country ${countryList.length}");
    }


    notifyListeners();
  }

  getCity(int stateId)async{

    var apiresponse = await _login_repo.getCity(stateId);

    if(apiresponse.httpCode==200){
      cityList.clear();
      cityList.addAll(apiresponse.data);
      cityList.forEach((element) {
        city.add(element!.cityName.toString());
      });
      print("the number of country ${countryList.length}");
    }


    notifyListeners();
  }


  int getCountryId(String name){

    int countryId=0;
    countryList.forEach((element) {

      if(element!.countryName.toString()==name){
        countryId=element.countryId!;
      }

    });

    return countryId;
  }

 int getStateId(String stateName){
    int stateId=0;

    stateList.forEach((element) {

      if(element!.stateName==stateName){

        stateId=element.stateId!;
      }

    });

    return stateId;
  }

  int getCityID(String cityName){
    int cityID=0;

    cityList.forEach((element) {

      if(element!.cityName==cityName){

        cityID=element.stateId!;
      }

    });

    return cityID;
  }

}