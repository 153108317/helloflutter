import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage.dart';
import 'package:flutter_app/MyWidgetRoute.dart';
import 'package:flutter_app/mypage.dart';
import 'package:flutter_app/newdart.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_app/route/CusterScrollViewRoute.dart';
import 'package:flutter_app/route/MyGridViewRoute.dart';
import 'package:flutter_app/route/MyListViewRoute.dart';
import 'package:flutter_app/route/NetListViewRoute.dart';
import 'package:flutter_app/utils/StringUtil.dart';
import 'MyDrawer.dart';
import 'model/test.dart';
import 'model/weather_entity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => MyHomePage(title: 'this is homePage haha'),
        'new_route': (context) => CusterScrollViewRoute(),
        'argu_route': (context) => ArguRoute(),
        'widget_route': (context) => MyWidget(),
        'mylistview': (context) => MyListViewRoute(),
        'widget_netroute': (context) => NetListViewRoute(),
        'mygridview': (context) => MyGridViewRoute(),
      },

      //  home: MyHomePage(title: 'Flutter Demo Home Page hh'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  var result = "Row and Column";

  var rresult;
  int _selectedIndex = 0;
  TabController _tabController;
  List tabs = ['新闻', '列表', '图片'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) {
                    return new CusterScrollViewRoute();
                  },
                  maintainState: true));
          break;
        case 1:
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return new MyListViewRoute();
          }));

          break;
        case 2:
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) {
                    return new MyGridViewRoute();
                  },
                  maintainState: true));
          break;
      }
    });
  }

  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {},
              )
            ],
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(
                    Icons.dashboard,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            bottom: TabBar(
                controller: _tabController,
                tabs: tabs.map((e) => Tab(text: e)).toList()),
          ),
          drawer: new MyDrawer(),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.business), title: Text('bussiness')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school), title: Text('school'))
            ],
            currentIndex: _selectedIndex,
            fixedColor: Colors.blue,
            onTap: _onItemTapped,
          ),

          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              HomePage(),
              NewRoute(),
              //  NewDart(text: '历史'),
              MyPage(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ),
        onWillPop: () async {
          if (_dateTime == null ||
              DateTime.now().difference(_dateTime) > Duration(seconds: 1)) {
            _dateTime = DateTime.now();
            return false;
          } else {
            return true;
          }
        });
  }
}

class NewRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _NewRoute();
  }
}

class _NewRoute extends State<NewRoute> {
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
        for (var d in data['forecast']) {
          WeatherDataForecast wd = new WeatherDataForecast();
          wd.ymd = d['ymd'];
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
      appBar: AppBar(
        title: Text('天气预报'),
      ),
      body: ListView.separated(
          itemCount: list.length,
          // controller: _controller,
          separatorBuilder: (BuildContext c, int index) {
            return index % 2 == 0 ? divider1 : divider2;
          },
          itemBuilder: (BuildContext context, int index) {
            WeatherDataForecast wd = list[index];
            return ListTile(
                isThreeLine: true,
                leading: Icon(Icons.beach_access),
                title: Text(""),
                trailing: GestureDetector(
                  child: Text(
                      wd.ymd +
                      " " +
                      wd.week +
                      "     " +
                      " 日出" +
                      wd.sunrise +
                      "  日落 " +
                      wd.sunset+
                      "\n" +

                      wd.high +
                      wd.low +
                      "  " +
                      wd.fx +
                      wd.fl +
                      wd.type +
                      "\n" +
                      wd.notice
                    ),
                  onTap: () {
                    //  get();
                  },
                ),
                subtitle: Text(""));
          }),
    );
  }
}

class ArguRoute extends StatelessWidget {
  var args;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("ArguRoute"),
      ),
      body: Center(
        child: Text('arguroute add  $args'),
      ),
    );
  }
}
