import 'package:flutter/material.dart';
import 'BottomNavigationBarDisplay/FirstPage.dart';
import 'BottomNavigationBarDisplay/SecondPage.dart';
import 'BottomNavigationBarDisplay/ThirdPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentIndex;
  late List<Widget> listWidget;
  late List<Widget> listAppbar;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    String username = ModalRoute.of(context)!.settings.arguments as String;
    listAppbar = <Widget>[];
    listAppbar.add(Text('Home - $username'));
    listAppbar.add(const Text('Contact'));
    listAppbar.add(const Text('Settings'));
    listWidget = <Widget>[];
    listWidget.add(FirstPage());
    listWidget.add(SecondPage());
    listWidget.add(ThirdPage(username: username));
  }

  Future<bool> onWillPop() async {
    bool flag = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Confirmation'),
            content: const Text('Are you sure want to logout?'),
            actions: <Widget>[
              FlatButton(
                child: const Text('No'),
                onPressed: () => Navigator.pop(context, false),
              ),
              FlatButton(
                child: const Text('Yes'),
                onPressed: () => Navigator.pop(context, true),
              )
            ],
          );
        });
    return Future.value(flag);
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
          appBar: AppBar(
            title: listAppbar[currentIndex],
            centerTitle: true,
          ),
          body: listWidget[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: currentIndex,
            onTap: onTap,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.contacts_sharp),
                label: 'Contact',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setting',
              ),
            ],
          )),
    );
  }
}
