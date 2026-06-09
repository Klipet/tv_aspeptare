class ContentItem {
  final int contentId;
  final String type;
  final String src;
  final int durationSec;
  final DateTime updatedAt;

  ContentItem({
    required this.contentId,
    required this.type,
    required this.src,
    required this.durationSec,
    required this.updatedAt,
  });

  factory ContentItem.fromJson(Map<String, dynamic> json) => ContentItem(
    contentId: json['contentId'],
    type: json['type'],
    src: json['src'],
    durationSec: json['durationSec'],
    updatedAt: DateTime.parse(json['updatedAt']),
  );
}

// ── Binding Item ─────────────────────────────────────────────────────────────

class BindingItem {
  final String type;
  final int x, y, w, h;
  final String name;
  final bool loop;
  final int priority;
  final DateTime validFrom;
  final DateTime validTo;
  final String timeFrom;
  final String timeTo;
  final int daysOfWeek;
  final ContentItem fallback;
  final List<ContentItem> items;

  BindingItem({
    required this.type,
    required this.x,
    required this.y,
    required this.w,
    required this.h,
    required this.name,
    required this.loop,
    required this.priority,
    required this.validFrom,
    required this.validTo,
    required this.timeFrom,
    required this.timeTo,
    required this.daysOfWeek,
    required this.fallback,
    required this.items,
  });

  factory BindingItem.fromJson(Map<String, dynamic> json) => BindingItem(
    type: json['type'],
    x: json['x'],
    y: json['y'],
    w: json['w'],
    h: json['h'],
    name: json['name'],
    loop: json['loop'],
    priority: json['priority'],
    validFrom: DateTime.parse(json['validFrom']),
    validTo: DateTime.parse(json['validTo']),
    timeFrom: json['timeFrom'],
    timeTo: json['timeTo'],
    daysOfWeek: json['daysOfWeek'],
    fallback: ContentItem.fromJson(json['fallback']),
    items: (json['items'] as List).map((e) => ContentItem.fromJson(e)).toList(),
  );
}

// ── Zone ─────────────────────────────────────────────────────────────────────

class Zone {
  final String id;
  final String widget;

  Zone({required this.id, required this.widget});

  factory Zone.fromJson(Map<String, dynamic> json) => Zone(
    id: json['id'],
    widget: json['widget'],
  );
}

// ── Layout ───────────────────────────────────────────────────────────────────

class Layout {
  final String id;
  final String name;
  final String orientation;
  final int width;
  final int height;
  final List<Zone> zones;

  Layout({
    required this.id,
    required this.name,
    required this.orientation,
    required this.width,
    required this.height,
    required this.zones,
  });

  factory Layout.fromJson(Map<String, dynamic> json) => Layout(
    id: json['id'],
    name: json['name'],
    orientation: json['orientation'],
    width: json['width'],
    height: json['height'],
    zones: (json['zones'] as List).map((e) => Zone.fromJson(e)).toList(),
  );
}

// ── Assignment ───────────────────────────────────────────────────────────────

class Assignment {
  final int assignmentId;
  final String name;
  final Layout layout;
  // ключ — zoneId, значение — список BindingItem
  final Map<String, List<BindingItem>> bindings;

  Assignment({
    required this.assignmentId,
    required this.name,
    required this.layout,
    required this.bindings,
  });

  factory Assignment.fromJson(Map<String, dynamic> json) => Assignment(
    assignmentId: json['assignmentId'],
    name: json['name'],
    layout: Layout.fromJson(json['layout']),
    bindings: (json['bindings'] as Map<String, dynamic>).map(
          (key, value) => MapEntry(
        key,
        (value as List).map((e) => BindingItem.fromJson(e)).toList(),
      ),
    ),
  );
}

// ── Player Profile ───────────────────────────────────────────────────────────

class PlayerProfile {
  final String name;
  final String playerFamily;
  final bool autoStart;
  final int volume;
  final int screenRotation;
  final int cacheSizeMb;
  final int screenshotIntervalSec;
  final String updateRing;

  PlayerProfile({
    required this.name,
    required this.playerFamily,
    required this.autoStart,
    required this.volume,
    required this.screenRotation,
    required this.cacheSizeMb,
    required this.screenshotIntervalSec,
    required this.updateRing,
  });

  factory PlayerProfile.fromJson(Map<String, dynamic> json) => PlayerProfile(
    name: json['name'],
    playerFamily: json['playerFamily'],
    autoStart: json['autoStart'],
    volume: json['volume'],
    screenRotation: json['screenRotation'],
    cacheSizeMb: json['cacheSizeMb'],
    screenshotIntervalSec: json['screenshotIntervalSec'],
    updateRing: json['updateRing'],
  );
}

// ── Device Data ──────────────────────────────────────────────────────────────

class DeviceData {
  final String deviceKey;
  final String deviceName;
  final String orientation;
  final PlayerProfile playerProfile;
  final List<Assignment> assignments;

  DeviceData({
    required this.deviceKey,
    required this.deviceName,
    required this.orientation,
    required this.playerProfile,
    required this.assignments,
  });

  factory DeviceData.fromJson(Map<String, dynamic> json) => DeviceData(
    deviceKey: json['deviceKey'],
    deviceName: json['deviceName'],
    orientation: json['orientation'],
    playerProfile: PlayerProfile.fromJson(json['playerProfile']),
    assignments: (json['assignments'] as List).map((e) => Assignment.fromJson(e)).toList(),
  );
}

// ── Root Response ────────────────────────────────────────────────────────────

class DeviceResponse {
  final int errorCode;
  final String message;
  final DeviceData data;

  DeviceResponse({
    required this.errorCode,
    required this.message,
    required this.data,
  });

  factory DeviceResponse.fromJson(Map<String, dynamic> json) => DeviceResponse(
    errorCode: json['errorCode'],
    message: json['message'],
    data: DeviceData.fromJson(json['data']),
  );
}