import 'package:dio/dio.dart';
import 'package:live_news/Models/Article_Model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsdata.io/api/1/news?apikey=pub_604004c330b2035f4c5767531accf28890643&country=eg&language=ar&category=$category');
      Map<String, dynamic> JsonData = response.data;
      List<dynamic> articles = JsonData['results'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromjson(article);

        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
