import 'package:flutter/material.dart';
import 'package:untitled7/ui/home/botton_navitem.dart';
import 'package:untitled7/ui/home/hadeth/hadeth_tab.dart';
import 'package:untitled7/ui/home/quran/quran_tab.dart';
import 'package:untitled7/ui/home/radio/radio_tab.dart';
import 'package:untitled7/ui/home/tasbeh/tasbeh_tab.dart';
import 'package:untitled7/ui/theme/DefaultScreen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
        ),
        body: tabs[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavItem("Quran", 'quran.png'),
            BottomNavItem("Hadeth", 'quran-quran-svgrepo-com.png'),
            BottomNavItem("Tasbeh", 'sebha.png'),
            BottomNavItem("Radio", 'radio.png'),
          ],
        ),
      ),
    );
  }

  var tabs = [QuranbTab(), HadethTab(), TasbehTab(), RadioTab()];
}
