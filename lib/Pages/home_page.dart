import 'package:awesome/Drawer.dart';
// import 'package:awesome/Name_Card_Widget.dart';
import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
   static const String routename = "/home";
  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  // var myText = "Change my Name..";

  // TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Hi New Flutter App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          //child: SingleChildScrollView(
          // child:
          //      NameCardWidget(myText: myText, nameController: _nameController),
        ),
      ),
      //),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
