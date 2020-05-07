import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import 'main.dart';
import 'model/news_entity.dart';
import 'newdart.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  NewsEntity newsEntity;

  //http://c.m.163.com/nc/article/headline/T1348649580692/0-40.html
  getData() async {
    var client = new HttpClient();
    var url =
        "https://c.m.163.com/nc/article/headline/T1348649580692/0-40.html";
    var request = await client.getUrl(Uri.parse(url));
    var respone = await request.close();
    var responeBody = await respone.transform(Utf8Decoder()).join();
    Map<String, dynamic> map = json.decode(responeBody.toString());
    newsEntity = new NewsEntity().fromJson(map);
    if (newsEntity != null) {
      setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              if (newsEntity != null) {
                return ItemView(newsEntity.t1348649580692[index]);
              } else {
                return ItemView(null);
              }
            }),
      ),
    );
  }
}

class ItemView extends StatelessWidget {
  NewsT1348649580692 item;

  ItemView(this.item);

  @override
  Widget build(BuildContext context) {
    if (item == null) {
      return Text("");
    }
    return Container(
//        height: 300,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
//          boxShadow: [
//            BoxShadow(
//                color: Color(0x99FFFF66),
//                offset: Offset(10.0, 10.0),
//                blurRadius: 18.0,
//                spreadRadius: 20.0),
//            BoxShadow(color: Color(0xfff00f77), offset: Offset(10.0, 10.0)),
//            BoxShadow(color: Color(0xFFf44fFF), offset: Offset(10.0, 10.0))
//          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 2000,
              padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
           child:   Text(
                item.title,
                textAlign: TextAlign.start,
              ),
            ),

            Image.network(item.imgsrc),
            Text(
              item.digest,
              style: TextStyle(color: Colors.black54, ),
            )
          ],
        ));
  }
}
