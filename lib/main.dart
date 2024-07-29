import 'package:flutter/material.dart';
import 'package:untitled7/ui/chapterDetails/chapter_details.dart';
import 'package:untitled7/ui/hadethDetails/hadeth_details.dart';
import 'package:untitled7/ui/home/home_screen.dart';
import 'package:untitled7/ui/splash/splash_screen.dart';
import 'package:untitled7/ui/theme/MyTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetails.routeName: (_) => ChapterDetails(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },
      theme: MyThemeData.lightTheme,
    );
  }
}
