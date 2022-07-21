class RegisterModel {
  RegisterModel({this.name, this.phone, this.email, this.password});

  String? email;
  String? password;
  String? phone;
  String? name;

  RegisterModel.fromJson(Map<String, dynamic> json)
      : email = json['email'] as String,
        password = json['password'] as String,
        phone = json['phone'] as String,
        name = json['name'] as String;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['name'] = name;
    map['password'] = password;
    map['phone'] = phone;
    return map;
    // "email": email, "password": password, "phone": phone, "name": name
  }
}
