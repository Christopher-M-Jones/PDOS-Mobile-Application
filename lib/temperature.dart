import 'package:flutter/material.dart';
import 'package:i_am_rich/http_service.dart';
import 'package:i_am_rich/post_model.dart';
import 'settings.dart';

class TemperaturePage extends StatefulWidget {
  const TemperaturePage({Key? gridPage}) : super(key: gridPage);

  @override
  State<TemperaturePage> createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  int? tempFahr = 0;
  int? tempCels = 0;
  int? tempFahrBackup = 0;
  int? tempCelsBackup = 0;
  Post? posts;

  bool _hasBeenPressed = false;

  var isLoaded = false;

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

        //convert K to F
        //print("here's post.temp:");
        //print(posts!.field1!.temp);

        if (posts!.field1!.temp != null) {
          tempFahr = (((posts!.field1!.temp!) - 273.15) * (9 / 5) + 32).toInt();
          tempCels = ((tempFahr! - 32) * (5 / 9)).toInt();

          tempFahrBackup = tempFahr;
          tempCelsBackup = tempCels;
        } else {
          tempFahr = tempFahrBackup;
          tempCels = tempCelsBackup;
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
                const TemperatureImage(),
                Column(
                  children: [
                    Text(
                      _hasBeenPressed
                          ? '$tempCels' '\u2103'
                          : '$tempFahr' '\u2109',
                      style: const TextStyle(
                        fontSize: 50.0,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.teal,
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(16.0),
                              primary: Colors.white,
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            onPressed: () {
                              setState(() {
                                _hasBeenPressed = !_hasBeenPressed;
                              });
                              //buttonText = 'Switch to Fahrenheit';
                              //temp = tempCels;
                            },
                            child: Text(_hasBeenPressed
                                ? "Switch to Fahrenheit"
                                : "Switch to Celsius"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TemperatureImage extends StatelessWidget {
  const TemperatureImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/fahr.png',
      height: 200,
      width: 200,
    );
  }
}
