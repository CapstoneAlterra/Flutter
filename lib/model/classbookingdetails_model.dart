import 'member_model.dart';

class ClassBookingDetailsModel {
  BigInt id;
  BigInt classBookingId;
  BigInt classId;
  String className;
  String classDescription;
  String classMeetLink;
  String classImage;
  double classPrice;
  DateTime classDate;
  DateTime classStartTime;
  DateTime classEndTime;
  String classTrainerName;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  ClassBookingDetailsModel({
    required this.id,
    required this.classBookingId,
    required this.classId,
    required this.className,
    required this.classDescription,
    required this.classMeetLink,
    required this.classImage,
    required this.classPrice,
    required this.classDate,
    required this.classStartTime,
    required this.classEndTime,
    required this.classTrainerName,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  ClassBookingDetailsModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        classBookingId = json['classBookingId'] as BigInt,
        classId = json['classId'] as BigInt,
        className = json['className'] as String,
        classDescription = json['classDescription'] as String,
        classMeetLink = json['classMeetLink'] as String,
        classImage = json['classImage'] as String,
        classPrice = json['classPrice'] as double,
        classDate = (json['classDate'] as Timestamp).toDate(),
        classStartTime = (json['classStartTime'] as Timestamp).toDate(),
        classEndTime = (json['classEndTime'] as Timestamp).toDate(),
        classTrainerName = json['classTrainerName'] as String,
        createdAt = (json['createdAt'] as Timestamp).toDate(),
        updatedAt = (json['updatedAt'] as Timestamp).toDate(),
        deletedAt = (json['deletedAt'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'classBookingId': classBookingId,
        'classId': classId,
        'className': className,
        'classDescription': classDescription,
        'classMeetLink': classMeetLink,
        'classImage': classImage,
        'classPrice': classPrice,
        'classDate': classDate,
        'classStartTime': classStartTime,
        'classEndTime': classEndTime,
        'classTrainerName': classTrainerName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'deletedAt': deletedAt,
      };
}
