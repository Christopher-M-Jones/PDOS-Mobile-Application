import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));
String postToJson(Post data) => json.encode(data.toJson());

FirstField firstFieldFromJson(String str) =>
    FirstField.fromJson(json.decode(str));
String firstFieldToJson(FirstField data) => json.encode(data.toJson());

SecondField secondFieldFromJson(String str) =>
    SecondField.fromJson(json.decode(str));
String secondFieldToJson(SecondField data) => json.encode(data.toJson());

class Post {
  Post({
    this.field1,
    this.field2,
  });

  FirstField? field1;
  SecondField? field2;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        field1: FirstField.fromJson(jsonDecode(json['field1'])),
        field2: SecondField.fromJson(jsonDecode(json['field2'])),
      );

  Map<String, dynamic> toJson() => {
        "field1": field1,
        "field2": field2,
      };
}

class FirstField {
  FirstField({
    this.clouds,
    this.temp,
    this.alert,
    this.openAlertStart,
  });

  int? clouds;
  double? temp;
  String? alert;
  String? openAlertStart;

  factory FirstField.fromJson(Map<String, dynamic> json) => FirstField(
        clouds: json["clouds"].toInt(),
        temp: json["temp"].toDouble(),
        alert: json["Alert"],
        openAlertStart: json["OpenAlertStart"],
      );

  Map<String, dynamic> toJson() => {
        "clouds": clouds,
        "temp": temp,
        "Alert": alert,
        "OpenAlertStart": openAlertStart,
      };
}

class SecondField {
  SecondField({
    this.powerSlotOne,
    this.powerSlotTwo,
    this.solarIrradiance,
    this.gridPrice,
    this.stateOfCharge,
  });

  int? powerSlotOne;
  int? powerSlotTwo;
  double? solarIrradiance;
  double? gridPrice;
  double? stateOfCharge;

  factory SecondField.fromJson(Map<String, dynamic> json) => SecondField(
        powerSlotOne: json["PowerSlotOne"].toInt(),
        powerSlotTwo: json["PowerSlotTwo"].toInt(),
        solarIrradiance: json["SolarIrradiance"].toDouble(),
        gridPrice: json["GridPrice"].toDouble(),
        stateOfCharge: json["StateofCharge"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "PowerSlotOne": powerSlotOne,
        "PowerSlotTwo": powerSlotTwo,
        "SolarIrradiance": solarIrradiance,
        "GridPrice": gridPrice,
        "StateofCharge": stateOfCharge,
      };
}

///////////////////////////////////////////////////////////////////////////////
OpenWeatherPost openWeatherFromJson(String str) =>
    OpenWeatherPost.fromJson(json.decode(str));

String openWeatherToJson(OpenWeatherPost data) => json.encode(data.toJson());

class OpenWeatherPost {
  OpenWeatherPost({
    required this.hourly,
  });

  List<Hourly> hourly;

  factory OpenWeatherPost.fromJson(Map<String, dynamic> json) =>
      OpenWeatherPost(
        hourly:
            List<Hourly>.from(json["hourly"].map((x) => Hourly.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "hourly": List<dynamic>.from(hourly.map((x) => x.toJson())),
      };
}

class Hourly {
  Hourly({
    this.temp,
    required this.weather,
  });

  double? temp;
  List<Weather> weather;

  factory Hourly.fromJson(Map<String, dynamic> json) => Hourly(
        temp: json["temp"].toDouble(),
        weather:
            List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "temp": temp,
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
      };
}

class Weather {
  Weather({
    this.id,
    this.main,
    this.description,
  });

  int? id;
  Main? main;
  String? description;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json["id"],
        main: mainValues.map[json["main"]],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "main": mainValues.reverse[main],
        "description": description,
      };
}

enum Main { CLEAR, CLOUDS, RAIN, SNOW, THUNDERSTORM, DRIZZLE }

final mainValues = EnumValues({
  "Clear": Main.CLEAR,
  "Clouds": Main.CLOUDS,
  "Rain": Main.RAIN,
  "Snow": Main.SNOW,
  "Thunderstorm": Main.THUNDERSTORM,
  "Drizzle": Main.DRIZZLE,
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    return reverseMap;
  }
}

/*
enum Main {
  CLEAR,
  CLOUDS,
  RAIN,
  SNOW,
  THUNDERSTORM,
  DRIZZLE,
}
*/
