import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List<Map> menu = [
    {
      'label': 'Payment',
      'icon': Icon(Icons.wallet, color: Colors.red),
    },
    {
      'label': 'Coference',
      'icon': Icon(Icons.laptop, color: Colors.orange),
    },
    {
      'label': 'Call',
      'icon': Icon(Icons.phone, color: Colors.green),
    },
    {
      'label': 'Email',
      'icon': Icon(Icons.email, color: Colors.grey),
    },
    {
      'label': 'Messenger',
      'icon': Icon(Icons.group, color: Colors.green),
    },
    {
      'label': 'Favorite',
      'icon': Icon(
        Icons.thumb_up,
        color: Colors.blue,
      ),
    },
    {
      'label': 'History',
      'icon': Icon(Icons.history, color: Colors.orange),
    },
    {
      'label': 'More',
      'icon': Icon(Icons.more_horiz),
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Hint:
    // Bagian Partner, Offers, News, dan Charity dibuat menggunakan GridView.builder
    // dengan menambahkan atribut berupa scrollDirection.
    // Tempatkan GridView.builder pada Container dan deklarasikan
    // atribut height pada Container agar mencegah adanya error berupa
    // "Horizontal viewport was given unbounded height" pada saat Flutter
    // melakukan render GridView, mengingat lebar dari GridView secara default
    // menyesuaikan dengan parent Widget-nya.
    //
    // Contoh:
    // Container(
    //    height: 150,
    //    child: GridView.builder(
    //      ...
    //    )
    // )

    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          child: Stack(children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueAccent,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3 - 30,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: Border.all(width: 1.0, color: Colors.grey)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Wrap(children: <Widget>[
                        for (final menu in menu)
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: (menu['icon']),
                                  tooltip: menu['label'],
                                  onPressed: () {},
                                ),
                                Text(menu['label'])
                              ],
                            ),
                          ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            height: MediaQuery.of(context).size.height / 3 + 10,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(width: 1.0, color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    'Patners Near Me',
                    style: TextStyle(
                        fontFamily: 'Mount',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 4 + 30,
                    width: MediaQuery.of(context).size.width - 60,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1.0, color: Colors.grey)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/resto.jpg',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text('Partner ${index + 1}'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            height: MediaQuery.of(context).size.height / 3 + 10,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(width: 1.0, color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    'Offers',
                    style: TextStyle(
                        fontFamily: 'Mount',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 4 + 30,
                    width: MediaQuery.of(context).size.width - 60,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1.0, color: Colors.grey)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/offer.jpg',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text('Offer ${index + 1}'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            height: MediaQuery.of(context).size.height / 3 + 10,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(width: 1.0, color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    'News',
                    style: TextStyle(
                        fontFamily: 'Mount',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 4 + 30,
                    width: MediaQuery.of(context).size.width - 60,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1.0, color: Colors.grey)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/news.png',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text('News ${index + 1}'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            height: MediaQuery.of(context).size.height / 3 + 10,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(width: 1.0, color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    'Charity',
                    style: TextStyle(
                        fontFamily: 'Mount',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 4 + 30,
                    width: MediaQuery.of(context).size.width - 60,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1.0, color: Colors.grey)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/charity.jpg',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text('Charity ${index + 1}'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
