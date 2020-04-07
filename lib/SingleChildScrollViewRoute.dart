import 'package:flutter/material.dart';

class SingleChildScrollViewRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String str = "ABCDEFGHIJK";
    
    return Scrollbar(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children:
              str.split('').map((c)=>Text(c,textScaleFactor:2.0 ,))
.toList()            ,
          ),
        ),
      ),

    );
  }
}