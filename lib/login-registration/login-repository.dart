import 'dart:convert';


import 'package:noa_driver/http-service/api_response.dart';
import 'package:noa_driver/http-service/http-service.dart';
import 'package:noa_driver/locator/locator.dart';
import 'package:noa_driver/utils/api-constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/CountryResponseData.dart';
import 'model/StateListResponseData.dart';
import 'model/body-data/registration-body.dart';
import 'model/city-list.dart';
import 'model/custommer-login.dart';
import 'model/registration-model.dart';

class LoginRepository{

  var _httpService = locator<HttpService>();

  Future<ApiResponse<CustommerLogin?>> userLogin(String userName, String password,bool isRember) async {

    var apiResponse = await _httpService.postRequest(ApiConstant.SERVER+ApiConstant.LOGIN,
        data: {
          "userName":userName,
          "password":password,
          "isRemimber":isRember
        }
    );

    if(apiResponse.httpCode==200){
      SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setString('logininfo', jsonEncode(apiResponse.data.data)).then((value) {
        print("login info saved");
      });


    }
    return ApiResponse(
        httpCode: apiResponse.httpCode,
        message: apiResponse.message,
        data:CustommerLogin.fromJson(apiResponse.data.data)
    );

  }


  Future<ApiResponse<dynamic>> postRegistration(BodyRegistrationData data) async {

    var apiResponse = await _httpService.postRequest(ApiConstant.SERVER+ApiConstant.REGISTRATION_POST,
        data: data.toJson()
    );

    return ApiResponse(
        httpCode: apiResponse.httpCode,
        message: apiResponse.message,
        data: apiResponse.data.data
    );

  }

  Future<ApiResponse<List<CountryResponseData?>>> getCountry() async {

    var apiResponse = await _httpService.getRequest(ApiConstant.SERVER+ApiConstant.COUNTRY,);


    List<CountryResponseData?> list = List.empty(growable: true);

    if (apiResponse.httpCode == 200 &&
        apiResponse.data.data is List) {
      (apiResponse.data.data as List).forEach(
            (element) {
          list.add(
            CountryResponseData.fromJson(element),
          );
        },
      );
    }

    return ApiResponse(
        httpCode: apiResponse.httpCode,
        message: apiResponse.message,
        data:list
    );

  }


  Future<ApiResponse<List<StateList?>>> getState(int countryID) async {

    var apiResponse = await _httpService.getRequest(ApiConstant.SERVER+ApiConstant.STATE+"/${countryID}",);


    List<StateList?> list = List.empty(growable: true);

    if (apiResponse.httpCode == 200 &&
        apiResponse.data.data is List) {
      (apiResponse.data.data as List).forEach(
            (element) {
          list.add(
            StateList.fromJson(element),
          );
        },
      );
    }

    return ApiResponse(
        httpCode: apiResponse.httpCode,
        message: apiResponse.message,
        data:list
    );

  }

  Future<ApiResponse<List<CityListResponseData?>>> getCity(int stateId) async {

    var apiResponse = await _httpService.getRequest(ApiConstant.SERVER+ApiConstant.CITY+"/%202002",);


    List<CityListResponseData?> list = List.empty(growable: true);

    if (apiResponse.httpCode == 200 &&
        apiResponse.data.data is List) {
      (apiResponse.data.data as List).forEach(
            (element) {
          list.add(
            CityListResponseData.fromJson(element),
          );
        },
      );
    }

    return ApiResponse(
        httpCode: apiResponse.httpCode,
        message: apiResponse.message,
        data:list
    );

  }


}