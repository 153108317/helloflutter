import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyListViewRoute extends StatefulWidget{


  @override
  _MyLIstviewRoute createState() {
    // TODO: implement createState
    return new _MyLIstviewRoute();
  }

}

class _MyLIstviewRoute extends State<MyListViewRoute>{
 static String endTag="this is the end ";
  var _words=<String>[endTag];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateData();
  }
  void updateData(){
    Future.delayed(Duration(seconds: 2)).then((e) {
       if(_words.length<100){
      _words.insertAll(
          _words.length - 1, generateWordPairs().take(20).map((e) =>
      e.asPascalCase).toList());
      setState(() {

      });
    }

    });
        }
  @override
  Widget build(BuildContext context) {
    Widget divider1=Divider(color: Colors.deepOrangeAccent,);
    Widget divider2=Divider(color: Colors.blue,);
    return Scaffold(
        appBar: AppBar(
          title: const Text("MyLIstViewRoute"),
        ),
        body:  ListView.separated(
            itemCount: _words.length,
            separatorBuilder: (BuildContext c,int index){
              return index%2==0?divider1:divider2;
            },
            itemBuilder: (BuildContext context,int index){
              if(_words.length-1==index){
                updateData();

              }else {

           }
              return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://upload-images.jianshu.io/upload_images/15194389-846ee5b033d3d4e2.png?imageMogr2/auto-orient/strip|imageView2/2/w/522'),
                  ),
                  title: Text(_words[index]+"$index"),
                  subtitle: Text("hellothis is a listViewItem "));

            })

    );

  }
}
