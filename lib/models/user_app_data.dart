class UserAppData {
  final String? appFirstStartTime;
  final String? appId;
  final String? appBundle;
  final String? appVersion;
  final String? userId;
  final String? gaid;
  final String? oaid;
  final String? idfa;
  final String? locale;
  final String? osName;
  final String? deviceModel;
  final bool? isAppInitiated;
  final String? fcmToken;
  final String? hmsToken;

  const UserAppData({
    this.appFirstStartTime,
    this.appId,
    this.appBundle,
    this.appVersion,
    this.userId,
    this.gaid,
    this.oaid,
    this.idfa,
    this.locale,
    this.osName,
    this.deviceModel,
    this.isAppInitiated,
    this.fcmToken,
    this.hmsToken,
  });
  UserAppData.fromJson(Map<String, dynamic> json)
      : appFirstStartTime = json['appFirstStartTime'],
        appId = json['appId'],
        appBundle = json['appBundle'],
        appVersion = json['appVersion'],
        userId = json['userId'],
        gaid = json['gaid'],
        oaid = json["oaid"],
        idfa = json["idfa"],
        locale = json['locale'],
        osName = json['osName'],
        deviceModel = json['deviceModel'],
        isAppInitiated = json['isAppInitiated'],
        fcmToken = json['fcmToken'],
        hmsToken = json['hmsToken'];

  Map<String, dynamic> toJson() => {
        'appFirstStartTime': appFirstStartTime,
        'appId': appId,
        'appBundle': appBundle,
        'appVersion': appVersion,
        'userId': userId,
        'gaid': gaid,
        'oaid': oaid,
        'idfa': idfa,
        'locale': locale,
        'osName': osName,
        'deviceModel': deviceModel,
        'isAppInitiated': isAppInitiated,
        'fcmToken': fcmToken,
        'hmsToken': hmsToken,
      };

  UserAppData copyWith(
          {appFirstStartTime,
          appId,
          appBundle,
          appVersion,
          userId,
          gaid,
          oaid,
          idfa,
          locale,
          osName,
          deviceModel,
          isAppInitiated,
          fcmToken,
          hmsToken}) =>
      UserAppData(
        appFirstStartTime: appFirstStartTime ?? this.appFirstStartTime,
        appId: appId ?? this.appId,
        appBundle: appBundle ?? this.appBundle,
        appVersion: appVersion ?? this.appVersion,
        userId: userId ?? this.userId,
        gaid: gaid ?? this.gaid,
        oaid: oaid ?? this.oaid,
        idfa: idfa ?? this.idfa,
        locale: locale ?? this.locale,
        osName: osName ?? this.osName,
        deviceModel: deviceModel ?? this.deviceModel,
        isAppInitiated: this.isAppInitiated,
        fcmToken: fcmToken ?? this.fcmToken,
        hmsToken: hmsToken ?? this.hmsToken,
      );
}
