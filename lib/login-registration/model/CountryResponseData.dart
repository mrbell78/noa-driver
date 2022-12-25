class CountryResponseData {
  final int? countryId;
  final String? iso;
  final String? countryName;
  final String? longCountryName;
  final String? iso3;
  final String? countryCode;
  final String? unMemberState;
  final String? callingCode;
  final String? ccTld;
  final String? guidId;
  final String? image;

  CountryResponseData({
    this.countryId,
    this.iso,
    this.countryName,
    this.longCountryName,
    this.iso3,
    this.countryCode,
    this.unMemberState,
    this.callingCode,
    this.ccTld,
    this.guidId,
    this.image,
  });

  CountryResponseData.fromJson(Map<String, dynamic> json)
      : countryId = json['countryId'] as int?,
        iso = json['iso'] as String?,
        countryName = json['countryName'] as String?,
        longCountryName = json['longCountryName'] as String?,
        iso3 = json['iso3'] as String?,
        countryCode = json['countryCode'] as String?,
        unMemberState = json['unMemberState'] as String?,
        callingCode = json['callingCode'] as String?,
        ccTld = json['ccTld'] as String?,
        guidId = json['guidId'] as String?,
        image = json['image'] as String?;

  Map<String, dynamic> toJson() => {
    'countryId' : countryId,
    'iso' : iso,
    'countryName' : countryName,
    'longCountryName' : longCountryName,
    'iso3' : iso3,
    'countryCode' : countryCode,
    'unMemberState' : unMemberState,
    'callingCode' : callingCode,
    'ccTld' : ccTld,
    'guidId' : guidId,
    'image' : image
  };
}