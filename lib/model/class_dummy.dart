import 'package:flutter/cupertino.dart';

class Classed {
  int id;
  String name;
  String category;
  String image;
  String dateTime;
  String time;
  String price;
  String description;
  String trainer;
  String benefits;

  Classed({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.dateTime,
    required this.time,
    required this.price,
    required this.description,
    required this.trainer,
    required this.benefits,
  });

  List<Classed> Classes = [
    Classed(
        id: 1,
        benefits:
            '1. Membakar kalori dengan lebih signifikan \n 2. Membuat tubuh anda bugar dan kuat \n 3. Menaikkan energi anda',
        category: 'Cardio',
        name: 'Body Combat',
        image:
            'https://drive.google.com/drive/folders/13s0wcYSkgQdQU2MZ-JyVHpYsY2iSsZw0',
        price: 'Rp. 45.000',
        dateTime: '22/07/2022',
        description:
            'Anda akan melatih kaki Anda dan mengencangkan lengan, punggung dan bahu Anda. Inti Anda juga akan mendapatkan latihan inti yang fenomenal saat Anda membakar kalori dan mengembangkan koordinasi, kelincahan dan kecetan Anda',
        time: '14.00',
        trainer: 'Irwan')
  ];
}
