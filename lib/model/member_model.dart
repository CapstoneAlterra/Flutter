class MemberModel {
  BigInt id;
  BigInt member_type_id;
  String name;
  String phone;
  String email;
  String password;
  String is_active;
  DateTime created_at;
  DateTime updated_at;
  DateTime deleted_at;

  MemberModel({
    required this.id,
    required this.member_type_id,
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.is_active,
    required this.created_at,
    required this.updated_at,
    required this.deleted_at,
  });

  MemberModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        member_type_id = json['member_type_id'] as BigInt,
        name = json['name'] as String,
        phone = json['phone'] as String,
        email = json['email'] as String,
        password = json['password'] as String,
        is_active = json['is_active'] as String,
        created_at = (json['created_at'] as Timestamp).toDate(),
        updated_at = (json['updated_at'] as Timestamp).toDate(),
        deleted_at = (json['deleted_at'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'member_type_id': member_type_id,
        'name': name,
        'phone': phone,
        'email': email,
        'password': password,
        'is_active': is_active,
        'created_at': created_at,
        'updated_at': updated_at,
        'deleted_at': deleted_at,
      };
}

class Timestamp {
  var seconds;

  toDate() {
    return DateTime.fromMillisecondsSinceEpoch(this.seconds * 1000);
  }
}
