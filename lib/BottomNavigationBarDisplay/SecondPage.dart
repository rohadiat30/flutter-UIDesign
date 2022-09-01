import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/person.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Person ${index + 1}',
                style:
                    TextStyle(fontFamily: 'Mount', fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
    ));
  }
}
