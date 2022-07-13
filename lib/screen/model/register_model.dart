class RegisterModel {
  RegisterModel({
    this.email,
    this.password,
    this.phone,
  });

  String? email;
  String? password;
  String? phone;

  Map<String, dynamic> toJson() =>
      {"email": email, "password": password, "phone": phone};
}
