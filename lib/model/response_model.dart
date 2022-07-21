class ResponseUser {
  ResponseUser({
    this.message,
    this.data,
  });

  ResponseUser.fromJson(dynamic json) {
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(AllDataUser.fromJson(v));
      });
    }
  }
  String? message;
  List<AllDataUser>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class AllDataUser {
  AllDataUser({this.id, this.email, this.password, this.name, this.phone});

  AllDataUser.fromJson(dynamic json) {
    id = json['id'];
    email = json['email'];
    name = json['name'];
    password = json['password'];
    phone = json['phone'];
  }
  int? id;
  String? email;
  String? password;
  String? name;
  String? phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['email'] = email;
    map['name'] = name;
    map['password'] = password;
    map['phone'] = phone;
    return map;
  }
}
