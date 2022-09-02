import 'package:i_am_rich/http_service.dart';
import 'package:i_am_rich/post_model.dart';
import 'package:flutter/material.dart';
import 'settings.dart';

class GridPage extends StatefulWidget {
  const GridPage({Key? gridPage}) : super(key: gridPage);

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  double gridPricing = 0;
  double gridPricingBackup = 0;
  String gridPricingString = '';
  bool isLoaded = false;
  Post? posts;

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

        if (posts!.field2!.gridPrice != null) {
          gridPricing = posts!.field2!.gridPrice!;
          gridPricingBackup = gridPricing;
          gridPricingString = gridPricing.toStringAsFixed(2);
        } else {
          gridPricing = gridPricingBackup;
          gridPricingString = gridPricing.toStringAsFixed(2);
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
                const GridImage(),
                Text(
                  '\$' + gridPricingString + '\nkW/h',
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

class GridImage extends StatelessWidget {
  const GridImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/gridFull.png',
      height: 150,
      width: 150,
    );
  }
}
