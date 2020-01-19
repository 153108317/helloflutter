import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:cached_network_image/cached_network_image.dart';


class MyPage extends StatefulWidget {
  MyPage({
    Key key,
    @required this.text,
    this.id,
  }) : super(key: key);

  final String text;
  final String id;


  @override
  MyState createState() => MyState();
}

class MyState extends State<MyPage> {
  String random = 'on click';
  String text;
  String id;


@override
void initState(){
    super.initState();
    this.text=widget.text;
    this.id=widget.id;
}
  String json = '';

  Future<String> loadAsset({r: String}) async {
    json = await rootBundle.loadString('assets/config.json') + r;
    return json;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final WordPair wordPair = new WordPair.random();
    random = wordPair.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('mypage'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(children: <Widget>[
          Text('$text and $id'),
          Text(
            "this is mypage           body align right",
            textAlign: TextAlign.right,
          ),
          Text(
            'this is mypage                    dsafadfadda         body align left',
            textAlign: TextAlign.left,
          ),
          Text(
            'xxxx$json',
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            textColor: Colors.deepOrange,
            child: Text('$random'),
            onPressed: () {
              debugDumpApp();
              setState(() {
                random = new WordPair.random().toString();
                loadAsset(r: random);
                print("xxxx:" + json);
              });
            },
          ),
          new Image.asset('assets/bamboo.png'),
          new Image.network('https://upload-images.jianshu.io/upload_images/2751425-a4ae8f58829299af.png?imageMogr2/auto-orient/strip|imageView2/2/w/412/format/webp'),
//          CachedNetworkImage(
//            imageUrl: "https://upload-images.jianshu.io/upload_images/2751425-a4ae8f58829299af.png?imageMogr2/auto-orient/strip|imageView2/2/w/412/format/webp",
//            placeholder: (context,url)=>CircularProgressIndicator(),
//            errorWidget: (context,url,error)=>Icon(Icons.settings),
//          )
        ]),
      ),
    );
    ;
  }
}
