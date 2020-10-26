import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Product.dart';
import 'ProductSingle.dart';
import 'ProductItem.dart';

void main() => runApp(MaterialApp(
    title: "Flutter Listing App",
    home:HomeClass()
));




class HomeClass extends StatelessWidget {
  final items = Product.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Product List'),),
        drawer: Drawer(
          child: ListView(
            children: [
              Image.asset("assets/images/dorgora.png"),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home", style: TextStyle(fontSize: 17, color: Colors.amber),),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("User Account", style: TextStyle(fontSize: 17, color: Colors.black54),),
              ),
              ListTile(
                leading: Icon(Icons.add_shopping_cart),
                title: Text("View Cart", style: TextStyle(fontSize: 17, color: Colors.black54),),
              ),
              ListTile(
                leading: Icon(Icons.attach_email),
                title: Text("User Mail", style: TextStyle(fontSize: 17, color: Colors.black54),),
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact Us", style: TextStyle(fontSize: 17, color: Colors.black54),),
              ),

            ],
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
             return GestureDetector(
               child: ProductItem(item: items[index]),
               onTap:(){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => ProductSingle(item: items[index])),
                 );
               },
             );
          },
        )
    );
  }
}

