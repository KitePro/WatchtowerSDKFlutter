class DeviceInfo {
  final String? deviceModel;
  final String? osName;
  final String? locale;

  const DeviceInfo({this.deviceModel, this.osName, this.locale});
  DeviceInfo.fromJson(Map<String, dynamic> json)
      : deviceModel = json['deviceModel'],
        osName = json['osName'],
        locale = json['locale'];

  Map<String, dynamic> toJson() =>
      {'deviceModel': deviceModel, 'osName': osName, 'locale': locale};

  DeviceInfo copyWith({deviceModel, osName, locale}) => DeviceInfo(
        deviceModel: deviceModel ?? this.deviceModel,
        osName: osName ?? this.osName,
        locale: locale ?? this.locale,
      );
}
