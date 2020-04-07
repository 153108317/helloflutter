import 'package:flutter/material.dart';

import 'main.dart';
import 'newdart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '+0',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text('open new route'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) {
                          return NewDart(text: '列表');
                        },
                        maintainState: true));
              },
            ),
            RaisedButton(
              textColor: Colors.deepOrange,
              child: Text('open newroute with route table'),
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
              child: Text('open newroute with route table'),
              onPressed: () {
                Navigator.pushNamed(context, 'new_route');
              },
            ),
            RaisedButton(
              textColor: Colors.amber,
              child: Text('open arguRoute '),
              onPressed: () {
                Navigator.pushNamed(context, 'argu_route',
                    arguments: 'argumentsyes');
              },
            ),
            DecoratedBox(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: AssetImage('assets/bamboo.png'))),
            ),
            RaisedButton(
              textColor: Colors.amber,
              child: Text('Widgets '),
              onPressed: () {
                Navigator.pushNamed(context, 'widget_route',
                    arguments: 'argumentsyes');
              },
            ),
          ],
        ),
      ),
    );
  }
}
