import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Myhomepage(),
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
    ),
  ));
}

class Myhomepage extends StatefulWidget {
  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  var myText = "Change my Name..";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Hi New Flutter App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/bp1.jpg",
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter some Text",
                          labelText: "Name"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Umezuruike Victor"),
                accountEmail: Text("Victorchinomso80@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80"),
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Umezuruike Victor"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Alex"),
              subtitle: Text("Web Developer"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Fero"),
              subtitle: Text("Graduate"),
              trailing: Icon(Icons.edit),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
