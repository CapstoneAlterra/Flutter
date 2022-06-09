import 'member_model.dart';

class TrainersModel {
  BigInt id;
  String name;
  String email;
  String password;
  String avatar;
  DateTime created_at;
  DateTime updated_at;
  DateTime deleted_at;

  TrainersModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.avatar,
    required this.created_at,
    required this.updated_at,
    required this.deleted_at,
  });

  TrainersModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        name = json['name'] as String,
        email = json['email'] as String,
        password = json['password'] as String,
        avatar = json['avatar'] as String,
        created_at = (json['created_at'] as Timestamp).toDate(),
        updated_at = (json['updated_at'] as Timestamp).toDate(),
        deleted_at = (json['deleted_at'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'password': password,
        'avatar': avatar,
        'created_at': created_at,
        'updated_at': updated_at,
        'deleted_at': deleted_at,
      };
}
