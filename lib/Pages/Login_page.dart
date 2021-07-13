import 'package:awesome/Pages/home_page.dart';
// import 'package:awesome/codetest.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routename = "/Login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              "bp1.jpg",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: formkey,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              controller: _usernameController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: "Enter Username",
                                  labelText: "Username"),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password"),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            // ignore: deprecated_member_use
                            RaisedButton(
                              onPressed: () {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) => Myhomepage()));
                                Navigator.pushNamed(
                                    context, Myhomepage.routename);
                              },
                              child: Text("Login"),
                              color: Colors.blueAccent,
                              textColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
