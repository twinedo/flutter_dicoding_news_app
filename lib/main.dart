import 'package:dicoding_news_app/data/model/article.dart';
import 'package:dicoding_news_app/style/styles.dart';
import 'package:dicoding_news_app/ui/article_list_page.dart';
import 'package:dicoding_news_app/ui/articledetailpage.dart';
import 'package:dicoding_news_app/ui/articlewebview.dart';
import 'package:dicoding_news_app/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
          primaryColor: primaryColor,
          accentColor: secondaryColor,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.white,
          textTheme: myTextTheme,
          appBarTheme: AppBarTheme(
            textTheme: myTextTheme.apply(bodyColor: Colors.black),
            elevation: 0,
          ),
          buttonTheme: ButtonThemeData(
              buttonColor: secondaryColor,
              textTheme: ButtonTextTheme.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0))))),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(
            article: ModalRoute.of(context).settings.arguments as Article),
        ArticleWebView.routeName: (context) => ArticleWebView(
            url: ModalRoute.of(context).settings.arguments as String)
      },
    );
  }
}
