
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGridViewRoute extends StatefulWidget{
 @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyGridView();
  }

}
class MyGridView extends State<MyGridViewRoute>{
  List<IconData> icons=[Icons.ac_unit];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    upDateData();
  }
  void upDateData(){
    Future.delayed(Duration(milliseconds: 100)).then((e){
      icons.addAll([
        Icons.ac_unit,
        Icons.airport_shuttle,
        Icons.all_inclusive,
        Icons.beach_access, Icons.cake,
        Icons.free_breakfast
      ]);
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title :Text("MyGridViewRoute")),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1
      ),
          itemBuilder: (context,index){
            if(index==icons.length-1&&icons.length<150){
              upDateData();
            }
            if(icons[index]==null){
              return Text("没有");
            }
            return Icon(icons[index]);
          }),
    );
  }
}