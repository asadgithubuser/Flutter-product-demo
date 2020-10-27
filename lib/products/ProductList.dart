import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List products;

  Future<bool> getAPIData() async {
    var response = await http.get("https://jsonplaceholder.typicode.com/photos");
    setState(() {
      products = json.decode(response.body.toString());
    });
    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getAPIData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Product List"),),
      body: ListView.builder(
        itemCount: products.length==null?0:products.length,
        itemBuilder: (BuildContext context, int index){
          return Column(
            children: <Widget>[
              Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.network(products[index]['url']),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(products[index]["title"], style: TextStyle(fontSize: 22, color: Colors.black54),),
                          SizedBox(height: 15,),
                          Text("culpa odio esse rerum omnis laboriosam voluptate repudiandaeculpa odio esse rerum omnis laboriosam voluptate repudiandae"),
                          SizedBox(height: 10,),
                          Text("Price : \$4340.00", style: TextStyle(fontSize: 19, color: Colors.blue), )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          );

        },
      ),
    );
  }
}
