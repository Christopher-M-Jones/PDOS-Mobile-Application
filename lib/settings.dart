import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'help.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //if(DLMode.DLswitchvalue)

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
              onPressed: () {},
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
                  '\nSettings',
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
                      DLMode(),
                      SizedBox(height: 16),
                      HelpSupport(),
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

class HelpSupport extends StatefulWidget {
  const HelpSupport({Key? key}) : super(key: key);

  @override
  State<HelpSupport> createState() => _HelpSupport();
}

class _HelpSupport extends State<HelpSupport> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Ink.image(
          image: const AssetImage('images/help.png'),
          height: 70,
          width: 350,
          fit: BoxFit.fitWidth,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HelpPage();
                  },
                ),
              );
            },
            borderRadius: BorderRadius.circular(30),
            splashColor: Colors.white60,
          ),
        ),
      ],
    );
  }
}

/*
child: shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18.0),
side: BorderSide(color: Colors.red)
*/

class DLMode extends StatefulWidget {
  const DLMode({Key? key}) : super(key: key);

  @override
  State<DLMode> createState() => _DLMode();
}

class _DLMode extends State<DLMode> {
  bool DLswitchValue = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Ink.image(
          image: const AssetImage('images/DLF.png'),
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
                  value: DLswitchValue,
                  onChanged: (value) {
                    setState(() {
                      DLswitchValue = value;
                    });
                  }),
            )),
      ],
    );
  }
}
