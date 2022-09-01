import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  //deklarasi parameter yang dibuat pada constructor ThirdPage
  //parameter yang diterima berupa "username"
  String username;
  ThirdPage({Key? key, required this.username}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool isSwitched = false;
  late String nama = widget.username;
  // Hint:
  // Didalam class State ini, gunakan syntax "widget.username"
  // untuk mengakses variabel "username" pada widget ThirdPage.
  // Contoh:
  //    String ID;
  //    ID = widget.username;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/food.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                right: 10,
                bottom: 10,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white54,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.photo_camera),
                    onPressed: () {},
                  ),
                ),
              ),
            ]),
          ),
          Column(
            children: [
              Container(
                  child: Column(
                children: [
                  ListTile(
                    title: Text('Your Dispaly Name'),
                    subtitle: Text(
                      nama,
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Your Username ID'),
                    subtitle: Text(
                      nama,
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Allow New Invitation'),
                    subtitle: Text(
                        'When Turn off, You are not be able to receive any invitations'),
                    trailing: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Announcement'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Export My Reference'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Logout'),
                  ),
                  Divider()
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
