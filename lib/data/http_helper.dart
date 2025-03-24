import 'package:http/http.dart' as http;
import 'dart:convert';
import 'news.dart';


class HttpHelper {
  // https://newsdata.io/api/1/news?apikey=pub_7480935d2f11b145921929e1e3baf604a44cf&country=et&language=am


  //https://newsapi.org/v2/top-headlines/sources?apiKey=b081875357474c078a06933b6f36f377
  final String authority = 'newsdata.io';
  final String path = 'api/1/news';
  final String apiKey = 'pub_7480935d2f11b145921929e1e3baf604a44cf';


  Future<News> getNews(String country, String language) async {
    Map<String, dynamic> parameters = {
      'apikey': apiKey,
      'country': country,
      'language': language,
    };


    Uri uri = Uri.https(authority, path, parameters);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    News news = News.fromJson(data);
    return news;
  }
}
