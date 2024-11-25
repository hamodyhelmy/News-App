import 'package:dio/dio.dart';
import 'package:news_app/Models/artical.dart';

class Newsservice {
  final dio = Dio();
  String category;
  Newsservice({required this.category});
  Future<List<Artical>> getnews() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=1434f1063703423cb5a5d69ffc8c49f5&category=$category');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];
      List<Artical> articalsmodle = [];
      for (var article in articles) {
        Artical art = Artical.fromjson(article);
        articalsmodle.add(art);
      }

      return articalsmodle;
    } catch (e) {
      return [];
    }
  }
}
