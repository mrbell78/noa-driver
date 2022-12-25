class CityListResponseData {
  final int? cityId;
  final int? stateId;
  final String? cityName;
  final String? guidId;

  CityListResponseData({
    this.cityId,
    this.stateId,
    this.cityName,
    this.guidId,
  });

  CityListResponseData.fromJson(Map<String, dynamic> json)
      : cityId = json['cityId'] as int?,
        stateId = json['stateId'] as int?,
        cityName = json['cityName'] as String?,
        guidId = json['guidId'] as String?;

  Map<String, dynamic> toJson() => {
    'cityId' : cityId,
    'stateId' : stateId,
    'cityName' : cityName,
    'guidId' : guidId
  };
}