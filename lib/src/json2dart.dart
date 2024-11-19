class Json2Dart {
  static Json2Dart? _instance;

  factory Json2Dart() => _getInstance();

  static Json2Dart get instance => _getInstance();

  static Json2Dart _getInstance() => _instance ??= Json2Dart._();

  Json2Dart._();

  Function(String)? callBack;
  Function(String method, String key, Map? map)? detailCallBack;

  void addCallback(Function(String) callBack) {
    this.callBack = callBack;
  }

  void addDetailCallback(Function(String method, String key, Map? map) callBack) {
    this.detailCallBack = callBack;
  }
}
