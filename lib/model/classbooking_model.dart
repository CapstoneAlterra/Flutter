import 'member_model.dart';

class ClassBookingModel {
  BigInt id;
  BigInt memberId;
  String invoiceNo;
  String memberName;
  String memberEmail;
  String memberPhone;
  String paymentMethod;
  String note;
  BigInt status;
  double total;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  ClassBookingModel({
    required this.id,
    required this.memberId,
    required this.invoiceNo,
    required this.memberName,
    required this.memberEmail,
    required this.memberPhone,
    required this.paymentMethod,
    required this.note,
    required this.status,
    required this.total,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  ClassBookingModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        memberId = json['memberId'] as BigInt,
        invoiceNo = json['invoiceNo'] as String,
        memberName = json['memberName'] as String,
        memberEmail = json['memberEmail'] as String,
        memberPhone = json['memberPhone'] as String,
        paymentMethod = json['paymentMethod'] as String,
        note = json['note'] as String,
        status = json['status'] as BigInt,
        total = json['total'] as double,
        createdAt = (json['createdAt'] as Timestamp).toDate(),
        updatedAt = (json['updatedAt'] as Timestamp).toDate(),
        deletedAt = (json['deletedAt'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'memberId': memberId,
        'invoiceNo': invoiceNo,
        'memberName': memberName,
        'memberEmail': memberEmail,
        'memberPhone': memberPhone,
        'paymentMethod': paymentMethod,
        'note': note,
        'status': status,
        'total': total,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'deletedAt': deletedAt,
      };
}
