import 'dart:io';
import 'dart:convert';

import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/test.dart';
import 'package:flutter_app/utils/PrintUtil.dart';
import 'package:flutter_app/utils/StringUtil.dart';

class NetListViewRoute extends StatefulWidget {
  @override
  _MyLIstviewRoute createState() {
    // TODO: implement createState
    return new _MyLIstviewRoute();
  }
}

class _MyLIstviewRoute extends State<NetListViewRoute> {
  static String endTag = "this is the end ";
  var _words = <String>[endTag];
  List<test> list = List();

  get() async {
    var client = new HttpClient();
    var url = "https://api.apiopen.top/musicRankingsDetails?type=1";

    var request = await client.getUrl(Uri.parse(url));
    var response = await request.close();
    var responseBody = await response.transform(Utf8Decoder()).join();
    Map<String, dynamic> tests = json.decode(responseBody.toString());
    if (tests.containsKey("result")) {
      list.clear();
      for (var d in tests['result']) {
        list.add(test(d['title'], d['album_1000_1000'], d['author'],
            d['si_proxycompany']));
      }
//      list.addAll(json.decode(json.encode(test['result'])) );
      setState(() {});
    }
  }

  ScrollController _controller = new ScrollController();
  bool showToTopBtn = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.offset < 90) {
        showToTopBtn = false;
      } else if (_controller.offset > 100) {
        showToTopBtn = true;
      }
    });
//    updateData();
    get();
  }

  void updateData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      if (_words.length < 100) {
        _words.insertAll(_words.length - 1,
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
        setState(() {});
      }
    });
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
        title: const Text("歌曲列表"),
      ),
      body: ListView.separated(
          itemCount: list.length,
          controller: _controller,
          separatorBuilder: (BuildContext c, int index) {
            return index % 2 == 0 ? divider1 : divider2;
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                isThreeLine: false,
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      StringUtil.replace(list[index].album_1000_1000)),
                ),
                title: Text(list[index].title),
                trailing: GestureDetector(
                  child: Text("" + list[index].author),
                  onTap: () {
                    //  get();
                  },
                ),
                subtitle: Text(" " + list[index].si_proxycompany));
          }),
      floatingActionButton: !showToTopBtn
          ? FloatingActionButton(
              child: Icon(Icons.arrow_upward),
              onPressed: () {
                _controller.animateTo(0,
                    duration: Duration(milliseconds: 200), curve: Curves.ease);
              })
          : FloatingActionButton(
              child: Icon(Icons.arrow_upward),
              onPressed: () {
                _controller.animateTo(0,
                    duration: Duration(milliseconds: 200), curve: Curves.ease);
              },
            ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
}
