import "Product.dart";
import 'package:flutter/material.dart';

import 'RatingBox.dart';


class ProductSingle extends StatelessWidget{
  ProductSingle({this.item}): super();
  final Product item;
  String _dummyText = "the application and click any one of the product item. "+
      "It will show the relevant details page. We can move to home page by clicking back button";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text(this.item.name),),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/"+this.item.image, width: 550,),
                Center(child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(this.item.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: Text(this.item.description+ _dummyText+ _dummyText,style: TextStyle(fontSize: 16)),
                      ),
                      Text("Price: "+ this.item.price.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),),
                      RatingBox(),
                    ],
                  ),
                ))
              ],
            ),
          ),
        )
    );
  }
}
