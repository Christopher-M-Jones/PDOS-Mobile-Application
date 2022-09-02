import 'package:i_am_rich/http_service.dart';
import 'package:i_am_rich/post_model.dart';
import 'package:flutter/material.dart';
import 'settings.dart';

class BatteryPage extends StatefulWidget {
  const BatteryPage({Key? gridPage}) : super(key: gridPage);

  @override
  State<BatteryPage> createState() => _BatteryPageState();
}

class _BatteryPageState extends State<BatteryPage> {
  double batteryPercent = 0;
  double batteryPercentBackup = 0;
  String batteryPercentString = '';
  Post? posts;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    //fetch data from API
    getData();
  }

  getData() async {
    posts = await HttpService().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;

        if (posts!.field2!.stateOfCharge != null) {
          batteryPercent =
              ((posts!.field2!.stateOfCharge! - 2.75) / (4.0 - 2.75)) * 100;
          batteryPercentBackup = batteryPercent;
          batteryPercentString = batteryPercent.toStringAsFixed(1);
        } else {
          batteryPercent = batteryPercentBackup;
          batteryPercentString = batteryPercent.toStringAsFixed(1);
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
                const BatteryImage(),
                Text(
                  batteryPercentString + '%',
                  style: const TextStyle(
                    fontSize: 50.0,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BatteryImage extends StatelessWidget {
  const BatteryImage({Key? key}) : super(key: key);

  //String batteryImageHalf = '';

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/battery34.png',
      height: 200,
      width: 200,
    );
  }
}
