import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);
  static const txtcolor = Color(0xFF525050);
  static const bgtxtcolor = Color(0xFF707070);
  static const buttoncolor = Color(0xFFF2A948);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/gradientblue.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: <Widget>[
                        Text(
                          'Need Help?',
                          style: TextStyle(
                              fontFamily: 'Devanagari',
                              fontSize: 35.0,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = bgtxtcolor),
                        ),
                        const Text(
                          'Need Help?',
                          style: TextStyle(
                            fontFamily: 'Devanagari',
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: txtcolor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'We are here for you.',
                      style: TextStyle(
                        fontFamily: 'Devanagari',
                        //fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: txtcolor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Ink.image(
                      image: const AssetImage('images/talkingbubble.png'),
                      height: 70,
                      width: 100,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Get in touch with our',
                      style: TextStyle(
                        fontFamily: 'Devanagari',
                        //fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: txtcolor,
                      ),
                    ),
                    const Text(
                      'customer support team.',
                      style: TextStyle(
                        fontFamily: 'Devanagari',
                        //fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: txtcolor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: buttoncolor,
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                              primary: Colors.black,
                              textStyle: const TextStyle(
                                fontFamily: 'Devanagari',
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: txtcolor,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Submit a ticket'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Ink.image(
                      image: const AssetImage('images/manual.png'),
                      height: 70,
                      width: 100,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Get to know your',
                      style: TextStyle(
                        fontFamily: 'Devanagari',
                        //fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: txtcolor,
                      ),
                    ),
                    const Text(
                      'PDOS device',
                      style: TextStyle(
                        fontFamily: 'Devanagari',
                        //fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: txtcolor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: buttoncolor,
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
                              primary: Colors.black,
                              textStyle: const TextStyle(
                                fontFamily: 'Devanagari',
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: txtcolor,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('View User Guide'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Stack(
                      children: <Widget>[
                        Text(
                          'Contact Us',
                          style: TextStyle(
                              fontFamily: 'Devanagari',
                              fontSize: 22.0,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = Colors.white70),
                        ),
                        const Text(
                          'Contact Us',
                          style: TextStyle(
                            fontFamily: 'Devanagari',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'pdoshelpandsupport.com',
                      style: TextStyle(
                        fontFamily: 'Devanagari',
                        //fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                    const Text(
                      '224-350-7648',
                      style: TextStyle(
                        fontFamily: 'Devanagari',
                        //fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white70,
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
        ),
      ],
    );
  }
}

class DLMode extends StatefulWidget {
  const DLMode({Key? key}) : super(key: key);

  @override
  State<DLMode> createState() => _DLMode();
}

class _DLMode extends State<DLMode> {
  bool switchValue = false;

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
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                }),
          ),
        ),
      ],
    );
  }
}
