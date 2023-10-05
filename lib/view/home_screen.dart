import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vsapi/models/articles.dart';
import 'package:vsapi/models/category.dart';

import '../services/news_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List <Articles> articles = [];
  @override
  void initState() {
    super.initState();
     getGeneral();
  }

  Future<void> getGeneral() async {
    articles = await NewsServices(Dio()).getNews();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.builder(
        itemCount: articles.length,
        physics: ScrollPhysics(parent: BouncingScrollPhysics()),
        itemBuilder: (BuildContext context, int index) {
          // return News(articles: articles[index]);
          return FutureBuilder(
            future: NewsServices(Dio()).getNews(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return News(articles: snapshot.data[index]);
              } else {
                return  Center(
                  child: SizedBox(
                    width: 200.0,
                    height: 100.0,
                    child: Shimmer.fromColors(
                      baseColor: Colors.red,
                      highlightColor: Colors.yellow,
                      child: Text(
                        'Loading',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                    ),
                  ) ,
                );
              }
            },
          );
        },
      ),
    );
  }
}
