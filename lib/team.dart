import 'package:flutter/material.dart';
import 'settings.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({Key? key}) : super(key: key);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Power-Distribution Optimization System',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal[600],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Profile(),
                Profile2(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Profile3(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Profile4(),
                Profile5(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('images/chris.png'),
        ),
        Text(
          '\nChristopher Jones',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 20.0,
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Profile2 extends StatelessWidget {
  const Profile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('images/liam.png'),
        ),
        Text(
          '\nLiam Nelson',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 20.0,
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Profile3 extends StatelessWidget {
  const Profile3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('images/alex.png'),
        ),
        Text(
          '\nAlex Cain',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 20.0,
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Profile4 extends StatelessWidget {
  const Profile4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('images/thomas.png'),
        ),
        Text(
          '\nThomas Frye',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 20.0,
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Profile5 extends StatelessWidget {
  const Profile5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('images/noah.png'),
        ),
        Text(
          '\nNoah Morrison',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 20.0,
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
