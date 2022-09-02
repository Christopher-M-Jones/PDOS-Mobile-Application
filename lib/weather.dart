import 'package:i_am_rich/http_service.dart';
import 'package:i_am_rich/post_model.dart';
import 'package:flutter/material.dart';
import 'settings.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? weatherPage}) : super(key: weatherPage);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  OpenWeatherPost? posts;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    posts = await OpenWeatherHttpService().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String? hourOneWeather = posts?.hourly[0].weather[0].main.toString();
    double? hourOneTemp = posts?.hourly[0].temp;
    String? hourOneTempString =
        (((hourOneTemp ?? 0) - 273.15) * (9 / 5) + 32).toInt().toString() +
            '\u2109';

    String? hourTwoWeather = posts?.hourly[1].weather[0].main.toString();
    double? hourTwoTemp = posts?.hourly[1].temp;
    String? hourTwoTempString =
        (((hourTwoTemp ?? 0) - 273.15) * (9 / 5) + 32).toInt().toString() +
            '\u2109';

    String? hourThreeWeather = posts?.hourly[2].weather[0].main.toString();
    double? hourThreeTemp = posts?.hourly[2].temp;
    String? hourThreeTempString =
        (((hourThreeTemp ?? 0) - 273.15) * (9 / 5) + 32).toInt().toString() +
            '\u2109';

    String? hourFourWeather = posts?.hourly[3].weather[0].main.toString();
    double? hourFourTemp = posts?.hourly[3].temp;
    String? hourFourTempString =
        (((hourFourTemp ?? 0) - 273.15) * (9 / 5) + 32).toInt().toString() +
            '\u2109';

    String? hourFiveWeather = posts?.hourly[4].weather[0].main.toString();
    double? hourFiveTemp = posts?.hourly[4].temp;
    String? hourFiveTempString =
        (((hourFiveTemp ?? 0) - 273.15) * (9 / 5) + 32).toInt().toString() +
            '\u2109';

    String? hourSixWeather = posts?.hourly[5].weather[0].main.toString();
    double? hourSixTemp = posts?.hourly[5].temp;
    String? hourSixTempString =
        (((hourSixTemp ?? 0) - 273.15) * (9 / 5) + 32).toInt().toString() +
            '\u2109';

    String? hourSevenWeather = posts?.hourly[6].weather[0].main.toString();
    double? hourSevenTemp = posts?.hourly[6].temp;
    String? hourSevenTempString =
        (((hourSevenTemp ?? 0) - 273.15) * (9 / 5) + 32).toInt().toString() +
            '\u2109';

    String? hourEightWeather = posts?.hourly[7].weather[0].main.toString();
    double? hourEightTemp = posts?.hourly[7].temp;
    String? hourEightTempString =
        (((hourEightTemp ?? 0) - 273.15) * (9 / 5) + 32).toInt().toString() +
            '\u2109';

    var datetime = DateTime.now();

    String weekdayString = '';
    String monthString = '';

    String day = datetime.day.toString();
    String year = datetime.year.toString();
    int hour = datetime.hour;

    String hourStringOne = '';
    String hourStringTwo = '';
    String hourStringThree = '';
    String hourStringFour = '';
    String hourStringFive = '';
    String hourStringSix = '';
    String hourStringSeven = '';
    String hourStringEight = '';

    switch (datetime.hour) {
      case 0:
        {
          hourStringOne = '12:00\n  am';
          hourStringTwo = '1:00\n  am';
          hourStringThree = '2:00\n  am';
          hourStringFour = '3:00\n  am';
          hourStringFive = '4:00\n  am';
          hourStringSix = '5:00\n  am';
          hourStringSeven = '6:00\n  am';
          hourStringEight = '7:00\n  am';
        }
        break;
      case 1:
        {
          hourStringOne = '1:00\n  am';
          hourStringTwo = '2:00\n  am';
          hourStringThree = '3:00\n  am';
          hourStringFour = '4:00\n  am';
          hourStringFive = '5:00\n  am';
          hourStringSix = '6:00\n  am';
          hourStringSeven = '7:00\n  am';
          hourStringEight = '8:00\n  am';
        }
        break;
      case 2:
        {
          hourStringOne = '2:00\n  am';
          hourStringTwo = '3:00\n  am';
          hourStringThree = '4:00\n  am';
          hourStringFour = '5:00\n  am';
          hourStringFive = '6:00\n  am';
          hourStringSix = '7:00\n  am';
          hourStringSeven = '8:00\n  am';
          hourStringEight = '9:00\n  am';
        }
        break;
      case 3:
        {
          hourStringOne = '3:00\n  am';
          hourStringTwo = '4:00\n  am';
          hourStringThree = '5:00\n  am';
          hourStringFour = '6:00\n  am';
          hourStringFive = '7:00\n  am';
          hourStringSix = '8:00\n  am';
          hourStringSeven = '9:00\n  am';
          hourStringEight = '10:00\n  am';
        }
        break;
      case 4:
        {
          hourStringOne = '4:00\n  am';
          hourStringTwo = '5:00\n  am';
          hourStringThree = '6:00\n  am';
          hourStringFour = '7:00\n  am';
          hourStringFive = '8:00\n  am';
          hourStringSix = '9:00\n  am';
          hourStringSeven = '10:00\n  am';
          hourStringEight = '11:00\n  am';
        }
        break;
      case 5:
        {
          hourStringOne = '5:00\n  am';
          hourStringTwo = '6:00\n  am';
          hourStringThree = '7:00\n  am';
          hourStringFour = '8:00\n  am';
          hourStringFive = '9:00\n  am';
          hourStringSix = '10:00\n  am';
          hourStringSeven = '11:00\n  am';
          hourStringEight = '12:00\n  pm';
        }
        break;
      case 6:
        {
          hourStringOne = '6:00\n  am';
          hourStringTwo = '7:00\n  am';
          hourStringThree = '8:00\n  am';
          hourStringFour = '9:00\n  am';
          hourStringFive = '10:00\n  am';
          hourStringSix = '11:00\n  am';
          hourStringSeven = '12:00\n  pm';
          hourStringEight = '1:00\n  pm';
        }
        break;
      case 7:
        {
          hourStringOne = '7:00\n  am';
          hourStringTwo = '8:00\n  am';
          hourStringThree = '9:00\n  am';
          hourStringFour = '10:00\n  am';
          hourStringFive = '11:00\n  am';
          hourStringSix = '12:00\n  pm';
          hourStringSeven = '1:00\n  pm';
          hourStringEight = '2:00\n  pm';
        }
        break;
      case 8:
        {
          hourStringOne = '8:00\n  am';
          hourStringTwo = '9:00\n  am';
          hourStringThree = '10:00\n  am';
          hourStringFour = '11:00\n  am';
          hourStringFive = '12:00\n  pm';
          hourStringSix = '1:00\n  pm';
          hourStringSeven = '2:00\n  pm';
          hourStringEight = '3:00\n  pm';
        }
        break;
      case 9:
        {
          hourStringOne = '9:00\n  am';
          hourStringTwo = '10:00\n  am';
          hourStringThree = '11:00\n  am';
          hourStringFour = '12:00\n  pm';
          hourStringFive = '1:00\n  pm';
          hourStringSix = '2:00\n  pm';
          hourStringSeven = '3:00\n  pm';
          hourStringEight = '4:00\n  pm';
        }
        break;
      case 10:
        {
          hourStringOne = '10:00\n  am';
          hourStringTwo = '11:00\n  am';
          hourStringThree = '12:00\n  pm';
          hourStringFour = '1:00\n  pm';
          hourStringFive = '2:00\n  pm';
          hourStringSix = '3:00\n  pm';
          hourStringSeven = '4:00\n  pm';
          hourStringEight = '5:00\n  pm';
        }
        break;
      case 11:
        {
          hourStringOne = '11:00\n  am';
          hourStringTwo = '12:00\n  pm';
          hourStringThree = '1:00\n  pm';
          hourStringFour = '2:00\n  pm';
          hourStringFive = '3:00\n  pm';
          hourStringSix = '4:00\n  pm';
          hourStringSeven = '5:00\n  pm';
          hourStringEight = '6:00\n  pm';
        }
        break;
      case 12:
        {
          hourStringOne = '12:00\n  pm';
          hourStringTwo = '1:00\n  pm';
          hourStringThree = '2:00\n  pm';
          hourStringFour = '3:00\n  pm';
          hourStringFive = '4:00\n  pm';
          hourStringSix = '5:00\n  pm';
          hourStringSeven = '6:00\n  pm';
          hourStringEight = '7:00\n  pm';
        }
        break;
      case 13:
        {
          hourStringOne = '1:00\n  pm';
          hourStringTwo = '2:00\n  pm';
          hourStringThree = '3:00\n  pm';
          hourStringFour = '4:00\n  pm';
          hourStringFive = '5:00\n  pm';
          hourStringSix = '6:00\n  pm';
          hourStringSeven = '7:00\n  pm';
          hourStringEight = '8:00\n  pm';
        }
        break;
      case 14:
        {
          hourStringOne = '2:00\n  pm';
          hourStringTwo = '3:00\n  pm';
          hourStringThree = '4:00\n  pm';
          hourStringFour = '5:00\n  pm';
          hourStringFive = '6:00\n  pm';
          hourStringSix = '7:00\n  pm';
          hourStringSeven = '8:00\n  pm';
          hourStringEight = '9:00\n  pm';
        }
        break;
      case 15:
        {
          hourStringOne = '3:00\n  pm';
          hourStringTwo = '4:00\n  pm';
          hourStringThree = '5:00\n  pm';
          hourStringFour = '6:00\n  pm';
          hourStringFive = '7:00\n  pm';
          hourStringSix = '8:00\n  pm';
          hourStringSeven = '9:00\n  pm';
          hourStringEight = '10:00\n  pm';
        }
        break;
      case 16:
        {
          hourStringOne = '4:00\n  pm';
          hourStringTwo = '5:00\n  pm';
          hourStringThree = '6:00\n  pm';
          hourStringFour = '7:00\n  pm';
          hourStringFive = '8:00\n  pm';
          hourStringSix = '9:00\n  pm';
          hourStringSeven = '10:00\n  pm';
          hourStringEight = '11:00\n  pm';
        }
        break;
      case 17:
        {
          hourStringOne = '5:00\n  pm';
          hourStringTwo = '6:00\n  pm';
          hourStringThree = '7:00\n  pm';
          hourStringFour = '8:00\n  pm';
          hourStringFive = '9:00\n  pm';
          hourStringSix = '10:00\n  pm';
          hourStringSeven = '11:00\n  pm';
          hourStringEight = '12:00\n  am';
        }
        break;
      case 18:
        {
          hourStringOne = '6:00\n  pm';
          hourStringTwo = '7:00\n  pm';
          hourStringThree = '8:00\n  pm';
          hourStringFour = '9:00\n  pm';
          hourStringFive = '10:00\n  pm';
          hourStringSix = '11:00\n  pm';
          hourStringSeven = '12:00\n  am';
          hourStringEight = '1:00\n  am';
        }
        break;
      case 19:
        {
          hourStringOne = '7:00\n  pm';
          hourStringTwo = '8:00\n  pm';
          hourStringThree = '9:00\n  pm';
          hourStringFour = '10:00\n  pm';
          hourStringFive = '11:00\n  pm';
          hourStringSix = '12:00\n  am';
          hourStringSeven = '1:00\n  am';
          hourStringEight = '2:00\n  am';
        }
        break;
      case 20:
        {
          hourStringOne = '8:00\n  pm';
          hourStringTwo = '9:00\n  pm';
          hourStringThree = '10:00\n  pm';
          hourStringFour = '11:00\n  pm';
          hourStringFive = '12:00\n  am';
          hourStringSix = '1:00\n  am';
          hourStringSeven = '2:00\n  am';
          hourStringEight = '3:00\n  am';
        }
        break;
      case 21:
        {
          hourStringOne = '9:00\n  pm';
          hourStringTwo = '10:00\n  pm';
          hourStringThree = '11:00\n  pm';
          hourStringFour = '12:00\n  am';
          hourStringFive = '1:00\n  am';
          hourStringSix = '2:00\n  am';
          hourStringSeven = '3:00\n  am';
          hourStringEight = '4:00\n  am';
        }
        break;
      case 22:
        {
          hourStringOne = '10:00\n  pm';
          hourStringTwo = '11:00\n  pm';
          hourStringThree = '12:00\n  am';
          hourStringFour = '1:00\n  am';
          hourStringFive = '2:00\n  am';
          hourStringSix = '3:00\n  am';
          hourStringSeven = '4:00\n  am';
          hourStringEight = '5:00\n  am';
        }
        break;
      case 23:
        {
          hourStringOne = '11:00\n  pm';
          hourStringTwo = '12:00\n  am';
          hourStringThree = '1:00\n  am';
          hourStringFour = '2:00\n  am';
          hourStringFive = '3:00\n  am';
          hourStringSix = '4:00\n  am';
          hourStringSeven = '5:00\n  am';
          hourStringEight = '6:00\n  am';
        }
        break;
    }

    switch (datetime.weekday) {
      case 1:
        {
          weekdayString = "Monday";
        }
        break;
      case 2:
        {
          weekdayString = "Tuesday";
        }
        break;
      case 3:
        {
          weekdayString = "Wednesday";
        }
        break;
      case 4:
        {
          weekdayString = "Thursday";
        }
        break;
      case 5:
        {
          weekdayString = "Friday";
        }
        break;
      case 6:
        {
          weekdayString = "Saturday";
        }
        break;
      case 7:
        {
          weekdayString = "Sunday";
        }
        break;
    }

    switch (datetime.month) {
      case 1:
        {
          monthString = "January";
        }
        break;
      case 2:
        {
          monthString = "February";
        }
        break;
      case 3:
        {
          monthString = "March";
        }
        break;
      case 4:
        {
          monthString = "April";
        }
        break;
      case 5:
        {
          monthString = "May";
        }
        break;
      case 6:
        {
          monthString = "June";
        }
        break;
      case 7:
        {
          monthString = "July";
        }
        break;
      case 8:
        {
          monthString = "August";
        }
        break;
      case 9:
        {
          monthString = "September";
        }
        break;
      case 10:
        {
          monthString = "October";
        }
        break;
      case 11:
        {
          monthString = "November";
        }
        break;
      case 12:
        {
          monthString = "December";
        }
        break;
    }

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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/gradientorange.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Text(
              '\n' +
                  weekdayString +
                  ', ' +
                  monthString +
                  ' ' +
                  day +
                  ', ' +
                  year,
              style: const TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WeatherPane(
                    hourWeather: hourOneWeather,
                    hourTemp: hourOneTempString,
                    dthour: hourStringOne,
                    hourint: hour),
                WeatherPane(
                  hourWeather: hourTwoWeather,
                  hourTemp: hourTwoTempString,
                  dthour: hourStringTwo,
                  hourint: hour + 1,
                ),
                WeatherPane(
                  hourWeather: hourThreeWeather,
                  hourTemp: hourThreeTempString,
                  dthour: hourStringThree,
                  hourint: hour + 2,
                ),
                WeatherPane(
                  hourWeather: hourFourWeather,
                  hourTemp: hourFourTempString,
                  dthour: hourStringFour,
                  hourint: hour + 3,
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WeatherPane(
                  hourWeather: hourFiveWeather,
                  hourTemp: hourFiveTempString,
                  dthour: hourStringFive,
                  hourint: hour + 4,
                ),
                WeatherPane(
                  hourWeather: hourSixWeather,
                  hourTemp: hourSixTempString,
                  dthour: hourStringSix,
                  hourint: hour + 5,
                ),
                WeatherPane(
                  hourWeather: hourSevenWeather,
                  hourTemp: hourSevenTempString,
                  dthour: hourStringSeven,
                  hourint: hour + 6,
                ),
                WeatherPane(
                  hourWeather: hourEightWeather,
                  hourTemp: hourEightTempString,
                  dthour: hourStringEight,
                  hourint: hour + 7,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherPane extends StatelessWidget {
  const WeatherPane(
      {Key? key,
      required this.hourWeather,
      this.hourTemp,
      required this.dthour,
      required this.hourint})
      : super(key: key);

  final String? hourWeather;
  final String? hourTemp;
  final String dthour;
  final int? hourint;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.teal,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(20.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: Text(dthour),
              ),
              if (hourWeather == 'Main.CLOUDS' &&
                  (hourint! <= 6 || hourint! >= 18)) ...[
                Image.asset(
                  'images/dawndusk.png',
                  height: 50,
                  width: 50,
                ),
              ] else if (hourWeather == 'Main.CLOUDS') ...[
                Image.asset(
                  'images/cloudy.png',
                  height: 50,
                  width: 50,
                ),
              ] else if (hourWeather == 'Main.CLEAR' &&
                  (hourint! <= 6 || hourint! >= 18)) ...[
                Image.asset(
                  'images/dawndusk.png',
                  height: 50,
                  width: 50,
                ),
              ] else if (hourWeather == 'Main.CLEAR') ...[
                Image.asset(
                  'images/sunny.png',
                  height: 50,
                  width: 50,
                ),
              ] else
                Image.asset(
                  'images/rainy.png',
                  height: 50,
                  width: 50,
                ),
              const SizedBox(height: 20),
              Text(hourTemp!),
              const SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
