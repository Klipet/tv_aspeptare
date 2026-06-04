class LogRequest {
  final String? source;
  final String? action;
  final String? message;
  final String? details;
  final String? hostName;
  final String? ip;
  final String? domain;
  final int? type;
  final String? entity;
  final String? appVersion;
  final DateTime? date;
  final String? os;
  final String? ram;
  final String? hdd;
  final int? companyID;
  final String? company;
  final String? licenseID;

  LogRequest({
    this.source,
    this.action,
    this.message,
    this.details,
    this.hostName,
    this.ip,
    this.domain,
    this.type,
    this.entity,
    this.appVersion,
    this.date,
    this.os,
    this.ram,
    this.hdd,
    this.companyID,
    this.company,
    this.licenseID,
  });

  factory LogRequest.fromJson(Map<String, dynamic> json) {
    return LogRequest(
      source: json['source'],
      action: json['action'],
      message: json['message'],
      details: json['details'],
      hostName: json['hostName'],
      ip: json['ip'],
      domain: json['domain'],
      type: json['type'],
      entity: json['entity'],
      appVersion: json['appVersion'],
      date: json['date'] != null ? DateTime.parse(json['date']) : null,
      os: json['os'],
      ram: json['ram'],
      hdd: json['hdd'],
      companyID: json['companyID'],
      company: json['company'],
      licenseID: json['licenseID'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'action': action,
      'message': message,
      'details': details,
      'hostName': hostName,
      'ip': ip,
      'domain': domain,
      'type': type,
      'entity': entity,
      'appVersion': appVersion,
      'date': date?.toIso8601String(),
      'os': os,
      'ram': ram,
      'hdd': hdd,
      'companyID': companyID,
      'company': company,
      'licenseID': licenseID,
    };
  }
}