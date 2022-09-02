import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:io';

import 'post_model.dart';
import 'package:http/http.dart' as http;

class HttpService {
  Future<Post?> getPosts() async {
    var client = http.Client();

    //API Key Redacted
    String thingspeakAPIKey = "";

    var uri = Uri.parse(
        "https://api.thingspeak.com/channels/1564946/feeds/1.json?api_key=" +
            thingspeakAPIKey +
            "&results=2");
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      //print("response success!");
      var json = response.body;
      //print(json);
      return postFromJson(json);
    } else {
      return null;
    }
  }
}

class OpenWeatherHttpService {
  Future<OpenWeatherPost?> getPosts() async {
    var client = http.Client();

    //API Key Redacted
    String openWeatherAPIKey = "";
    var uri = Uri.parse(
        "https://api.openweathermap.org/data/2.5/onecall?lat=33.45&lon=-88.78&exclude=minutely,current,daily&appid=" +
            openWeatherAPIKey);
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      //print("response success!");
      var json = response.body;
      //print(json);
      return openWeatherFromJson(json);
    } else {
      return null;
    }
  }
}
