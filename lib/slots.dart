import 'package:i_am_rich/http_service.dart';
import 'package:i_am_rich/post_model.dart';
import 'package:flutter/material.dart';
import 'settings.dart';

class SlotsPage extends StatefulWidget {
  const SlotsPage({Key? gridPage}) : super(key: gridPage);

  @override
  State<SlotsPage> createState() => _SlotsPageState();
}

class _SlotsPageState extends State<SlotsPage> {
  Post? posts;
  bool isLoaded = false;
  static String slotOneString = 'images/emptyslot1.png';
  static String slotTwoString = 'images/emptyslot2.png';

  static String slotNumber1 = 'Slot #1';
  static String slotNumber2 = 'Slot #2';

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

        if (posts!.field2!.powerSlotOne == 0) {
          slotOneString = 'images/emptyslot1.png';
        } else if (posts!.field2!.powerSlotOne == 1) {
          slotOneString = 'images/solarslot1.png';
        } else if (posts!.field2!.powerSlotOne == 2) {
          slotOneString = 'images/batteryslot1.png';
        } else {
          slotOneString = 'images/gridslot1.png';
        }

        if (posts!.field2!.powerSlotTwo == 0) {
          slotTwoString = 'images/emptyslot2.png';
        } else if (posts!.field2!.powerSlotTwo == 1) {
          slotTwoString = 'images/solarslot1.png';
        } else if (posts!.field2!.powerSlotTwo == 2) {
          slotTwoString = 'images/batteryslot2.png';
        } else {
          slotTwoString = 'images/gridslot2.png';
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
            image: AssetImage('images/gradientorange.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SlotsImage(
                  slot: slotOneString,
                  slotNumber: slotNumber1,
                ),
                SlotsImage(
                  slot: slotTwoString,
                  slotNumber: slotNumber2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SlotsImage extends StatelessWidget {
  const SlotsImage({Key? key, required this.slot, required this.slotNumber})
      : super(key: key);

  final String slot;
  final String slotNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          slot,
          height: 150,
          width: 150,
        ),
        Text(
          slotNumber,
          style: const TextStyle(
            fontSize: 25.0,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
