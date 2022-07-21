class MembershipModel {
  BigInt id;
  String noKTP;
  String name;
  String gender;
  String alamat;
  String kota;
  String kodePos;
  String email;
  String noHP;

  MembershipModel({
    required this.id,
    required this.noKTP,
    required this.name,
    required this.gender,
    required this.alamat,
    required this.kota,
    required this.kodePos,
    required this.email,
    required this.noHP,
  });

  MembershipModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        noKTP = json['noKTP'] as String,
        name = json['name'] as String,
        gender = json['gender'] as String,
        alamat = json['alamat'] as String,
        kota = json['kota'] as String,
        kodePos = json['kodePos'] as String,
        email = json['email'] as String,
        noHP = json['noHP'] as String;

  Map<String, dynamic> toJson() => {
        'id': id,
        'noKTP': noKTP,
        'name': name,
        'gender': gender,
        'alamat': alamat,
        'kota': kota,
        'kodePos': kodePos,
        'email': email,
        'noHP': noHP,
      };
}
