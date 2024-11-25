class Artical {
  final String? image;
  final String title;
  final String? subtitle;
  final String url;
  Artical(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.url});

  factory Artical.fromjson(json) {
    return Artical(
        image: json['urlToImage'],
        title: json['title'],
        subtitle: json['description'],
        url: json['url']);
  }
}
