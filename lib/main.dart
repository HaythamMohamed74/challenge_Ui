import 'package:challenge_ui/controller/book_mark_provider.dart';
import 'package:challenge_ui/pages/news_details.dart';
import 'package:challenge_ui/widgets/buttom_nav_bar.dart';
import 'package:challenge_ui/pages/home_page.dart';
import 'package:challenge_ui/widgets/recommandation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( ChangeNotifierProvider(
      create: (BuildContext context) {
        return BookMarks();
      },
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Example(),
      routes: {
        // NewsDetails.id:(context) =>  NewsDetails(),
        // Recomandation_News.id:(context) =>  Recomandation_News(),
        // HomeScreen.id:(context) =>  HomeScreen(),
      },
    );
  }
}


