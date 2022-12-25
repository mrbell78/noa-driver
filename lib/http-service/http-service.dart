import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';


import 'api_response.dart';



class HttpService {
  //late Dio _dio;
  var _dio;

  Dio _getDio() {
    if (_dio == null) {
      _dio = new Dio();

      _dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {

            options.headers = {
              "Content-Type": "application/json",
              //"Authorization": "Bearer  $token",
            };

            return handler.next(options); //continue
          },
          onResponse: (Response response, ResponseInterceptorHandler handler) async {
            return handler.next(response); // continue
          },
          onError: (DioError e, ErrorInterceptorHandler handler) async {
            return handler.next(e); //continue
          },
        ),
      );
      _dio.interceptors.add(LogInterceptor(responseBody: true));
    }

    return _dio;
  }

  Future<ApiResponse<Response>> getRequest(String route, {Map<String, String>? qp}) async {

    try {
      Response response = await _getDio().get(
        route,
        queryParameters: qp,
      );
      print("$route | $qp : $response");
      if (response.statusCode == 200) {
        return ApiResponse(httpCode: int.parse(response.statusCode.toString()), data: response, message: '');
      } else {
        return ApiResponse(
            httpCode: int.parse(response.statusCode.toString()), message: "Connection error. ${response.statusCode}", data:response.data);
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        print(e.response!.data);
        print(e.response!.statusCode);
        return ApiResponse(httpCode: int.parse(e.response!.statusCode.toString()), message: "${e.response!.statusMessage}", data: e.response!.data);
      } else {
        print(e.message);
        return ApiResponse(httpCode: -1, message: "Connection error. ${e.message}", data:e.response!.data);
      }
    }
  }



  Future<ApiResponse<Response>> postRequest(String route, {Map<String, dynamic>? data, String? jsonData, bool isFormData = false, Function(int sent, int total)? onProgress,}) async {
      _getDio().options.headers= {"Content-Type":"multipart/form-data","accept":"*/*",};

    try {

//
      String jsondata = jsonEncode(data);
      print("the body data is ------------${jsondata}");

      Response response = await _getDio().post(
        route,
        data: isFormData ? FormData.fromMap(data!) : (jsonData ?? jsonEncode(data)),
        onSendProgress: (int sent, int total) {
          print("onSendProgress $total $sent");
          if (onProgress != null) onProgress(sent, total);
        },
      );
      print("$route : $response");

      if (response.statusCode == 200) {
        return ApiResponse(httpCode: int.parse(response.statusCode.toString()), data: response, message: '');
      } else {
        return ApiResponse(
            httpCode:int.parse( response.statusCode.toString()), message: "Connection error. ${response.statusCode}", data: response.data);
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        print(e.response!.data);
        print(e.response!.statusCode);
        return ApiResponse(httpCode: int.parse(e.response!.statusCode.toString()), message: "${e.response!.statusMessage}", data: e.response!.data);
      } else {
        print(e.message);
        return ApiResponse(httpCode: -1, message: "Connection error. ${e.message}", data: e.response!.data);
      }
    }
  }

  Future<ApiResponse<Response>> postRequesturlencoded(String route, {FormData? data, String? jsonData, bool isurlEncoded = false, Function(int sent, int total)? onProgress,}) async {
    try {

      _getDio().options.contentType=Headers.formUrlEncodedContentType;
      /* _getDio().options.headers= {"Content-Type":"application/json","Authorization":"Token ${ApiConst.WORKSPACETOKEN_LIVE}"};*/

      Response response = await _getDio().post(
        route,
        data: data,
        options: Options(contentType: Headers.formUrlEncodedContentType),
        onSendProgress: (int sent, int total) {
          print("onSendProgress $total $sent");
          if (onProgress != null) onProgress(sent, total);
        },
      );
      print("$route : $response");

      if (response.statusCode == 200) {
        return ApiResponse(httpCode: int.parse(response.statusCode.toString()), data: response, message: '');
      } else {
        return ApiResponse(
            httpCode:int.parse( response.statusCode.toString()), message: "Connection error. ${response.statusCode}", data: response);
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        print(e.response!.data);
        print(e.response!.statusCode);
        return ApiResponse(httpCode: int.parse(e.response!.statusCode.toString()), message: "${e.response!.statusMessage}", data: e.response!.data);
      } else {
        print(e.message);
        return ApiResponse(httpCode: -1, message: "Connection error. ${e.message}", data: e.response!.data);
      }
    }
  }
  Future<ApiResponse<Response>> puttRequest(String route, {required Map<String, dynamic> data}) async {
    try {
      Response response = await _getDio().put(
        route,
        data: jsonEncode(data),
      );
      print("$route : $response");

      if (response.statusCode == 200) {
        return ApiResponse(httpCode: int.parse(response.statusCode.toString()), data: response, message: '');
      } else {
        return ApiResponse(
            httpCode: int.parse(response.statusCode.toString()), message: "Connection error. ${response.statusCode}", data: response.data);
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        print(e.response!.data);
        print(e.response!.statusCode);
        return ApiResponse(httpCode: int.parse(e.response!.statusCode.toString()), message: "${e.response!.statusMessage}", data: e.response!.data);
      } else {
        print(e.message);
        return ApiResponse(httpCode: -1, message: "Connection error. ${e.message}", data: e.response!.data);
      }
    }
  }

  Future<ApiResponse<Response>> deleteRequest(String route, {required Map<String, dynamic> data}) async {
    try {
      Response response = await _getDio().delete(
        route,
        queryParameters: data
      );
      print("$route : $response");

      if (response.statusCode == 200) {
        return ApiResponse(httpCode: int.parse(response.statusCode.toString()), data: response, message: '');
      } else {
        return ApiResponse(
            httpCode: int.parse(response.statusCode.toString()), message: "Connection error. ${response.statusCode}", data: response.data);
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        print(e.response!.data);
        print(e.response!.statusCode);
        return ApiResponse(httpCode: int.parse(e.response!.statusCode.toString()), message: "${e.response!.statusMessage}", data: e.response!.data);
      } else {
        print(e.message);
        return ApiResponse(httpCode: -1, message: "Connection error. ${e.message}", data: e.response!.data);
      }
    }
  }

  Future<ApiResponse<Response>> uploadImage(String route, FormData formData) async {
    /*  _getDio().options.headers= {"Content-Type":"application/json","Authorization":"Token ${ApiConst.WORKSPACETOKEN_LIVE}"};*/
    try {
      Response response = await _getDio().post(
        route,
        data: formData,
      );
      print("$route : $response");

      if (response.statusCode == 200) {
        return ApiResponse(httpCode: int.parse(response.statusCode.toString()), data: response, message: '');
      } else {
        return ApiResponse(
            httpCode:int.parse( response.statusCode.toString()), message: "Connection error. ${response.statusCode}", data: response.data);
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        print(e.response!.data);
        print(e.response!.statusCode);
        return ApiResponse(httpCode: int.parse(e.response!.statusCode.toString()), message: "${e.response!.statusMessage}", data: e.response!.data);
      } else {
        print(e.message);
        return ApiResponse(httpCode: -1, message: "Connection error. ${e.message}", data: e.response!.data);
      }
    }
  }

}