import 'package:flutter/material.dart';
import 'settings.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          backgroundColor: Colors.grey[850],
          centerTitle: true,
          title: Image.asset(
            'images/logo.png',
            height: 99.0,
            width: 100.0,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SettingsPage();
                    },
                  ),
                );
              },
              icon: Icon(
                Icons.settings,
                color: Colors.teal[400],
              ),
            ),
          ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //SizedBox(height: 30),
              Stack(
                children: <Widget>[
                  Text(
                    'About',
                    style: TextStyle(
                        fontFamily: 'Devanagari',
                        fontSize: 35.0,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = Colors.white60),
                  ),
                  const Text(
                    'About',
                    style: TextStyle(
                      fontFamily: 'Devanagari',
                      //fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
              //SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: Text(
                      'P-DOS (Power-Distribution Optimization System) is a novel feature for the open-source building management system controller "BASpi-Edge", made by Contemporary Controls. \n\nIts purpose is to automate and optimize the distribution of three energy generation sources (solar, grid, and battery) that provide power to all applications in a residential building. \n\nThis is achieved through intelligent switching of energy sources in response to input data such as energy pricing from local utility providers, as well as weather forecasting, that determines when a given source should be utilized to maximize cost savings.\n\n\n',
                      style: TextStyle(
                        fontFamily: 'Devanagari',
                        color: Colors.white60,
                        fontSize: 15.0,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
