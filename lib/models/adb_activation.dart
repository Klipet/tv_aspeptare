class AdbActivation {
  final String pairingCode;
  final String osType;
  final int resolutionWidth;
  final int resolutionHeight;
  final int recommendedResolutionWidth;
  final int recommendedResolutionHeight;
  final int ramMb;
  final int storageMb;
  final int cpuCores;

  AdbActivation({
    required this.pairingCode,
    required this.osType,
    required this.resolutionWidth,
    required this.resolutionHeight,
    required this.recommendedResolutionWidth,
    required this.recommendedResolutionHeight,
    required this.ramMb,
    required this.storageMb,
    required this.cpuCores,
  });

  Map<String, dynamic> toJson() => {
    'pairingCode': pairingCode,
    'osType': osType,
    'resolutionWidth': resolutionWidth,
    'resolutionHeight': resolutionHeight,
    'recommendedResolutionWidth': recommendedResolutionWidth,
    'recommendedResolutionHeight': recommendedResolutionHeight,
    'ramMb': ramMb,
    'storageMb': storageMb,
    'cpuCores': cpuCores,
  };
}

class AdbResponse {
  final int errorCode;
  final String message;
  final AdbRegisterData data;

  AdbResponse({
    required this.errorCode,
    required this.message,
    required this.data,
  });

  factory AdbResponse.fromJson(Map<String, dynamic> json) =>
      AdbResponse(
        errorCode: json['errorCode'],
        message: json['message'],
        data: AdbRegisterData.fromJson(json['data']),
      );
}

class AdbRegisterData {
  final int id;
  final String name;
  final String deviceKey;
  final String pairingCode;
  final int companyId;
  final int tenantId;
  final String tenantName;
  final int deviceGroupId;
  final String deviceGroupName;
  final int playerProfileId;
  final String playerProfileName;
  final String status;
  final String osType;
  final String orientation;
  final int resolutionWidth;
  final int resolutionHeight;
  final String location;
  final String tags;
  final DateTime lastHeartbeat;
  final bool isRegistered;
  final int ramMb;
  final int storageMb;
  final int cpuCores;
  final int recommendedResolutionWidth;
  final int recommendedResolutionHeight;
  final bool hasSettingsPassword;
  final String profileClearedReason;

  AdbRegisterData({
    required this.id,
    required this.name,
    required this.deviceKey,
    required this.pairingCode,
    required this.companyId,
    required this.tenantId,
    required this.tenantName,
    required this.deviceGroupId,
    required this.deviceGroupName,
    required this.playerProfileId,
    required this.playerProfileName,
    required this.status,
    required this.osType,
    required this.orientation,
    required this.resolutionWidth,
    required this.resolutionHeight,
    required this.location,
    required this.tags,
    required this.lastHeartbeat,
    required this.isRegistered,
    required this.ramMb,
    required this.storageMb,
    required this.cpuCores,
    required this.recommendedResolutionWidth,
    required this.recommendedResolutionHeight,
    required this.hasSettingsPassword,
    required this.profileClearedReason,
  });

  factory AdbRegisterData.fromJson(Map<String, dynamic> json) =>
      AdbRegisterData(
        id: json['id'],
        name: json['name'],
        deviceKey: json['deviceKey'],
        pairingCode: json['pairingCode'],
        companyId: json['companyId'],
        tenantId: json['tenantId'],
        tenantName: json['tenantName'],
        deviceGroupId: json['deviceGroupId'],
        deviceGroupName: json['deviceGroupName'],
        playerProfileId: json['playerProfileId'],
        playerProfileName: json['playerProfileName'],
        status: json['status'],
        osType: json['osType'],
        orientation: json['orientation'],
        resolutionWidth: json['resolutionWidth'],
        resolutionHeight: json['resolutionHeight'],
        location: json['location'],
        tags: json['tags'],
        lastHeartbeat: DateTime.parse(json['lastHeartbeat']),
        isRegistered: json['isRegistered'],
        ramMb: json['ramMb'],
        storageMb: json['storageMb'],
        cpuCores: json['cpuCores'],
        recommendedResolutionWidth: json['recommendedResolutionWidth'],
        recommendedResolutionHeight: json['recommendedResolutionHeight'],
        hasSettingsPassword: json['hasSettingsPassword'],
        profileClearedReason: json['profileClearedReason'],
      );
}
