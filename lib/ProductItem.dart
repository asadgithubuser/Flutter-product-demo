import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import "Product.dart";
import "RatingBox.dart";

class ProductItem extends StatelessWidget{
  ProductItem({this.item}): super();
  final Product item;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(3),
      height: 160,
      child: Card(
        child: Row(
          children: [
            Image.asset("assets/images/"+this.item.image, width: 150, height: 120,),
            Expanded(child: Container(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(this.item.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),),
                  Text(this.item.description),
                  Text("Price: "+this.item.price.toString(),style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                  RatingBox(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }


}
