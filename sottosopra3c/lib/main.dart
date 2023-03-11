import 'package:flutter/material.dart';
import 'package:sottosopra3c/main_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sottosopra3c',
      theme: ThemeData(
      
        
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    
    debugShowCheckedModeBanner: false,
    );
    
  }
}

 