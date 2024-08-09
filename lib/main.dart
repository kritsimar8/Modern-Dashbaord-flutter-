import 'package:flutter/material.dart';
import 'package:modern_dashboard/dashboard.dart';
import 'package:modern_dashboard/style/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
        title:'Flutter demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: AppColors.primarybg
    ),
    home: Dashboard(),
    );
  }
}