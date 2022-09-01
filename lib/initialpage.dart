import 'loginpage.dart';
import 'signuppage.dart';
import 'package:flutter/material.dart';

class initialpage extends StatefulWidget {
  const initialpage({Key? key}) : super(key: key);

  @override
  State<initialpage> createState() => _initialpageState();
}

class _initialpageState extends State<initialpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.blue,
          Colors.red,
        ],
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 100.0),
                  child: Hero(
                      tag: 'logo',
                      child: Image.asset(
                        'assets/putih.png',
                        width: 200,
                      ))))
        ],
      ),
    );
  }
}
