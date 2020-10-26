import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      title: 'Flutter App',
      home: MyClass()
  ));
}

class MyClass extends StatelessWidget{
  final _dummyTxt = "Attribute values that do not start with the string boxplusx- are ignored to let you opt out of this behavior for certain images.) When you click any item in the gallery, the pop-up window opens and lets you navigate in between images in the same gallery.";
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('Flutter Home'),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 5,),
                  child: Image.asset('assets/images/img1.png', )
              ),
              Padding(padding: EdgeInsets.only(top: 10),
                child: Text('Description ', textAlign: TextAlign.left, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.amberAccent),),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 20),
                child: Text(_dummyTxt + _dummyTxt + _dummyTxt +_dummyTxt, textAlign: TextAlign.justify, style: TextStyle(color: Colors.blue),),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 20),
                child: Text(_dummyTxt + _dummyTxt + _dummyTxt+_dummyTxt, textAlign: TextAlign.justify, style: TextStyle(color: Colors.blue),),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top:30),
                    padding: EdgeInsets.all(10),
                    height: 50,
                    width: 60,
                    foregroundDecoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage('https://hunyadi.info.hu/projects/boxplusx/images/image3.jpg')
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top:30),
                    padding: EdgeInsets.all(10),
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.amber
                    ),
                    child: Icon(Icons.access_alarm),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top:30),
                    padding: EdgeInsets.all(10),
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.amber
                    ),
                    child: Icon(Icons.ac_unit_rounded),
                  ),



                ],

              ),
            ],
          ),
        )

    );
  }
}