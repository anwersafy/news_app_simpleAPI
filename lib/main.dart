import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:vsapi/home.dart';
import 'package:vsapi/services/news_services.dart';

void main() {
  NewsServices(Dio()).getNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(debugShowCheckedModeBanner: false,

        home: Home());
  }
}
