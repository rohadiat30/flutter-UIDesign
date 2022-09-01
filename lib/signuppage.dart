import 'package:flutter/material.dart';
import 'customscrollbehavior.dart';
import 'homepage.dart';
import 'loginpage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController _username;
  late TextEditingController _password;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
            child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Hero(tag: 'logo', child: Image.asset('assets/logo.jpg')),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: TextField(
                controller: _username,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 20),
              child: TextField(
                obscureText: true,
                controller: _password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.blue,
                onPressed: () async {
                  if (_username.text.isEmpty) {
                    bool flag = await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text(
                              'Ooops!',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            content: const Text(
                                'Username must be alphanumeric with at least 3 characters and at most 10 characters'),
                            actions: <Widget>[
                              FlatButton(
                                child: const Text(
                                  'I got it',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () => Navigator.pop(context, false),
                              ),
                            ],
                          );
                        });
                    // ignore: void_checks
                    return Future.value(flag);
                  } else if (_password.text.isEmpty) {
                    bool flag = await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text(
                              'Ooops!',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            content: const Text(
                                'Password must be at least 3 cahracters'),
                            actions: <Widget>[
                              FlatButton(
                                child: const Text(
                                  'I got it',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () => Navigator.pop(context, false),
                              ),
                            ],
                          );
                        });
                    // ignore: void_checks
                    return Future.value(flag);
                  } else {
                    var username = _username.text;
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: new Row(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 5, 30, 5),
                                child: new CircularProgressIndicator(),
                              ),
                              new Text(
                                "Registering. \n Please Wait a moment",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                    Future.delayed(Duration(seconds: 3), () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder:
                                  (BuildContext, Animation, SecondAnimation) {
                                return const HomePage();
                              },
                              settings: RouteSettings(arguments: username)));
                    });
                  }
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Mont',
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              ),
            ),
          ]),
        )),
      ),
    );
  }
}
