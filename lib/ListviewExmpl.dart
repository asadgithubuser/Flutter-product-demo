import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: "Flutter Listing App",
    home:HomeClass()
));

class HomeClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Product List'),),
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(2),
          children: [
            Products(
                name: "product name",
                description: "This is the product description for product page",
                price: 25000,
                image: "iphone.png"
            ),
            Products(
                name: "product name",
                description: "This is the product description for product page",
                price: 25000,
                image: "iphone.jpg"
            ),
            Products(
                name: "product name",
                description: "This is the product description for product page",
                price: 25000,
                image: "iphone.png"
            ),
            Products(
                name: "product name",
                description: "This is the product description for product page",
                price: 25000,
                image: "iphone.jpg"
            ),
            Products(
                name: "product name",
                description: "This is the product description for product page",
                price: 25000,
                image: "iphone.png"
            ),
            Products(
                name: "product name",
                description: "This is the product description for product page",
                price: 25000,
                image: "iphone.jpg"
            ),
            Products(
                name: "product name",
                description: "This is the product description for product page",
                price: 25000,
                image: "iphone.png"
            ),
            Products(
                name: "product name",
                description: "This is the product description for product page",
                price: 25000,
                image: "iphone.png"
            ),
          ],
        )
    );
  }
}

class Products extends StatelessWidget{
  Products({this.name, this.description, this.price, this.image}): super();
  String name;
  String description;
  int price;
  String image;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(3),
      height: 160,
      child: Card(
        child: Row(
          children: [
            Image.asset("assets/images/"+image),
            Expanded(child: Container(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(this.name, style: TextStyle(fontSize: 20),),
                  Text(this.description),
                  Text(this.price.toString()),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }


}

