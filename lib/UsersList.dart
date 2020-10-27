import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';


class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List userDataLists;

  FutureOr<String> jsonUserData() async{
     var jsonData = await rootBundle.loadString("assets/users.json");
     setState(() {
       userDataLists = json.decode(jsonData);
     });
     return "success";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.jsonUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Users List"),),
      body: ListView.builder(
        itemCount: userDataLists.length==null?0:userDataLists.length,
        itemBuilder: (BuildContext context, int index){
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Image.network(userDataLists[index]['image']),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(userDataLists[index]['name'], style: TextStyle(fontSize: 19, color: Colors.blueAccent, fontWeight: FontWeight.bold),),
                    Text(userDataLists[index]['phone']),
                    Text(userDataLists[index]['email']),
                    Text(userDataLists[index]['address']),
                  ],
                ),
              )
            ],
          );
      }),
    );
  }
}
