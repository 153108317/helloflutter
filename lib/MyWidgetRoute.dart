import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  mywidgetRoute createState() {
    // TODO: implement createState
    return new mywidgetRoute();
  }
}

class mywidgetRoute extends State<MyWidget> {
  static const String assetPath = 'assets/';
  bool isSelect = false;
  bool issSelect = false;
  bool isCbSelect = false;
  String etContent = '神在创造我的时候。。。';
  TextEditingController tec = new TextEditingController();
  GlobalKey gbk = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('2020你好'),
      ),
      body: Center(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(11),
        child: Center(
          child: Column(
            children: <Widget>[
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: "home:",
                ),
                TextSpan(
                  text: "www.baidu.com",
                  style: TextStyle(
                      background: new Paint()..color = Colors.cyan[300],
                      color: Colors.blue),
                )
              ])),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('空蝉'),
                    onPressed: () {},
                    splashColor: Colors.red,
                    elevation: 2,
                  ),
                  FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    colorBrightness: Brightness.dark,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'flat按钮',
                    ),
                    onPressed: () {},
                  ),
                  OutlineButton(
                    child: Text('outline'),
                  ),
                  IconButton(
                    icon: Icon(Icons.ac_unit),
                  )
                ],
              ),
              Text(""),
              LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
              Text(""),
              Stack(
                fit: StackFit.loose,
                children: <Widget>[
                  Positioned(
                    left: 210,
                    child: Image.asset(
                      'assets/go.jpg',
                      width: 45,
                    ),
                  ),
                  Text(
                    '               2019你跑得太快',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    textScaleFactor: 1.5,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                        height: 1.3,
                        fontFamily: 'Courier',
                        decorationStyle: TextDecorationStyle.dashed),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                    color: Colors.blue[600],
                    width: 281,
                    height: 60,
                    alignment: Alignment.center,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Hello 2020',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    transform: Matrix4.rotationZ(0.2),
                  ),
                  Positioned(
                    top: 15,
                    left: 100,
                    child: Image.asset(
                      'assets/welcome.jpg',
                      width: 60,
                      fit: BoxFit.fill,
                      height: 50,
                    ),
                  )
                ],
              ),
              Text(""),
              Text(""),
              Row(children: <Widget>[
                Text(' 选择困难症'),
                Switch(
                    value: !issSelect,
                    onChanged: (value) {
                      setState(() {
                        issSelect = !value;
                      });
                    }),
                Switch(
                  value: isSelect,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      isSelect = value;
                    });
                  },
                ),
                Checkbox(
                  value: isCbSelect,
                  onChanged: (value) {
                    setState(() {
                      isCbSelect = value;
                    });
                  },
                ),
                Checkbox(
                  value: !isCbSelect,
                  onChanged: (value) {
                    setState(() {
                      isCbSelect = value;
                    });
                  },
                ),
                Checkbox(
                  value: true,
                  onChanged: (value) {
                    setState(() {});
                  },
                )
              ]),
              Column(
                children: <Widget>[
                  Form(
                    key: gbk,
                    autovalidate: true,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          autofocus: true,
                          controller: tec,
                          decoration: InputDecoration(
                            labelText: '神在创造我的时候',
                            labelStyle: TextStyle(color: Colors.green),
                            hintText: '加入一些天真、帅气、可爱、沉着、冷静、内向、腼腆',
                            hintStyle: TextStyle(color: Colors.orange[300]),
                            icon: Icon(Icons.brush),
                          ),
                          validator: (v) {
                            return v.trim().length > 0 ? null : "神没有创造你,神创造了工作";
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Text(""),
              Stack(children: <Widget>[
                Image.asset(
                  'assets/work.png',
                  width: 140,
                ),
                Text(
                  '     Work',
                  style: TextStyle(color: Colors.black87, fontSize: 10),
                ),
              ]),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('夜空中最亮的星'),
                    textColor: Colors.red,
                  ),
                  DefaultTextStyle(
                    style: TextStyle(color: Colors.red, fontSize: 12),
                    child: Row(children: <Widget>[
                      Text(
                        '你怎么那么帅',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                      Text(
                        '不，你帅',
                        style: TextStyle(
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,
                            inherit: false),
                      )
                    ]),
                  )
                ],
              ),
              Stack(children: <Widget>[
                Text('论持久战'),
                RaisedButton(
                  textColor: Color(300),
                  child: Text(' 占领地球村'),
                )
              ]),
              Text(""),
              Text(
                '2020 你好',
                style: TextStyle(fontSize: 50, color: Colors.blue),
              ),
              Text(
                "",
                style: TextStyle(fontSize: 50),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.amber[600],
                width: 30,
                height: 10,
                padding: const EdgeInsets.all(15),
              ),
              FloatingActionButton(
                child: Text('0202年'),
              ),
              Text(
                'Hello World',
                style: TextStyle(
                  height: 10,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('hello world    '),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text('hello 2020   '),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text('hello today   '),
                    )
                  ],
                ),
              ),
              ConstrainedBox(
                constraints:
                    BoxConstraints(minWidth: double.infinity, minHeight: 50),
                child: Container(
                  color: Colors.black87,
                  transform: Matrix4.skewY(0.3),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                ),
              ),
              Container(
                color: Colors.black87,
                width: 200,
                height: 80,
                child: new Transform(
                  alignment: Alignment.topRight,
                  transform: new Matrix4.skewY(0.3),
                  child: new Container(
                    alignment: Alignment.center,
                    color: Colors.deepOrange,
                    child: Text('transform'),
                  ),
                ),
              ),
              SizedBox(
                width: 80,
                height: 80,
                child: Container(
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(minHeight: 30, minWidth: 100),
                child: Container(
                  width: 100,
                  height: 40,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.green]),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(2, 2),
                          blurRadius: 4,
                        )
                      ],
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
                height: 30,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(color: Colors.green),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.orange),
                child: Transform.translate(
                  offset: Offset(-30, -5),
                  child: Text("hello new year"),
                ),
              ),
              DecoratedBox(decoration: BoxDecoration(color: Colors.amber),
              child: Transform.rotate(angle: 30,
              child: Text('hello world'),),),
              Row(children: <Widget>[
                DecoratedBox(
                  decoration:BoxDecoration(color: Colors.amber),
                  child: Transform.scale(scale: 1.2,
                    child: Text('hello world'),),
                ),

                Text('你好'),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.orange),
                  child:  RotatedBox(
                    quarterTurns: 1,
                    child: Text('hello today'),
                  ),
                ),
                Text('你好'),
              ],)
            ],
          ),
        ),
      )),
    );
  }

  static GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  void showSnackbar() {
    print('怎么不显示');

    final snackbar = SnackBar(
      content: Text("最帅snackbar"),
    );
    //   _globalKey.currentState.showSnackBar(snackbar);
  }

  bool isOnPress = false;

  bool _onPressed() {
    return isOnPress == !isOnPress;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showSnackbar();
    tec.addListener(() {
      etContent = tec.text == null ? "神在创造我的时候。。。" : "神在创造我的时候" + tec.text;
      print(etContent);
    });
  }
}
