import 'package:flutter/material.dart';
import 'package:flutter_app/mypage.dart';

class NewDart extends StatelessWidget {
  NewDart({
    Key key,
    @required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('layout'),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.add),
          Text('more')
        ],
      ),
//      body: Center(
//        child: Text('this is new dart'),
//      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Wrap(
                  spacing: 6,
                  runSpacing: 4,
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    new Chip(
                      avatar: new CircleAvatar(
                          backgroundColor: Colors.blue, child: Text('A')),
                      label: new Text('Hamilton'),
                    ),
                    new Chip(
                        label: new Text('Hamilton'),
                        avatar: new CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text("M"),
                        )),
                    new Chip(
                        label: new Text('Hamilton'),
                        avatar: new CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text("M"),
                        )),
                    new Chip(
                        label: new Text('Hamilton'),
                        avatar: new CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text("M"),
                        )),
                    new Chip(
                        label: new Text('Hamilton'),
                        avatar: new CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text("M"),
                        )),
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 30,
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 30,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 11),
                  child: SizedBox(
                    height: 50,
                    child: Flex(
                      direction: Axis.vertical,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 30,
                            color: Colors.red,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 30,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () => Navigator.pop(context, "我是返回值"),
                  child: Text('返回'),
                ),
                RaisedButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return MyPage(
                        text: 'from newdart text', id: 'from newdart ID 123');
                  })),
                  child: Text('to mypage'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  textDirection: TextDirection.ltr,
                  verticalDirection: VerticalDirection.down,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset("assets/bamboo.png"),
                    Text('this is a nice day'),
                    Text(
                      'nice day',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        child:
                            Column(mainAxisAlignment: MainAxisAlignment.center,
                                //垂直方向居中对齐
                                children: <Widget>[
                              Text("hello world "),
                              Text("I am Jack "),
                            ]),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.amberAccent,
                  transform: Matrix4.rotationZ(0.2),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Happy New Year',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text('快过年了')
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('this is a nice day'),
                    Image.asset("assets/bamboo.png")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    Text(" hello world "),
                    Text(" I am Jack "),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
