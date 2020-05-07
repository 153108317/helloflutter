import 'package:flutter/material.dart';
import 'package:flutter_app/ClibRoute.dart';
import 'package:flutter_app/SingleChildScrollViewRoute.dart';

import 'main.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(46),
                child: ClipOval( child: Image.asset("assets/welcome.jpg",
                width: 80,),),
              ),
              Text('Wendux',
              textAlign: TextAlign.center,
              style: TextStyle( fontWeight: FontWeight.bold))
           ,
              RaisedButton(
                textColor: Colors.deepOrange,
                child: Text('天气预报'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) {
                            return NewRoute();
                          },
                          maintainState: true));
                },
              ),
              RaisedButton(
                textColor: Colors.deepOrange,
                child: Text('多列表'),
                onPressed: () {
                  Navigator.pushNamed(context, 'new_route');
                },
              ),
              RaisedButton(
                textColor: Colors.amber,
                child: Text('歌曲列表 '),
                onPressed: () {
                  Navigator.pushNamed(context, 'widget_netroute',
                      arguments: 'argumentsyes');
                },
              ),
              RaisedButton(
                textColor: Colors.amber,
                child: Text('各种控件 '),
                onPressed: () {
                  Navigator.pushNamed(context, 'widget_route',
                      arguments: 'argumentsyes');
                },
              ),

              ClibRoute(),
        //      SingleChildScrollViewRoute(),


            ],
          )),
    );
  }
}
