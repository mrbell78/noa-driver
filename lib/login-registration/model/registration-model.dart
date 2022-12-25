class RegistrationResponseData {
  final int? customerId;
  final String? userName;
  final String? firstName;
  final String? middleName;
  final String? lastName;
  final String? email;
  final dynamic email2;
  final String? phoneNo;
  final dynamic phoneNo2;
  final dynamic phoneNo3;
  final int? gender;
  final dynamic dateOfBirth;
  final dynamic points;
  final dynamic pointInValue;
  final dynamic ratings;
  final dynamic totalOrders;
  final dynamic isBlacklisted;
  final dynamic isCorporate;
  final dynamic isNewsletterSub;
  final dynamic isReviewEnable;
  final dynamic isUpdatePassword;
  final dynamic isUpdateAddress;
  final String? password;
  final dynamic accountType;
  final dynamic customerTypeId;
  final dynamic token;
  final dynamic status;
  final String? createdAt;
  final dynamic updatedAt;
  final dynamic isDeleted;
  final int? customerGroupId;
  final dynamic taxorVatNumber;
  final int? totalOrder;
  final dynamic walletBalance;
  final int? totalRecords;
  final dynamic image;
  final CustomerGroupViewModel? customerGroupViewModel;
  final List<dynamic>? customerAddressViewModels;
  final CustomerAddressViewModel? customerAddressViewModel;
  final List<dynamic>? walletTransactionViewModels;
  final dynamic invoiceMasterViewModel;
  final List<dynamic>? invoiceMasterViewModels;
  final dynamic cartResponseModels;
  final String? firstLastName;

  RegistrationResponseData({
    this.customerId,
    this.userName,
    this.firstName,
    this.middleName,
    this.lastName,
    this.email,
    this.email2,
    this.phoneNo,
    this.phoneNo2,
    this.phoneNo3,
    this.gender,
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
    this.password,
    this.accountType,
    this.customerTypeId,
    this.token,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.isDeleted,
    this.customerGroupId,
    this.taxorVatNumber,
    this.totalOrder,
    this.walletBalance,
    this.totalRecords,
    this.image,
    this.customerGroupViewModel,
    this.customerAddressViewModels,
    this.customerAddressViewModel,
    this.walletTransactionViewModels,
    this.invoiceMasterViewModel,
    this.invoiceMasterViewModels,
    this.cartResponseModels,
    this.firstLastName,
  });

  RegistrationResponseData.fromJson(Map<String, dynamic> json)
      : customerId = json['customerId'] as int?,
        userName = json['userName'] as String?,
        firstName = json['firstName'] as String?,
        middleName = json['middleName'] as String?,
        lastName = json['lastName'] as String?,
        email = json['email'] as String?,
        email2 = json['email2'],
        phoneNo = json['phoneNo'] as String?,
        phoneNo2 = json['phoneNo2'],
        phoneNo3 = json['phoneNo3'],
        gender = json['gender'] as int?,
        dateOfBirth = json['dateOfBirth'],
        points = json['points'],
        pointInValue = json['pointInValue'],
        ratings = json['ratings'],
        totalOrders = json['totalOrders'],
        isBlacklisted = json['isBlacklisted'],
        isCorporate = json['isCorporate'],
        isNewsletterSub = json['isNewsletterSub'],
        isReviewEnable = json['isReviewEnable'],
        isUpdatePassword = json['isUpdatePassword'],
        isUpdateAddress = json['isUpdateAddress'],
        password = json['password'] as String?,
        accountType = json['accountType'],
        customerTypeId = json['customerTypeId'],
        token = json['token'],
        status = json['status'],
        createdAt = json['createdAt'] as String?,
        updatedAt = json['updatedAt'],
        isDeleted = json['isDeleted'],
        customerGroupId = json['customerGroupId'] as int?,
        taxorVatNumber = json['taxorVatNumber'],
        totalOrder = json['totalOrder'] as int?,
        walletBalance = json['walletBalance'],
        totalRecords = json['totalRecords'] as int?,
        image = json['image'],
        customerGroupViewModel = (json['customerGroupViewModel'] as Map<String,dynamic>?) != null ? CustomerGroupViewModel.fromJson(json['customerGroupViewModel'] as Map<String,dynamic>) : null,
        customerAddressViewModels = json['customerAddressViewModels'] as List?,
        customerAddressViewModel = (json['customerAddressViewModel'] as Map<String,dynamic>?) != null ? CustomerAddressViewModel.fromJson(json['customerAddressViewModel'] as Map<String,dynamic>) : null,
        walletTransactionViewModels = json['walletTransactionViewModels'] as List?,
        invoiceMasterViewModel = json['invoiceMasterViewModel'],
        invoiceMasterViewModels = json['invoiceMasterViewModels'] as List?,
        cartResponseModels = json['cartResponseModels'],
        firstLastName = json['firstLastName'] as String?;

  Map<String, dynamic> toJson() => {
    'customerId' : customerId,
    'userName' : userName,
    'firstName' : firstName,
    'middleName' : middleName,
    'lastName' : lastName,
    'email' : email,
    'email2' : email2,
    'phoneNo' : phoneNo,
    'phoneNo2' : phoneNo2,
    'phoneNo3' : phoneNo3,
    'gender' : gender,
    'dateOfBirth' : dateOfBirth,
    'points' : points,
    'pointInValue' : pointInValue,
    'ratings' : ratings,
    'totalOrders' : totalOrders,
    'isBlacklisted' : isBlacklisted,
    'isCorporate' : isCorporate,
    'isNewsletterSub' : isNewsletterSub,
    'isReviewEnable' : isReviewEnable,
    'isUpdatePassword' : isUpdatePassword,
    'isUpdateAddress' : isUpdateAddress,
    'password' : password,
    'accountType' : accountType,
    'customerTypeId' : customerTypeId,
    'token' : token,
    'status' : status,
    'createdAt' : createdAt,
    'updatedAt' : updatedAt,
    'isDeleted' : isDeleted,
    'customerGroupId' : customerGroupId,
    'taxorVatNumber' : taxorVatNumber,
    'totalOrder' : totalOrder,
    'walletBalance' : walletBalance,
    'totalRecords' : totalRecords,
    'image' : image,
    'customerGroupViewModel' : customerGroupViewModel?.toJson(),
    'customerAddressViewModels' : customerAddressViewModels,
    'customerAddressViewModel' : customerAddressViewModel?.toJson(),
    'walletTransactionViewModels' : walletTransactionViewModels,
    'invoiceMasterViewModel' : invoiceMasterViewModel,
    'invoiceMasterViewModels' : invoiceMasterViewModels,
    'cartResponseModels' : cartResponseModels,
    'firstLastName' : firstLastName
  };
}

class CustomerGroupViewModel {
  final int? customerGroupId;
  final dynamic groupName;
  final dynamic taxClass;
  final dynamic isDeleted;
  final String? createdAt;
  final dynamic updatedAt;

  CustomerGroupViewModel({
    this.customerGroupId,
    this.groupName,
    this.taxClass,
    this.isDeleted,
    this.createdAt,
    this.updatedAt,
  });

  CustomerGroupViewModel.fromJson(Map<String, dynamic> json)
      : customerGroupId = json['customerGroupId'] as int?,
        groupName = json['groupName'],
        taxClass = json['taxClass'],
        isDeleted = json['isDeleted'],
        createdAt = json['createdAt'] as String?,
        updatedAt = json['updatedAt'];

  Map<String, dynamic> toJson() => {
    'customerGroupId' : customerGroupId,
    'groupName' : groupName,
    'taxClass' : taxClass,
    'isDeleted' : isDeleted,
    'createdAt' : createdAt,
    'updatedAt' : updatedAt
  };
}

class CustomerAddressViewModel {
  final int? customerAddressId;
  final int? customerId;
  final dynamic addressType;
  final int? countryId;
  final int? stateId;
  final int? cityId;
  final dynamic address;
  final dynamic buildingName;
  final dynamic flatNo;
  final dynamic latitude;
  final dynamic longitude;
  final dynamic nearByLocation;
  final dynamic isDefault;
  final dynamic status;
  final String? createdAt;
  final dynamic updatedAt;
  final dynamic countryName;
  final dynamic stateName;
  final dynamic cityName;
  final dynamic addressLine2;
  final dynamic zipCode;
  final dynamic phoneNumber;
  final dynamic customerViewModel;

  CustomerAddressViewModel({
    this.customerAddressId,
    this.customerId,
    this.addressType,
    this.countryId,
    this.stateId,
    this.cityId,
    this.address,
    this.buildingName,
    this.flatNo,
    this.latitude,
    this.longitude,
    this.nearByLocation,
    this.isDefault,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.countryName,
    this.stateName,
    this.cityName,
    this.addressLine2,
    this.zipCode,
    this.phoneNumber,
    this.customerViewModel,
  });

  CustomerAddressViewModel.fromJson(Map<String, dynamic> json)
      : customerAddressId = json['customerAddressId'] as int?,
        customerId = json['customerId'] as int?,
        addressType = json['addressType'],
        countryId = json['countryId'] as int?,
        stateId = json['stateId'] as int?,
        cityId = json['cityId'] as int?,
        address = json['address'],
        buildingName = json['buildingName'],
        flatNo = json['flatNo'],
        latitude = json['latitude'],
        longitude = json['longitude'],
        nearByLocation = json['nearByLocation'],
        isDefault = json['isDefault'],
        status = json['status'],
        createdAt = json['createdAt'] as String?,
        updatedAt = json['updatedAt'],
        countryName = json['countryName'],
        stateName = json['stateName'],
        cityName = json['cityName'],
        addressLine2 = json['addressLine2'],
        zipCode = json['zipCode'],
        phoneNumber = json['phoneNumber'],
        customerViewModel = json['customerViewModel'];

  Map<String, dynamic> toJson() => {
    'customerAddressId' : customerAddressId,
    'customerId' : customerId,
    'addressType' : addressType,
    'countryId' : countryId,
    'stateId' : stateId,
    'cityId' : cityId,
    'address' : address,
    'buildingName' : buildingName,
    'flatNo' : flatNo,
    'latitude' : latitude,
    'longitude' : longitude,
    'nearByLocation' : nearByLocation,
    'isDefault' : isDefault,
    'status' : status,
    'createdAt' : createdAt,
    'updatedAt' : updatedAt,
    'countryName' : countryName,
    'stateName' : stateName,
    'cityName' : cityName,
    'addressLine2' : addressLine2,
    'zipCode' : zipCode,
    'phoneNumber' : phoneNumber,
    'customerViewModel' : customerViewModel
  };
}