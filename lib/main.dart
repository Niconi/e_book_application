import 'package:e_book_application/screens/home/home_page.dart';
import 'package:e_book_application/screens/home/pages/book_details.dart';
import 'package:flutter/material.dart';
import 'package:e_book_application/screens/button_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-book App',
      debugShowCheckedModeBanner: false,
      routes: {
        BottomNavBar.nameRoute: (context) => BottomNavBar(),
        HomePage.nameRoute: (context) => HomePage(),
        BookDetail.nameRoute: (context) => BookDetail(),
      },
    );
  }
}
