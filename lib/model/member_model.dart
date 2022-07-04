class MemberModel {
  BigInt id;
  BigInt memberTypeId;
  String name;
  String phone;
  String email;
  String password;
  String isActive;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  MemberModel({
    required this.id,
    required this.memberTypeId,
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  MemberModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        memberTypeId = json['memberTypeId'] as BigInt,
        name = json['name'] as String,
        phone = json['phone'] as String,
        email = json['email'] as String,
        password = json['password'] as String,
        isActive = json['isActive'] as String,
        createdAt = (json['createdAt'] as Timestamp).toDate(),
        updatedAt = (json['updatedAt'] as Timestamp).toDate(),
        deletedAt = (json['deletedAt'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'memberTypeId': memberTypeId,
        'name': name,
        'phone': phone,
        'email': email,
        'password': password,
        'isActive': isActive,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'deletedAt': deletedAt,
      };
}

class Timestamp {
  var seconds;

  toDate() {
    return DateTime.fromMillisecondsSinceEpoch(this.seconds * 1000);
  }
}
