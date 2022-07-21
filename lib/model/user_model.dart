class ModelUser {
  ModelUser({
    String? message,
    Data? data,
    Jwt? jwt,
  }) {
    _message = message;
    _data = data;
    _jwt = jwt;
  }

  ModelUser.fromJson(dynamic json) {
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _jwt = json['jwt'] != null ? Jwt.fromJson(json['jwt']) : null;
  }
  String? _message;
  Data? _data;
  Jwt? _jwt;
  ModelUser copyWith({
    String? message,
    Data? data,
    Jwt? jwt,
  }) =>
      ModelUser(
        message: message ?? _message,
        data: data ?? _data,
        jwt: jwt ?? _jwt,
      );
  String? get message => _message;
  Data? get data => _data;
  Jwt? get jwt => _jwt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    if (_jwt != null) {
      map['jwt'] = _jwt?.toJson();
    }
    return map;
  }
}

class Jwt {
  Jwt({
    String? accessToken,
    String? refreshToken,
  }) {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
  }

  Jwt.fromJson(dynamic json) {
    _accessToken = json['access_token'];
    _refreshToken = json['refresh_token'];
  }
  String? _accessToken;
  String? _refreshToken;
  Jwt copyWith({
    String? accessToken,
    String? refreshToken,
  }) =>
      Jwt(
        accessToken: accessToken ?? _accessToken,
        refreshToken: refreshToken ?? _refreshToken,
      );
  String? get accessToken => _accessToken;
  String? get refreshToken => _refreshToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access_token'] = _accessToken;
    map['refresh_token'] = _refreshToken;
    return map;
  }
}

class Data {
  Data({
    int? id,
    String? email,
    String? password,
  }) {
    _id = id;
    _email = email;
    _password = password;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _email = json['email'];
    _password = json['password'];
  }
  int? _id;
  String? _code;
  String? _email;
  String? _password;
  Data copyWith({
    int? id,
    String? email,
    String? password,
  }) =>
      Data(
        id: id ?? _id,
        email: email ?? _email,
        password: password ?? _password,
      );
  int? get id => _id;
  String? get email => _email;
  String? get fullName => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['email'] = _email;
    map['password'] = _password;
    return map;
  }
}
