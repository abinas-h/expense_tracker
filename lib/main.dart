import 'package:expense_tracker/routs/login_page.dart';
import 'package:expense_tracker/utils/utilities_file.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme:
            ColorScheme.fromSeed(seedColor: FrequentColors.buttonColor),

        useMaterial3: true,
      ),
      home:  HomeScreen(),
    );
  }
}
