// To parse this JSON data, do
//
//     final custommerLogin = custommerLoginFromJson(jsonString);

import 'dart:convert';

CustommerLogin custommerLoginFromJson(String str) => CustommerLogin.fromJson(json.decode(str));

String custommerLoginToJson(CustommerLogin data) => json.encode(data.toJson());

class CustommerLogin {
  CustommerLogin({
    required this.customerId,
    required this.userName,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.email,
    required this.email2,
    required this.phoneNo,
    required  this.phoneNo2,
    required this.phoneNo3,
    required this.gender,
    this.dateOfBirth,
    this.points,
    this.pointInValue,
    this.ratings,
    this.totalOrders,
    this.isBlacklisted,
    this.isCorporate,
    this.isNewsletterSub,
    this.isReviewEnable,
    this.isUpdatePassword,
    this.isUpdateAddress,
    required  this.password,
    required this.accountType,
    this.customerTypeId,
    required  this.token,
    required this.status,
     this.createdAt,

    this.isDeleted,
    required this.customerGroupId,
    required  this.taxorVatNumber,
    required  this.totalOrder,
    this.walletBalance,
    required this.totalRecords,
    required  this.customerGroupViewModel,
    required  this.customerAddressViewModels,
    required  this.customerAddressViewModel,
    required   this.walletTransactionViewModels,
    this.invoiceMasterViewModel,
    required  this.invoiceMasterViewModels,
    this.cartResponseModels,
    required  this.firstLastName,
  });

  int customerId;
  String userName;
  String firstName;
  String middleName;
  String lastName;
  String email;
  String email2;
  String phoneNo;
  String phoneNo2;
  String phoneNo3;
  int gender;
  dynamic dateOfBirth;
  dynamic points;
  dynamic pointInValue;
  dynamic ratings;
  dynamic totalOrders;
  dynamic isBlacklisted;
  dynamic isCorporate;
  dynamic isNewsletterSub;
  dynamic isReviewEnable;
  dynamic isUpdatePassword;
  dynamic isUpdateAddress;
  String password;
  String accountType;
  dynamic customerTypeId;
  String token;
  String status;
  DateTime? createdAt;

  dynamic isDeleted;
  int customerGroupId;
  String taxorVatNumber;
  int totalOrder;
  dynamic walletBalance;
  int totalRecords;
  CustomerGroupViewModel customerGroupViewModel;
  List<dynamic> customerAddressViewModels;
  CustomerAddressViewModel customerAddressViewModel;
  List<dynamic> walletTransactionViewModels;
  dynamic invoiceMasterViewModel;
  List<dynamic> invoiceMasterViewModels;
  dynamic cartResponseModels;
  String firstLastName;

  factory CustommerLogin.fromJson(Map<String, dynamic> json) => CustommerLogin(
    customerId: json["customerId"],
    userName: json["userName"],
    firstName: json["firstName"],
    middleName: json["middleName"],
    lastName: json["lastName"],
    email: json["email"],
    email2: json["email2"],
    phoneNo: json["phoneNo"],
    phoneNo2: json["phoneNo2"],
    phoneNo3: json["phoneNo3"],
    gender: json["gender"],
    dateOfBirth: json["dateOfBirth"],
    points: json["points"],
    pointInValue: json["pointInValue"],
    ratings: json["ratings"],
    totalOrders: json["totalOrders"],
    isBlacklisted: json["isBlacklisted"],
    isCorporate: json["isCorporate"],
    isNewsletterSub: json["isNewsletterSub"],
    isReviewEnable: json["isReviewEnable"],
    isUpdatePassword: json["isUpdatePassword"],
    isUpdateAddress: json["isUpdateAddress"],
    password: json["password"],
    accountType: json["accountType"],
    customerTypeId: json["customerTypeId"],
    token: json["token"],
    status: json["status"],
    createdAt: DateTime.parse(json["createdAt"]!=null?json["createdAt"]:"2021-12-19T04:39:08")!=null?DateTime.parse(json["createdAt"]):DateTime.now(),

    isDeleted: json["isDeleted"],
    customerGroupId: json["customerGroupId"],
    taxorVatNumber: json["taxorVatNumber"],
    totalOrder: json["totalOrder"],
    walletBalance: json["walletBalance"],
    totalRecords: json["totalRecords"],
    customerGroupViewModel: CustomerGroupViewModel.fromJson(json["customerGroupViewModel"]),
    customerAddressViewModels: List<dynamic>.from(json["customerAddressViewModels"].map((x) => x)),
    customerAddressViewModel: CustomerAddressViewModel.fromJson(json["customerAddressViewModel"]),
    walletTransactionViewModels: List<dynamic>.from(json["walletTransactionViewModels"].map((x) => x)),
    invoiceMasterViewModel: json["invoiceMasterViewModel"],
    invoiceMasterViewModels: List<dynamic>.from(json["invoiceMasterViewModels"].map((x) => x)),
    cartResponseModels: json["cartResponseModels"],
    firstLastName: json["firstLastName"],
  );

  Map<String, dynamic> toJson() => {
    "customerId": customerId,
    "userName": userName,
    "firstName": firstName,
    "middleName": middleName,
    "lastName": lastName,
    "email": email,
    "email2": email2,
    "phoneNo": phoneNo,
    "phoneNo2": phoneNo2,
    "phoneNo3": phoneNo3,
    "gender": gender,
    "dateOfBirth": dateOfBirth,
    "points": points,
    "pointInValue": pointInValue,
    "ratings": ratings,
    "totalOrders": totalOrders,
    "isBlacklisted": isBlacklisted,
    "isCorporate": isCorporate,
    "isNewsletterSub": isNewsletterSub,
    "isReviewEnable": isReviewEnable,
    "isUpdatePassword": isUpdatePassword,
    "isUpdateAddress": isUpdateAddress,
    "password": password,
    "accountType": accountType,
    "customerTypeId": customerTypeId,
    "token": token,
    "status": status,
    "createdAt": createdAt!.toIso8601String(),

    "isDeleted": isDeleted,
    "customerGroupId": customerGroupId,
    "taxorVatNumber": taxorVatNumber,
    "totalOrder": totalOrder,
    "walletBalance": walletBalance,
    "totalRecords": totalRecords,
    "customerGroupViewModel": customerGroupViewModel.toJson(),
    "customerAddressViewModels": List<dynamic>.from(customerAddressViewModels.map((x) => x)),
    "customerAddressViewModel": customerAddressViewModel.toJson(),
    "walletTransactionViewModels": List<dynamic>.from(walletTransactionViewModels.map((x) => x)),
    "invoiceMasterViewModel": invoiceMasterViewModel,
    "invoiceMasterViewModels": List<dynamic>.from(invoiceMasterViewModels.map((x) => x)),
    "cartResponseModels": cartResponseModels,
    "firstLastName": firstLastName,
  };
}

class CustomerAddressViewModel {
  CustomerAddressViewModel({
    required  this.customerAddressId,
    required this.customerId,
    this.addressType,
    required  this.countryId,
    required  this.stateId,
    required  this.cityId,
    this.address,
    this.buildingName,
    this.flatNo,
    this.latitude,
    this.longitude,
    this.nearByLocation,
    this.isDefault,
    this.status,
    required this.createdAt,
    this.updatedAt,
    this.countryName,
    this.stateName,
    this.cityName,
    this.addressLine2,
    this.zipCode,
    this.phoneNumber,
    this.customerViewModel,
  });

  int customerAddressId;
  int customerId;
  dynamic addressType;
  int countryId;
  int stateId;
  int cityId;
  dynamic address;
  dynamic buildingName;
  dynamic flatNo;
  dynamic latitude;
  dynamic longitude;
  dynamic nearByLocation;
  dynamic isDefault;
  dynamic status;
  DateTime createdAt;
  dynamic updatedAt;
  dynamic countryName;
  dynamic stateName;
  dynamic cityName;
  dynamic addressLine2;
  dynamic zipCode;
  dynamic phoneNumber;
  dynamic customerViewModel;

  factory CustomerAddressViewModel.fromJson(Map<String, dynamic> json) => CustomerAddressViewModel(
    customerAddressId: json["customerAddressId"],
    customerId: json["customerId"],
    addressType: json["addressType"],
    countryId: json["countryId"],
    stateId: json["stateId"],
    cityId: json["cityId"],
    address: json["address"],
    buildingName: json["buildingName"],
    flatNo: json["flatNo"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    nearByLocation: json["nearByLocation"],
    isDefault: json["isDefault"],
    status: json["status"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"],
    countryName: json["countryName"],
    stateName: json["stateName"],
    cityName: json["cityName"],
    addressLine2: json["addressLine2"],
    zipCode: json["zipCode"],
    phoneNumber: json["phoneNumber"],
    customerViewModel: json["customerViewModel"],
  );

  Map<String, dynamic> toJson() => {
    "customerAddressId": customerAddressId,
    "customerId": customerId,
    "addressType": addressType,
    "countryId": countryId,
    "stateId": stateId,
    "cityId": cityId,
    "address": address,
    "buildingName": buildingName,
    "flatNo": flatNo,
    "latitude": latitude,
    "longitude": longitude,
    "nearByLocation": nearByLocation,
    "isDefault": isDefault,
    "status": status,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt,
    "countryName": countryName,
    "stateName": stateName,
    "cityName": cityName,
    "addressLine2": addressLine2,
    "zipCode": zipCode,
    "phoneNumber": phoneNumber,
    "customerViewModel": customerViewModel,
  };
}

class CustomerGroupViewModel {
  CustomerGroupViewModel({
    required this.customerGroupId,
    required  this.groupName,
    this.taxClass,
    this.isDeleted,
    required  this.createdAt,
    this.updatedAt,
  });

  int customerGroupId;
  String groupName;
  dynamic taxClass;
  dynamic isDeleted;
  DateTime createdAt;
  dynamic updatedAt;

  factory CustomerGroupViewModel.fromJson(Map<String, dynamic> json) => CustomerGroupViewModel(
    customerGroupId: json["customerGroupId"],
    groupName: json["groupName"],
    taxClass: json["taxClass"],
    isDeleted: json["isDeleted"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"],
  );

  Map<String, dynamic> toJson() => {
    "customerGroupId": customerGroupId,
    "groupName": groupName,
    "taxClass": taxClass,
    "isDeleted": isDeleted,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt,
  };
}
