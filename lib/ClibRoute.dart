import 'package:flutter/material.dart';
class ClibRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget avatar=Image.asset("assets/bamboo.png",width: 50);

    return Center(
      child: Column(
        children: <Widget>[
          Text(""),
          avatar,
          ClipOval(child: avatar),
          ClipRRect(borderRadius: BorderRadius.circular(5),
            child: avatar,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(alignment: Alignment.topLeft,
                widthFactor: .5,
                child: avatar,
              ),
              Text("重庆是一座来了就不想走的城市",style:TextStyle(color: Colors.green) ,)

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRect(
                child: Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5,
                  child: avatar,
                ),
              ),
              Text("你觉得重庆哪里最好",style: TextStyle(color:Colors.green),)
            ],
          ),
        ],
      ),
    );
  }

}