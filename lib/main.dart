import 'package:aprenda_ingles/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Color(0xff795548),
        scaffoldBackgroundColor: Color(0xfff5e9b9)),
  ));
}
