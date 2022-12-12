import 'package:flutter/material.dart';
import 'package:motivational_quotes/Home_Screen.dart';
import 'package:motivational_quotes/categaory_screen.dart';
import 'package:motivational_quotes/details_screen.dart';
import 'package:motivational_quotes/quotes_screen.dart';

void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const HomeScreen(),
        'category_screen' : (context) => const CategoryOrAuthorPage(),
        'details_screen' : (context) => const DetailsPage(),
        'quotes_screen' : (context) => const QuotesPage(),
      },
    ),
  );
}