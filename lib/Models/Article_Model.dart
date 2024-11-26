class ArticleModel {
  final String? Image;
  final Titel;
  final String? SubTitle;
  final String? url;
  ArticleModel(
      {required this.url,
      required this.Image,
      required this.Titel,
      required this.SubTitle});
  factory ArticleModel.fromjson(json) {
    return ArticleModel(
      Image: json['image_url'],
      Titel: json['title'],
      SubTitle: json['description'],
      url: json['link'],
    );
  }
}
