import 'package:donutappui/tabs/burger_tab.dart';
import 'package:donutappui/tabs/pancake_tab.dart';
import 'package:donutappui/tabs/pizza_tab.dart';
import 'package:donutappui/tabs/smoothie_tab.dart';
import 'package:donutappui/util/my_tab.dart';
import 'package:flutter/material.dart';

import '../tabs/donut_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  List<Widget> myTabs = const [
    // donut tab
    MyTab(
      iconPath: "lib/icons/donut.png",
    ),
    // burger tab
    MyTab(
      iconPath: "lib/icons/burger.png",
    ),
    // smoothie tab
    MyTab(
      iconPath: "lib/icons/smoothie.png",
    ),
    // pancake tab
    MyTab(
      iconPath: "lib/icons/pancakes.png",
    ),
    // pizza tab
    MyTab(
      iconPath: "lib/icons/pizza.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(
                Icons.person,
                color: Colors.grey[800],
                size: 36,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // I want to eat
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                // ignore: unnecessary_const
                children: const [
                  Text(
                    "I Want to ",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Eat",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            // tab bar
            const SizedBox(
              height: 24,
            ),
            TabBar(tabs: myTabs),

            // tab bar view
            const Expanded(
                child: TabBarView(children: [
              DonutTab(),
              BurgerTab(),
              SmoothieTab(),
              PancakeTab(),
              PizzaTab(),
            ]))
          ],
        ),
      ),
    );
  }
}
