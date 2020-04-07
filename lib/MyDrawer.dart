import 'package:flutter/material.dart';
import 'package:flutter_app/ClibRoute.dart';
import 'package:flutter_app/SingleChildScrollViewRoute.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(36),
                child: ClipOval( child: Image.asset("assets/welcome.jpg",
                width: 80,),),
              ),
              Text('Wendux',
              style: TextStyle(fontWeight: FontWeight.bold))
           ,
              ClibRoute(),
              SingleChildScrollViewRoute(),


            ],
          )),
    );
  }
}
