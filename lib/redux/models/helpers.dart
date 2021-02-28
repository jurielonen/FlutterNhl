import 'package:FlutterNhl/constants/styles.dart';
import 'package:intl/intl.dart';

///TODO Testing for functions
dynamic getJsonDynamic(String key, Map<String, dynamic> json) {
  if (json != null) {
    if (json.containsKey(key)) {
      return json[key];
    }
  }
  return null;
}

DateTime getJsonDateTime(String key, Map<String, dynamic> json) {
  try {
    if (json != null) {
      if (json.containsKey(key)) {
        if (json[key] is String) {
          return DateTime.parse(json[key]);
        }
      }
    }
    return DateTime(1990);
  } on FormatException catch (error) {
    return DateTime(1990);
  }
}

bool getJsonBoolean(String key, Map<String, dynamic> json) {
  if (json != null) {
    if (json.containsKey(key)) {
      if (json[key] is bool) {
        return json[key];
      }
    }
  }
  return null;
}

bool getJsonBoolean2(List<dynamic> keys, dynamic json) {
  if (keys.length < 1 || json == null) return null;

  dynamic lastKey = keys.removeLast();
  dynamic obj = _getJsonItem(keys, json);

  if (obj is Map<String, dynamic>) {
    if (obj.containsKey(lastKey)) {
      obj = obj[lastKey];
      if (obj is bool) return obj;
    }
  }

  return null;
}

int getJsonInt(String key, Map<String, dynamic> json, {int defaultValue = -1}) {
  if (json != null) {
    if (json.containsKey(key)) {
      if (json[key] is int) {
        return json[key];
      }
    }
  }
  return defaultValue;
}

int getJsonInt2(List<dynamic> keys, dynamic json) {
  if (keys.length < 1 || json == null) return -1;

  dynamic lastKey = keys.removeLast();
  dynamic obj = _getJsonItem(keys, json);

  if (obj is Map<String, dynamic>) {
    if (obj.containsKey(lastKey)) {
      obj = obj[lastKey];
      if (obj is int) return obj;
    }
  }

  return -1;
}

double getJsonDouble(String key, Map<String, dynamic> json) {
  if (json != null) {
    if (json.containsKey(key)) {
      if (json[key] is double) {
        return json[key];
      }
    }
  }
  return 0.0;
}

String getJsonString(String key, Map<String, dynamic> json, {String defaultString = ''}) {
  if (json != null) {
    if (json.containsKey(key)) {
      if (json[key] is String) {
        return json[key];
      }
    }
  }
  return defaultString;
}

String getJsonString2(List<dynamic> keys, dynamic json) {
  if (keys.length < 1 || json == null) return '';

  dynamic lastKey = keys.removeLast();
  dynamic obj = _getJsonItem(keys, json);

  if (obj is Map<String, dynamic>) {
    if (obj.containsKey(lastKey)) {
      obj = obj[lastKey];
      if (obj is String) return obj;
    }
  }

  return '';
}

Map<String, dynamic> getJsonObject(List<dynamic> keys, dynamic json) {
  if (keys.length < 1 || json == null) return {};

  dynamic obj = _getJsonItem(keys, json);

  if (obj is Map<String, dynamic>) return obj;
  return {};
}

List<dynamic> getJsonList(List<dynamic> keys, dynamic json) {
  if (keys.length < 1 || json == null) return [];

  dynamic obj = _getJsonItem(keys, json);

  if (obj is List<dynamic>) return obj;
  return [];
}

bool isJsonNull(List<dynamic> keys, dynamic json) {
  if (keys.length < 1 || json == null) return true;

  dynamic obj = _getJsonItem(keys, json);

  if (obj == null) return true;

  return false;
}

dynamic _getJsonItem(List<dynamic> keys, dynamic json) {
  dynamic obj = json;

  for (dynamic key in keys) {
    if (obj is Map<String, dynamic>) {
      if (key is String) {
        if (obj.containsKey(key)) {
          obj = obj[key];
          continue;
        }
      }
      return null;
    } else if (obj is List<dynamic>) {
      if (key is int) {
        if (obj.length > key) {
          obj = obj[key];
          continue;
        }
      }
      return null;
    }
    return null;
  }

  return obj;
}

int compareDynamicFromMap(String key, Map<String, dynamic> aJson, Map<String, dynamic> bJson) {
  dynamic aValue = _getJsonItem([key], aJson);
  dynamic bValue = _getJsonItem([key], bJson);
  if (aValue != null && bValue != null) {
    if (aValue.runtimeType == bValue.runtimeType) {
      if (aValue is num && bValue is num) {
        return bValue.compareTo(aValue);
      } else if (aValue is String && bValue is String) {
        compareStrings(aValue, bValue);
      }
    }
    if (aValue is num) {
      return 1;
    } else {
      return -1;
    }
  } else {
    if (aValue == null && bValue == null)
      return 0;
    else if (aValue != null)
      return 1;
    else
      return -1;
  }
}

int compareStrings(String a, String b) {
  if (a.contains(':') || b.contains(':')) {
    if (a.contains(':') && b.contains(':')) {
      return DateFormat.Hm().parse(b).compareTo(DateFormat.Hm().parse(a));
    } else if (a.contains(':')) {
      return 1;
    } else {
      return -1;
    }
  } else {
    return b.compareTo(a);
  }
}

String getStatFromMap(String key, Map<String, dynamic> json, {defaultString = '0'}) {
  if (json != null && json.containsKey(key)) {
    dynamic value = json[key];

    if (value is num &&
        (key.contains('Time') || key.contains('time')) &&
        (!key.contains('shift') && !key.contains('Shift'))) {
      return parseDuration(Duration(milliseconds: (value * 1000).toInt()));
    }
    if (value is double) {
      return value.toStringAsFixed(value.truncateToDouble() == value ? 0 : 2);
    }
    return value.toString();
  }

  return defaultString;
}

String twoDigits(int n) {
  if (n >= 10) return "$n";
  return "0$n";
}

String parseDuration(Duration duration) {
  return '${twoDigits(duration.inMinutes)}:${twoDigits(duration.inSeconds.remainder(Duration.secondsPerMinute))}';
}
