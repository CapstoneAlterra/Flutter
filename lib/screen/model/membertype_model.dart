import 'member_model.dart';

class MemberTypeModel {
  BigInt id;
  String name;
  String Description;
  String image;
  BigInt duration;
  double price;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  MemberTypeModel({
    required this.id,
    required this.name,
    required this.Description,
    required this.image,
    required this.duration,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  MemberTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        name = json['name'] as String,
        Description = json['Description'] as String,
        image = json['image'] as String,
        duration = json['duration'] as BigInt,
        price = json['price'] as double,
        createdAt = (json['createdAt'] as Timestamp).toDate(),
        updatedAt = (json['updatedAt'] as Timestamp).toDate(),
        deletedAt = (json['deletedAt'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'Description': Description,
        'image': image,
        'duration': duration,
        'price': price,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'deletedAt': deletedAt,
      };
}
