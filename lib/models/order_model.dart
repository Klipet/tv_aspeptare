class Order {
  final DateTime dateCreated;
  final DateTime? dateStarted;
  final DateTime? deliveryPlannedDate;
  final int deliveryType;
  final List<Line>? lines;
  final int number;
  final int state;
  final String uid;

  Order({
    required this.dateCreated,
    this.dateStarted,
    this.deliveryPlannedDate,
    required this.deliveryType,
    required this.lines,
    required this.number,
    required this.state,
    required this.uid,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      dateCreated: DateTime.fromMillisecondsSinceEpoch(int.parse(json['DateCreated'].substring(6, json['DateCreated'].length - 7))),
      deliveryPlannedDate: json['DateStarted'] != null ? DateTime.fromMillisecondsSinceEpoch(int.parse(json['DateStarted'].replaceAll(RegExp(r'[^0-9]'), ''))) : null,
      deliveryType: json['DeliveryType'],
      number: json['Number'],
      state: json['State'],
      uid: json['Uid'],
      lines: json['Lines'] ?? []
    );
  }
}

class Line{
  final String? assortimentName;
  final String? comment;
  final double? count;
  final DateTime? dateCreated;
  final DateTime? dateStarted;
  final int? deliveryType;
  final String? departmentTypeName;
  final int? minutesLeft;
  final int? number;
  final int? preparationRate;
  final int? state;
  final String? uid;

  Line({
    this.assortimentName,
    this.comment,
    this.count,
    this.dateCreated,
    this.dateStarted,
    this.deliveryType,
    this.departmentTypeName,
    this.minutesLeft,
    this.number,
    this.preparationRate,
    this.state,
    this.uid,
  });
  factory Line.fromJson(Map<String, dynamic> json) {
    return Line(
      assortimentName: json['AssortimentName'] ?? '',
      comment: json['Comment'] ?? '',
      count: json['Count'] ?? 0.0,
      dateCreated: _parseDate(json['DateCreated']),
      dateStarted: _parseDate(json['DateStarted']),
      deliveryType: json['DeliveryType'] ?? 0,
      departmentTypeName: json['DepartmentTypeName'] ?? '',
      minutesLeft: json['MinutesLeft']?? 0,
      number: json['Number'] ?? 0,
      preparationRate: json['PreparationRate'] ?? 0,
      state: json['State'] ?? 0,
      uid: json['Uid'] ?? '',
    );
  }

  static DateTime? _parseDate(dynamic json) {
    if (json == null) return DateTime.now();

    final match = RegExp(r'\/Date\((\d+)([+-]\d{4})?\)\/').firstMatch(json.toString());
    if (match != null) {
      final timestamp = int.parse(match.group(1)!);
      return DateTime.fromMillisecondsSinceEpoch(timestamp);
    }

    return DateTime.now();
  }
}