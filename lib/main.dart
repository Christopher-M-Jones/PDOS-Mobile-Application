import 'package:flutter/material.dart';
import 'grid.dart';
import 'slots.dart';
import 'solar.dart';
import 'temperature.dart';
import 'weather.dart';
import 'battery.dart';
import 'user.dart';
import 'settings.dart';
import 'about.dart';
import 'notifications.dart';
import 'team.dart';
import 'splashScreen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'splashScreen2.dart';
import 'package:firebase_core/firebase_core.dart';

//Main function
void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? homepage}) : super(key: homepage);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
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
      drawer: const NavigationDrawerWidget(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                BatteryButton(),
                GridButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                SolarButton(),
                SlotsButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                WeatherButton(),
                TemperatureButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BatteryButton extends StatefulWidget {
  const BatteryButton({Key? key}) : super(key: key);

  @override
  State<BatteryButton> createState() => _BatteryButtonState();
}

class _BatteryButtonState extends State<BatteryButton> {
  @override
  Widget build(BuildContext context) {
    return Ink.image(
      image: const AssetImage('images/battery.png'),
      height: 180,
      width: 180,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const BatteryPage();
              },
            ),
          );
        },
        borderRadius: BorderRadius.circular(30),
        splashColor: Colors.white60,
      ),
    );
  }
}

class GridButton extends StatefulWidget {
  const GridButton({Key? key}) : super(key: key);

  @override
  _GridButtonState createState() => _GridButtonState();
}

class _GridButtonState extends State<GridButton> {
  @override
  Widget build(BuildContext context) {
    return Ink.image(
      image: const AssetImage('images/grid.png'),
      height: 180,
      width: 180,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const GridPage();
              },
            ),
          );
        },
        borderRadius: BorderRadius.circular(30),
        splashColor: Colors.white60,
      ),
    );
  }
}

class SolarButton extends StatefulWidget {
  const SolarButton({Key? key}) : super(key: key);

  @override
  _SolarButtonState createState() => _SolarButtonState();
}

class _SolarButtonState extends State<SolarButton> {
  @override
  Widget build(BuildContext context) {
    return Ink.image(
      image: const AssetImage('images/solar.png'),
      height: 180,
      width: 180,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const SolarPage();
              },
            ),
          );
        },
        borderRadius: BorderRadius.circular(30),
        splashColor: Colors.white60,
      ),
    );
  }
}

class SlotsButton extends StatefulWidget {
  const SlotsButton({Key? key}) : super(key: key);

  @override
  _SlotsButtonState createState() => _SlotsButtonState();
}

class _SlotsButtonState extends State<SlotsButton> {
  @override
  Widget build(BuildContext context) {
    return Ink.image(
      image: const AssetImage('images/powerslots.png'),
      height: 180,
      width: 180,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const SlotsPage();
              },
            ),
          );
        },
        borderRadius: BorderRadius.circular(30),
        splashColor: Colors.white60,
      ),
    );
  }
}

class WeatherButton extends StatefulWidget {
  const WeatherButton({Key? key}) : super(key: key);

  @override
  _WeatherButtonState createState() => _WeatherButtonState();
}

class _WeatherButtonState extends State<WeatherButton> {
  @override
  Widget build(BuildContext context) {
    return Ink.image(
      image: const AssetImage('images/weather.png'),
      height: 180,
      width: 180,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const WeatherPage();
              },
            ),
          );
        },
        borderRadius: BorderRadius.circular(30),
        splashColor: Colors.white60,
      ),
    );
  }
}

class TemperatureButton extends StatefulWidget {
  const TemperatureButton({Key? key}) : super(key: key);

  @override
  _TemperatureButtonState createState() => _TemperatureButtonState();
}

class _TemperatureButtonState extends State<TemperatureButton> {
  @override
  Widget build(BuildContext context) {
    return Ink.image(
      image: const AssetImage('images/temperature.png'),
      height: 180,
      width: 180,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const TemperaturePage();
              },
            ),
          );
        },
        borderRadius: BorderRadius.circular(30),
        splashColor: Colors.white60,
      ),
    );
  }
}

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  static const name = 'Chris';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.grey[900],
        child: ListView(
          children: <Widget>[
            InkWell(
              child: buildHeader(
                name: name,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const UserProfile();
                    },
                  ),
                );
              },
              borderRadius: BorderRadius.circular(30),
              splashColor: Colors.white60,
            ),
            const Divider(color: Colors.white70),
            const SizedBox(height: 4),
            buildMenuItem(
              text: 'Settings',
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Notifications',
              icon: Icons.notifications_outlined,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 16),
            //const Divider(color: Colors.white70),
            //const SizedBox(height: 8),
            //const SizedBox(height: 16),
            buildMenuItem(
              text: 'About',
              icon: Icons.workspaces_outline,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Team',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white;
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: const TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const TeamPage(),
        ),
      );
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SettingsPage(),
        ),
      );
      break;
    case 2:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const AboutPage(),
        ),
      );
      break;
    case 3:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const NotificationsPage(),
        ),
      );
      break;
  }
}

Widget buildHeader({
  required String name,
}) =>
    InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Row(
          children: [
            const SizedBox(width: 15),
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/chris.png'),
            ),
            const SizedBox(width: 30),
            Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Christopher Jones',
                      style: TextStyle(fontSize: 20, color: Colors.white70),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: const [
                    Text(
                      'emailaddress@gmail.com',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );

/*
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('anis/pdosani.json'),
      ),
    );
  }
}


 */
