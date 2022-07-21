import 'member_model.dart';

class MemberOrderModel {
  BigInt id;
  BigInt memberId;
  BigInt memberTypeId;
  String invoiceNo;
  String memberName;
  String memberEmail;
  String memberPhone;
  String memberTypeName;
  String memberTypeImage;
  BigInt memberTypeDuration;
  double memberTypePrice;
  String paymentMethod;
  BigInt status;
  double total;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  MemberOrderModel({
    required this.id,
    required this.memberId,
    required this.memberTypeId,
    required this.invoiceNo,
    required this.memberName,
    required this.memberEmail,
    required this.memberPhone,
    required this.memberTypeName,
    required this.memberTypeImage,
    required this.memberTypeDuration,
    required this.memberTypePrice,
    required this.paymentMethod,
    required this.status,
    required this.total,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  MemberOrderModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        memberId = json['memberId'] as BigInt,
        memberTypeId = json['memberTypeId'] as BigInt,
        invoiceNo = json['invoiceNo'] as String,
        memberName = json['memberName'] as String,
        memberEmail = json['memberEmail'] as String,
        memberPhone = json['memberPhone'] as String,
        memberTypeName = json['memberTypeName'] as String,
        memberTypeImage = json['memberTypeImage'] as String,
        memberTypeDuration = json['memberTypeDuration'] as BigInt,
        memberTypePrice = json['memberTypePrice'] as double,
        paymentMethod = json['paymentMethod'] as String,
        status = json['status'] as BigInt,
        total = json['total'] as double,
        createdAt = (json['createdAt'] as Timestamp).toDate(),
        updatedAt = (json['updatedAt'] as Timestamp).toDate(),
        deletedAt = (json['deletedAt'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'memberId': memberId,
        'memberTypeId': memberTypeId,
        'invoiceNo': invoiceNo,
        'memberName': memberName,
        'memberEmail': memberEmail,
        'memberPhone': memberPhone,
        'memberTypeName': memberTypeName,
        'memberTypeImage': memberTypeImage,
        'memberTypeDuration': memberTypeDuration,
        'memberTypePrice': memberTypePrice,
        'paymentMethod': paymentMethod,
        'status': status,
        'total': total,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'deletedAt': deletedAt,
      };
}
