import 'package:flutter/material.dart';
import 'package:journalist_app/layout/home_screen.dart';
import 'package:journalist_app/screens/Search_Screen.dart';
import 'package:journalist_app/shared/styles/my_theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute:HomeLayout.routeName ,
      routes: {
        HomeLayout.routeName:(context)=>HomeLayout(),
        Search.routeName:(context)=>Search()
      },
      theme: MyThemeData.lightTheme,
      debugShowCheckedModeBanner:false ,

    );
  }
}
