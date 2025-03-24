class News {
  String? name = '';
  String? description = '';


  News(this.name, this.description);
  News.fromJson(Map<String, dynamic> newsMap) {
  this.name = newsMap['results'][0]['title'];
  this.description =  newsMap ['results'][0]['description'];
}
}
