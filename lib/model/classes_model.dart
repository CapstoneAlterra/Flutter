// class ModelClass {
//   String status;
//   int totalResults;
//   List<Class> class;

//   ModelClass({this.status, this.totalResults, this.class});

//   ModelIdNews.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     totalResults = json['totalResults'];
//     if (json['articles'] != null) {
//       articles = <Articles>[];
//       json['articles'].forEach((v) {
//         articles.add(new Articles.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = status;
//     data['totalResults'] = totalResults;
//     if (articles != null) {
//       data['articles'] = articles.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

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
        date = json['date'],
        startTime = json['startTime'],
        endTime = json['endTime'],
        trainerName = json['trainerName'] as String;

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
      };
}
