import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
