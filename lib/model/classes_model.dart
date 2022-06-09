import 'member_model.dart';

class ClassesModel {
  BigInt id;
  BigInt trainer_id;
  String name;
  String description;
  String category;
  String image;
  String meet_link;
  double price;
  DateTime date;
  DateTime start_time;
  DateTime end_time;
  String trainer_name;
  DateTime created_at;
  DateTime updated_at;
  DateTime deleted_at;

  ClassesModel({
    required this.id,
    required this.trainer_id,
    required this.name,
    required this.description,
    required this.category,
    required this.image,
    required this.meet_link,
    required this.price,
    required this.date,
    required this.start_time,
    required this.end_time,
    required this.trainer_name,
    required this.created_at,
    required this.updated_at,
    required this.deleted_at,
  });

  ClassesModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        trainer_id = json['trainer_id'] as BigInt,
        name = json['name'] as String,
        description = json['description'] as String,
        category = json['category'] as String,
        image = json['image'] as String,
        meet_link = json['meet_link'] as String,
        price = json['price'] as double,
        date = (json['date'] as Timestamp).toDate(),
        start_time = (json['start_time'] as Timestamp).toDate(),
        end_time = (json['end_time'] as Timestamp).toDate(),
        trainer_name = json['trainer_name'] as String,
        created_at = (json['created_at'] as Timestamp).toDate(),
        updated_at = (json['updated_at'] as Timestamp).toDate(),
        deleted_at = (json['deleted_at'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'trainer_id': trainer_id,
        'name': name,
        'description': description,
        'category': category,
        'image': image,
        'meet_link': meet_link,
        'price': price,
        'date': date,
        'start_time': start_time,
        'end_time': end_time,
        'trainer_name': trainer_name,
        'created_at': created_at,
        'updated_at': updated_at,
        'deleted_at': deleted_at,
      };
}
