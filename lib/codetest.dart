import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Myhomepage(),
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
    ),
  ));
}

class Myhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi New Flutter App"),
      ),
      body: Container(
          height: 100,
          color: Colors.white12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(0),
                width: 100,
                height: 100,
                color: Colors.blue,
                // clipBehavior: Clip.antiAlias,
                alignment: Alignment.center,
              ),
              Container(
                padding: const EdgeInsets.all(0),
                width: 100,
                height: 100,
                color: Colors.green,
                // clipBehavior: Clip.antiAlias,
                alignment: Alignment.center,
              ),
              Container(
                padding: const EdgeInsets.all(0),
                width: 100,
                height: 100,
                color: Colors.red,
                // clipBehavior: Clip.antiAlias,
                alignment: Alignment.center,
              )
            ],
          )),
      // decoration: BoxDecoration(
      //   color: Colors.blue,
      //  borderRadius: BorderRadius.circular(10),
      //  gradient: LinearGradient(colors: [
      //    Colors.redAccent,
      //    Colors.yellow,
      //  ]),
      //  boxShadow: [
      //    BoxShadow(
      //     color: Colors.grey,
      //     blurRadius: 10,
      //   )
      // ]),
      // child: Text("I am as a box",
      //    textAlign: TextAlign.center,
      //    style: TextStyle(
      //     fontSize: 20,
      //     color: Colors.white,
      //   //     fontWeight: FontWeight.bold,
      //    )),
      // ),
      // ),
    );
  }
}
