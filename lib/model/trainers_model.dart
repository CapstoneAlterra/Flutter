import 'member_model.dart';

class TrainersModel {
  BigInt id;
  String name;
  String email;
  String password;
  String avatar;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  TrainersModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.avatar,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  TrainersModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        name = json['name'] as String,
        email = json['email'] as String,
        password = json['password'] as String,
        avatar = json['avatar'] as String,
        createdAt = (json['createdAt'] as Timestamp).toDate(),
        updatedAt = (json['updatedAt'] as Timestamp).toDate(),
        deletedAt = (json['deletedAt'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'password': password,
        'avatar': avatar,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'deleted_at': deletedAt,
      };
}
