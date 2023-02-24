import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: _height / 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage:
                        const AssetImage('assets/images/logoW.png'),
                    radius: _height / 5,
                  ),
                  SizedBox(
                    height: _height / 30,
                  ),
                  const Text(
                    'OpenWeather',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: _height / 30,
                  ),
                  const Text(
                    'OpenWeatherMap es un servicio en línea, propiedad de OpenWeather Ltd, que proporciona datos meteorológicos globales a través de API, incluidos datos meteorológicos actuales, pronósticos, predicciones inmediatas y datos meteorológicos históricos para cualquier ubicación geográfica. ',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}