DateTime getJsonDateTime(String key, Map<String, dynamic> json){
  try {
    if(json != null) {
      if (json.containsKey(key)) {
        if (json[key] is String) {
          return DateTime.parse(json[key]);
        }
      }
    }
    return DateTime(1990);
  } on FormatException catch(error){
    return DateTime(1990);
  }
}

int getJsonInt(String key, Map<String, dynamic> json){
  if(json != null) {
    if (json.containsKey(key)) {
      if (json[key] is int) {
        return json[key];
      }
    }
  }
  return -1;
}

int getJsonInt2(List<dynamic> keys, dynamic json){
  if(keys.length < 1 || json == null)
    return -1;

  dynamic lastKey = keys.removeLast();
  dynamic obj = _getJsonItem(keys, json);

  if(obj is Map<String, dynamic>){
    if(obj.containsKey(lastKey)){
      obj = obj[lastKey];
      if(obj is int)
        return obj;
    }
  }

  return -1;
}

String getJsonString(String key, Map<String, dynamic> json){
  if(json != null) {
    if (json.containsKey(key)) {
      if (json[key] is String) {
        return json[key];
      }
    }
  }
  return '';
}

String getJsonString2(List<dynamic> keys, dynamic json){
  if(keys.length < 1 || json == null)
    return '';

  dynamic lastKey = keys.removeLast();
  dynamic obj = _getJsonItem(keys, json);

  if(obj is Map<String, dynamic>){
    if(obj.containsKey(lastKey)){
      obj = obj[lastKey];
      if(obj is String)
        return obj;
    }
  }

  return '';
}

Map<String, dynamic> getJsonObject(List<dynamic> keys, dynamic json){
  if(keys.length < 1 || json == null)
    return {};

  dynamic obj = _getJsonItem(keys, json);

  if(obj is Map<String, dynamic>)
    return obj;
  return {};
}

List<dynamic> getJsonList(List<dynamic> keys, dynamic json){
  if(keys.length < 1 || json == null)
    return [];

  dynamic obj = _getJsonItem(keys, json);

  if(obj is List<dynamic>)
    return obj;
  return [];
}

dynamic _getJsonItem(List<dynamic> keys, dynamic json){
  dynamic obj = json;

  for(dynamic key in keys){
    if(obj is Map<String, dynamic>){
      if(key is String) {
        if (obj.containsKey(key)) {
          obj = obj[key];
          continue;
        }
      }
      return null;
    } else if(obj is List<dynamic>){
      if(key is int){
        if(obj.length > key){
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