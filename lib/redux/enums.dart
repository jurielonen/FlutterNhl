enum LoadingStatus {
  IDLE,
  LOADING,
  ERROR,
  SUCCESS,
}

///TODO: add states here
enum ApplicationState {
  SCHEDULE_STATE,
  STATS_STATE
}

class NetworkTimeoutException implements Exception {
  static const errorHeader = 'Too slow network';
  final String msg;
  NetworkTimeoutException(this.msg);

  @override
  String toString() {
    return '$errorHeader\n$msg';
  }
}

class NetworkException implements Exception {
  static const errorHeader = 'Api or network error';
  final String msg;
  NetworkException(this.msg);

  @override
  String toString() {
    return '$errorHeader\n$msg';
  }
}

class NetworkParseException implements Exception {
  static const errorHeader = 'Api changed error';
  final String msg;
  NetworkParseException(this.msg);

  @override
  String toString() {
    return '$errorHeader\n$msg';
  }
}

class UIUnknownStateException implements Exception {
  static const errorHeader = 'Entered unknown state in UI';
  final String msg;
  UIUnknownStateException(this.msg);

  @override
  String toString() {
    return '$errorHeader\n$msg';
  }
}

class UINoDataDownloadedException implements Exception {
  static const errorHeader = 'No data to show';
  final String msg;
  UINoDataDownloadedException(this.msg);

  @override
  String toString() {
    return '$errorHeader\n$msg';
  }
}