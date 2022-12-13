import 'package:flutter/material.dart';
import 'LastPage.dart';
import 'HomePage.dart';
import 'PlanPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Home_Page',
      routes: {
        'Home_Page': (context) => const Home_Page(),
        'Plan_Page': (context) => const Plan_Page(),
        'Last_Page': (context) => const Last_Page(),
      },
    ),
  );
  }
