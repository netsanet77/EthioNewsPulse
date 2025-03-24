import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/http_helper.dart';
import '../data/news.dart';


class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});


  @override
  State<NewsScreen> createState() => _NewsScreenState();
}


class _NewsScreenState extends State<NewsScreen> {
  News result = News('', '');
  bool _isFetched = false;
  @override
  void initState() {
    super.initState();
    if (!_isFetched) {
      getNews();
      _isFetched = true;
    }
  }


  @override
  Widget build(BuildContext context) {


    return Text(result.name.toString(),style: GoogleFonts.abyssinicaSil(fontSize: 20),);
  }


  Future getNews() async {
    HttpHelper helper = HttpHelper();
    result = await helper.getNews('et', 'am');
    setState(() {});
  }
}
