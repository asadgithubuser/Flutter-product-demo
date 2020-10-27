import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Product.dart';
import 'ProductSingle.dart';
import 'ProductItem.dart';
import 'UsersList.dart';
import 'products/ProductList.dart';

void main() => runApp(MaterialApp(
    title: "Flutter Listing App",
    home:HomeClass()
));

class HomeClass extends StatefulWidget {
  @override
  _HomeClassState createState() => _HomeClassState();
}

class _HomeClassState extends State<HomeClass> {
  final items = Product.getProducts();
  String msg;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

    _showToast(){
      Fluttertoast.showToast(
        msg: "this is the test toast massage",
        backgroundColor: Colors.amber,
        toastLength: Toast.LENGTH_LONG,
        textColor: Colors.white,
      );
    }

    _showSnakBar(String msg){
      var snackbar = SnackBar(content: Text(msg));
      _scaffoldKey.currentState.showSnackBar(snackbar);
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        appBar: AppBar(title: Text('Product List'),),
        floatingActionButton: FloatingActionButton(
      child: Icon(Icons.attach_email),
      onPressed: (){
        _showSnakBar("This message option is not complete yet.");
      },
    ),
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
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserList()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.app_registration),
                title: Text("Product List(API)", style: TextStyle(fontSize: 17, color: Colors.black54),),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductList()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.add_shopping_cart),
                title: Text("View Cart", style: TextStyle(fontSize: 17, color: Colors.black54),),
                onTap: (){
                  setState(() {
                    _showSnakBar("Card view deteils here. comming soon...");
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.attach_email),
                title: Text("User Mail", style: TextStyle(fontSize: 17, color: Colors.black54),),
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact Us", style: TextStyle(fontSize: 17, color: Colors.black54),),
              ),

              ListTile(
                leading: Icon(Icons.add_alert_sharp),
                title: Text("Test Toast", style: TextStyle(fontSize: 17, color: Colors.black54),),
                onTap: (){
                  _showToast();
                },
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

