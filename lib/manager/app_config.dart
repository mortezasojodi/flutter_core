mixin IAppConfig {
  bool get hasToken;
  void logout();
  void refreshToken(String token, {dynamic Function(String)? onSuccess});
  String appVersion();
  Map<String, dynamic> get tokenHeader;
}
