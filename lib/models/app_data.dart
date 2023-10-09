class AppData {
  final String appId;
  final String appBundle;
  final String appVersion;
  final String appKey;

  const AppData({
    required this.appId,
    required this.appBundle,
    required this.appVersion,
    required this.appKey,
  });
  AppData.fromJson(Map<String, dynamic> json)
      : appId = json['appId'],
        appBundle = json['appBundle'],
        appVersion = json['appVersion'],
        appKey = json['appKey'];

  Map<String, dynamic> toJson() => {
        'appId': appId,
        'appBundle': appBundle,
        'appVersion': appVersion,
        'appKey': appKey
      };

  AppData copyWith({appId, appBundle, appVersion, appKey}) => AppData(
        appId: appId ?? this.appId,
        appBundle: appBundle ?? this.appBundle,
        appVersion: appVersion ?? this.appVersion,
        appKey: appKey ?? this.appKey,
      );
}
