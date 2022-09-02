import 'package:flutter/material.dart';
import 'package:i_am_rich/http_service.dart';
import 'package:i_am_rich/post_model.dart';
import 'settings.dart';

class SolarPage extends StatefulWidget {
  const SolarPage({Key? gridPage}) : super(key: gridPage);

  @override
  State<SolarPage> createState() => _SolarPageState();
}

class _SolarPageState extends State<SolarPage> {
  double solarWattage = 0;
  double solarWattageBackup = 0;
  String solarWattageString = '';

  Post? posts;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();

    //fetch data from API
    //print("getting data");
    getData();
  }

  getData() async {
    posts = await HttpService().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;

        if (posts!.field2!.solarIrradiance != null) {
          solarWattage = posts!.field2!.solarIrradiance!;
          solarWattageBackup = solarWattage;
          solarWattageString = solarWattage.toStringAsFixed(2);
        } else {
          solarWattage = solarWattageBackup;
          solarWattageString = solarWattage.toStringAsFixed(2);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          backgroundColor: Colors.grey[850],
          title: Image.asset(
            'images/logo.png',
            height: 99.0,
            width: 100.0,
          ),
          centerTitle: true,
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/gradientblue.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SolarImage(),
                Text(
                  solarWattageString + '\nW/m' + '\u00B2',
                  style: const TextStyle(
                    fontSize: 50.0,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SolarImage extends StatelessWidget {
  const SolarImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/solarpanel.png',
      height: 200,
      width: 200,
    );
  }
}
