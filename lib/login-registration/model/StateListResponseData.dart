class StateList {
  final int? stateId;
  final int? countryId;
  final String? stateName;
  final String? guidId;

  StateList({
    this.stateId,
    this.countryId,
    this.stateName,
    this.guidId,
  });

  StateList.fromJson(Map<String, dynamic> json)
      : stateId = json['stateId'] as int?,
        countryId = json['countryId'] as int?,
        stateName = json['stateName'] as String?,
        guidId = json['guidId'] as String?;

  Map<String, dynamic> toJson() => {
    'stateId' : stateId,
    'countryId' : countryId,
    'stateName' : stateName,
    'guidId' : guidId
  };
}