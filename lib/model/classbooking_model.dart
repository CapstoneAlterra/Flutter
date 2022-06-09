import 'member_model.dart';

class ClassBooking_Model {
  BigInt id;
  BigInt member_id;
  String invoice_no;
  String member_name;
  String member_email;
  String member_phone;
  String payment_method;
  String note;
  BigInt status;
  double total;
  DateTime created_at;
  DateTime updated_at;
  DateTime deleted_at;

  ClassBooking_Model({
    required this.id,
    required this.member_id,
    required this.invoice_no,
    required this.member_name,
    required this.member_email,
    required this.member_phone,
    required this.payment_method,
    required this.note,
    required this.status,
    required this.total,
    required this.created_at,
    required this.updated_at,
    required this.deleted_at,
  });

  ClassBooking_Model.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        member_id = json['member_id'] as BigInt,
        invoice_no = json['invoice_no'] as String,
        member_name = json['member_name'] as String,
        member_email = json['member_email'] as String,
        member_phone = json['member_phone'] as String,
        payment_method = json['payment_method'] as String,
        note = json['note'] as String,
        status = json['status'] as BigInt,
        total = json['total'] as double,
        created_at = (json['created_at'] as Timestamp).toDate(),
        updated_at = (json['updated_at'] as Timestamp).toDate(),
        deleted_at = (json['deleted_at'] as Timestamp).toDate();

  Map<String, dynamic> toJson() => {
        'id': id,
        'member_id': member_id,
        'invoice_no': invoice_no,
        'member_name': member_name,
        'member_email': member_email,
        'member_phone': member_phone,
        'payment_method': payment_method,
        'note': note,
        'status': status,
        'total': total,
        'created_at': created_at,
        'updated_at': updated_at,
        'deleted_at': deleted_at,
      };
}
