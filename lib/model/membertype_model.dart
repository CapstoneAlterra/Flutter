import 'member_model.dart';

class MemberType_Model {
  BigInt id;
  String name;
  String Description;
  String image;
  BigInt duration;
  double price;
  DateTime created_at;
  DateTime updated_at;
  DateTime deleted_at;

  MemberType_Model({
    required this.id,
    required this.name,
    required this.Description,
    required this.image,
    required this.duration,
    required this.price,
    required this.created_at,
    required this.updated_at,
    required this.deleted_at,
  });

  MemberType_Model.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        name = json['name'] as String,
        Description = json['Description'] as String,
        image = json['image'] as String,
        duration = json['duration'] as BigInt,
        price = json['price'] as double,
        created_at = (json['created_at'] as Timestamp).toDate(),
        updated_at = (json['updated_at'] as Timestamp).toDate(),
        deleted_at = (json['deleted_at'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'Description': Description,
        'image': image,
        'duration': duration,
        'price': price,
        'created_at': created_at,
        'updated_at': updated_at,
        'deleted_at': deleted_at,
      };
}
