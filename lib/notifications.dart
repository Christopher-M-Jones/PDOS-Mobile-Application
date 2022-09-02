import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'settings.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

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
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  '\nNotifications',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                    height:
                        0), //5 items in the row provide proper spacing for 'settings' text
                SizedBox(height: 0), //4 empty boxes
                SizedBox(height: 0),
                SizedBox(height: 0),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      NotificationButton(),
                    ])
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [])
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationButton extends StatefulWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  State<NotificationButton> createState() => _NotificationButton();
}

class _NotificationButton extends State<NotificationButton> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Ink.image(
          image: const AssetImage('images/notes.png'),
          height: 70,
          width: 350,
          fit: BoxFit.fitWidth,
        ),
        Positioned.fill(
            left: 250,
            top: 5,
            child: Transform.scale(
              scale: 1.2,
              child: CupertinoSwitch(
                  activeColor: Colors.teal,
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  }),
            )),
      ],
    );
  }
}
