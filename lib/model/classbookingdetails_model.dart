import 'member_model.dart';

class ClassBookingDetails_Model {
  BigInt id;
  BigInt class_booking_id;
  BigInt class_id;
  String class_name;
  String class_description;
  String class_meet_link;
  String class_image;
  double class_price;
  DateTime class_date;
  DateTime class_start_time;
  DateTime class_end_time;
  String class_trainer_name;
  DateTime created_at;
  DateTime updated_at;
  DateTime deleted_at;

  ClassBookingDetails_Model({
    required this.id,
    required this.class_booking_id,
    required this.class_id,
    required this.class_name,
    required this.class_description,
    required this.class_meet_link,
    required this.class_image,
    required this.class_price,
    required this.class_date,
    required this.class_start_time,
    required this.class_end_time,
    required this.class_trainer_name,
    required this.created_at,
    required this.updated_at,
    required this.deleted_at,
  });

  ClassBookingDetails_Model.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        class_booking_id = json['class_booking_id'] as BigInt,
        class_id = json['class_id'] as BigInt,
        class_name = json['class_name'] as String,
        class_description = json['class_description'] as String,
        class_meet_link = json['class_meet_link'] as String,
        class_image = json['class_image'] as String,
        class_price = json['class_price'] as double,
        class_date = (json['class_date'] as Timestamp).toDate(),
        class_start_time = (json['class_start_time'] as Timestamp).toDate(),
        class_end_time = (json['class_end_time'] as Timestamp).toDate(),
        class_trainer_name = json['class_trainer_name'] as String,
        created_at = (json['created_at'] as Timestamp).toDate(),
        updated_at = (json['updated_at'] as Timestamp).toDate(),
        deleted_at = (json['deleted_at'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'class_booking_id': class_booking_id,
        'class_id': class_id,
        'class_name': class_name,
        'class_description': class_description,
        'class_meet_link': class_meet_link,
        'class_image': class_image,
        'class_price': class_price,
        'class_date': class_date,
        'class_start_time': class_start_time,
        'class_end_time': class_end_time,
        'class_trainer_name': class_trainer_name,
        'created_at': created_at,
        'updated_at': updated_at,
        'deleted_at': deleted_at,
      };
}
