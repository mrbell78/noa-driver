class BodyRegistrationData {
  final int? customerId;
  final String? userName;
  final String? firstName;
  final String? email;
  final String? phoneNo;
  final String? password;
  final CustomerAddressViewModel? customerAddressViewModel;

  BodyRegistrationData({
    this.customerId,
    this.userName,
    this.firstName,
    this.email,
    this.phoneNo,
    this.password,
    this.customerAddressViewModel,
  });

  BodyRegistrationData.fromJson(Map<String, dynamic> json)
      : customerId = json['customerId'] as int?,
        userName = json['userName'] as String?,
        firstName = json['firstName'] as String?,
        email = json['email'] as String?,
        phoneNo = json['phoneNo'] as String?,
        password = json['password'] as String?,
        customerAddressViewModel = (json['customerAddressViewModel'] as Map<String,dynamic>?) != null ? CustomerAddressViewModel.fromJson(json['customerAddressViewModel'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'customerId' : customerId,
    'userName' : userName,
    'firstName' : firstName,
    'email' : email,
    'phoneNo' : phoneNo,
    'password' : password,
    'customerAddressViewModel' : customerAddressViewModel?.toJson()
  };
}

class CustomerAddressViewModel {
  final int? customerAddressId;
  final int? customerId;
  final String? addressType;
  final int? countryId;
  final int? stateId;
  final int? cityId;
  final String? address;
  final String? buildingName;
  final String? flatNo;
  final int? latitude;
  final int? longitude;
  final String? addressLine2;
  final String? zipCode;
  final String? phoneNumber;

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
    this.addressLine2,
    this.zipCode,
    this.phoneNumber,
  });

  CustomerAddressViewModel.fromJson(Map<String, dynamic> json)
      : customerAddressId = json['customerAddressId'] as int?,
        customerId = json['customerId'] as int?,
        addressType = json['addressType'] as String?,
        countryId = json['countryId'] as int?,
        stateId = json['stateId'] as int?,
        cityId = json['cityId'] as int?,
        address = json['address'] as String?,
        buildingName = json['buildingName'] as String?,
        flatNo = json['flatNo'] as String?,
        latitude = json['latitude'] as int?,
        longitude = json['longitude'] as int?,
        addressLine2 = json['addressLine2'] as String?,
        zipCode = json['zipCode'] as String?,
        phoneNumber = json['phoneNumber'] as String?;

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
    'addressLine2' : addressLine2,
    'zipCode' : zipCode,
    'phoneNumber' : phoneNumber
  };
}