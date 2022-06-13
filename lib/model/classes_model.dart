import 'member_model.dart';

class ClassesModel {
  BigInt id;
  BigInt trainerId;
  String name;
  String description;
  String category;
  String image;
  String meetLink;
  double price;
  DateTime date;
  DateTime startTime;
  DateTime endTime;
  String trainerName;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  ClassesModel({
    required this.id,
    required this.trainerId,
    required this.name,
    required this.description,
    required this.category,
    required this.image,
    required this.meetLink,
    required this.price,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.trainerName,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  ClassesModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        trainerId = json['trainerId'] as BigInt,
        name = json['name'] as String,
        description = json['description'] as String,
        category = json['category'] as String,
        image = json['image'] as String,
        meetLink = json['meetLink'] as String,
        price = json['price'] as double,
        date = (json['date'] as Timestamp).toDate(),
        startTime = (json['startTime'] as Timestamp).toDate(),
        endTime = (json['endTime'] as Timestamp).toDate(),
        trainerName = json['trainerName'] as String,
        createdAt = (json['createdAt'] as Timestamp).toDate(),
        updatedAt = (json['updatedAt'] as Timestamp).toDate(),
        deletedAt = (json['deletedAt'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'trainerId': trainerId,
        'name': name,
        'description': description,
        'category': category,
        'image': image,
        'meetLink': meetLink,
        'price': price,
        'date': date,
        'startTime': startTime,
        'endTime': endTime,
        'trainerName': trainerName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'deletedAt': deletedAt,
      };
}
