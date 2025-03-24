import 'package:flutter/material.dart';
import 'package:myapp/screens/news_screen.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ethio News',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ethio News'),
          backgroundColor: Colors.amber,
        ),
        body: NewsScreen(),
        //Material(
       //textStyle: TextStyle(color: Colors.green),
      // child: Center(child: Text('helllo')),
       
      // ),
      ),
    );
  }
}





