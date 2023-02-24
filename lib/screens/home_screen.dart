import 'package:app_weather_exam/page/about_page.dart';
import 'package:app_weather_exam/page/collage_page.dart';
import 'package:app_weather_exam/page/contact_page.dart';
import 'package:app_weather_exam/page/cuenca_page.dart';
import 'package:app_weather_exam/page/favorite_page.dart';
import 'package:app_weather_exam/page/latacunga_page.dart';
import 'package:app_weather_exam/page/quito_page.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        actions: [
          const IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          PopupMenuButton<int>(
            onSelected: (value) {
              onSelected(context, value);
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(child: Text("contact us"), value: 0),
                const PopupMenuItem(child: Text("About"), value: 1),
              ];
            },
          )
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: const [
            Tab(
              text: "Quito",
            ),
            Tab(
              text: "Latacunga",
            ),
            Tab(
              text: "Cuenca",
            ),
            Tab(
              text: "Collage",
            ),
            Tab(
              text: "Favorite",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          QuitoPage(),
          LatacungaPage(),
          CuencaPage(),
          CollagePage(),
          FavoritePage()
        ],
      ),
    );
  }
}

void onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const ContactPage()),
      );
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const AboutPage()),
      );
  }
}
