import 'package:flutter/material.dart';

class CusterScrollViewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("CusterScrollViewRoute"),
              background: Image.asset(
                "assets/bamboo.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(9),
            sliver: new SliverGrid(
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 4),
                delegate: new SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return new Container(
                      alignment: Alignment.center,
                      color: Colors.cyan[100 * (index % 9)],
                      child: new Text("grid itme $index"),
                    );
                  },
                  childCount: 20,
                )),
          ),
          new SliverFixedExtentList(
              delegate: new SliverChildBuilderDelegate((BuildContext context,int index){
                return new Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100*(index%9)],
                  child: new Text('list item $index'),
                );
              }),
              itemExtent: 50),
        ],
      ),
    ))
     ;
  }
}
