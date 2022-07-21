class NewsletterModel {
  BigInt id;
  String title;
  String author;
  String image;
  var publishedAt;
  String content;

  NewsletterModel(
      {required this.id,
      required this.title,
      required this.author,
      required this.image,
      required this.publishedAt,
      required this.content});

  NewsletterModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as BigInt,
        title = json['title'] as String,
        author = json['author'] as String,
        image = json['image'] as String,
        publishedAt = json['publishedAt'],
        content = json['content'] as String;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'author': author,
        'image': image,
        'publishedAt': publishedAt,
        'content': content,
      };
}
