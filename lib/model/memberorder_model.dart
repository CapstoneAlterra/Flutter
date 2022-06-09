import 'member_model.dart';

class MemberOrder_Model {
  BigInt id;
  BigInt member_id;
  BigInt member_type_id;
  String invoice_no;
  String member_name;
  String member_email;
  String member_phone;
  String member_type_name;
  String member_type_image;
  BigInt member_type_duration;
  double member_type_price;
  String payment_method;
  BigInt status;
  double total;
  DateTime created_at;
  DateTime updated_at;
  DateTime deleted_at;

  MemberOrder_Model({
    required this.id,
    required this.member_id,
    required this.member_type_id,
    required this.invoice_no,
    required this.member_name,
    required this.member_email,
    required this.member_phone,
    required this.member_type_name,
    required this.member_type_image,
    required this.member_type_duration,
    required this.member_type_price,
    required this.payment_method,
    required this.status,
    required this.total,
    required this.created_at,
    required this.updated_at,
    required this.deleted_at,
  });

  MemberOrder_Model.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        member_id = json['member_id'] as BigInt,
        member_type_id = json['member_type_id'] as BigInt,
        invoice_no = json['invoice_no'] as String,
        member_name = json['member_name'] as String,
        member_email = json['member_email'] as String,
        member_phone = json['member_phone'] as String,
        member_type_name = json['member_type_name'] as String,
        member_type_image = json['member_type_image'] as String,
        member_type_duration = json['member_type_duration'] as BigInt,
        member_type_price = json['member_type_price'] as double,
        payment_method = json['payment_method'] as String,
        status = json['status'] as BigInt,
        total = json['total'] as double,
        created_at = (json['created_at'] as Timestamp).toDate(),
        updated_at = (json['updated_at'] as Timestamp).toDate(),
        deleted_at = (json['deleted_at'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'member_id': member_id,
        'member_type_id': member_type_id,
        'invoice_no': invoice_no,
        'member_name': member_name,
        'member_email': member_email,
        'member_phone': member_phone,
        'member_type_name': member_type_name,
        'member_type_image': member_type_image,
        'member_type_duration': member_type_duration,
        'member_type_price': member_type_price,
        'payment_method': payment_method,
        'status': status,
        'total': total,
        'created_at': created_at,
        'updated_at': updated_at,
        'deleted_at': deleted_at,
      };
}
