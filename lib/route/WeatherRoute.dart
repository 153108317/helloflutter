import 'package:flutter/material.dart';
import 'package:flutter_app/model/weather_entity.dart';
import 'package:flutter_app/utils/TtsHelper.dart';
import 'dart:convert';
import 'dart:io';

import 'CusterScrollViewRoute.dart';

class WeatherRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _NewRoute();
  }
}

class _NewRoute extends State<WeatherRoute> {
  @override
  void initState() {
    super.initState();
    getWeather();
  }

  List<WeatherDataForecast> list = List();

  void totheNextPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return new CusterScrollViewRoute();
    }));
  }

  getWeather() async {
    //
    var client = new HttpClient();
    //101040100 重庆
    var url =
        "http://t.weather.sojson.com/api/weather/city/101040100"; //101040700
    var request = await client.getUrl(Uri.parse(url));
    var response = await request.close();
    var responseBody = await response.transform(Utf8Decoder()).join();
    print("xxxxx" + responseBody);
    Map<String, dynamic> weather = json.decode(responseBody);
    if (weather.containsKey("data")) {
      Map<String, dynamic> data = weather["data"];
      if (data != null && data.containsKey("forecast")) {
//        Map<String, dynamic> forecast = data["forecast"];
        WeatherCityInfo info;
        if (weather.containsKey("cityInfo")) {
          info = new WeatherCityInfo().fromJson(weather["cityInfo"]);
        }
        for (var d in data['forecast']) {
          WeatherDataForecast wd = new WeatherDataForecast();
          if (info != null) {
            wd.ymd =info.city+ d['ymd'];
          } else {
            wd.ymd = d['ymd'];
          }
          wd.week = d['week'];
          wd.notice = d['notice'];
          wd.high = d['high'];
          wd.low = d['low'];
          wd.fx = d['fx'];
          wd.fl = d['fl'];
          wd.type = d['type'];
          wd.sunrise = d['sunrise'];
          wd.sunset = d['sunset'];
          list.add(wd);
        }
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(
      color: Colors.deepOrangeAccent,
    );
    Widget divider2 = Divider(
      color: Colors.blue,
    );
    return Scaffold(
//      appBar: AppBar(
//        title: Text('天气预报'),
//      ),
      body: ListView.separated(
          itemCount: list.length,
          // controller: _controller,
          separatorBuilder: (BuildContext c, int index) {
            return index % 2 == 0 ? divider1 : divider2;
          },
          itemBuilder: (BuildContext context, int index) {
            WeatherDataForecast wd = list[index];
            String data = wd.ymd +
                " " +
                wd.week +
                "     " +
                " 日出" +
                wd.sunrise +
                "  日落 " +
                wd.sunset +
                "\n" +
                wd.high +
                wd.low +
                "  " +
                wd.fx +
                wd.fl +
                wd.type +
                "\n" +
                wd.notice;
            return ListTile(
                isThreeLine: true,
                leading: Icon(Icons.beach_access),
                title: Text(""),
                trailing: GestureDetector(
                  child: Text(data),
                  onTap: () {
                    //  get();
                    TtsHelper().speak(data);
                  },
                ),
                subtitle: Text(""));
          }),
    );
  }
}
