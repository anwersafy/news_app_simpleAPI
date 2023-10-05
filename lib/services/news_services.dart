import 'package:dio/dio.dart';
import 'package:vsapi/models/articles.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);
   Future<List<Articles>>    getNews() async {
    String baseUrl = 'https://newsapi.org/v2';
    String apiKey = '46a7474250fa42d9b852f2a057824e84' ;
    String language = 'en';
    Response response = await dio.get(
        '$baseUrl/everything?q=USA&language=$language&apiKey=$apiKey');
    Map<String, dynamic> JsonData = response.data;

    List<dynamic> articles = JsonData['articles'];
    List<Articles> articlesList = [];
    for (var article in articles) {
      Articles articles = Articles(
        title: article['title'],
        description: article['description'],
        urlToImage: article['urlToImage'],
      );
      articlesList.add(articles);
    }
    return articlesList;
  }
}
