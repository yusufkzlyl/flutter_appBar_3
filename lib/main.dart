import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 51, 102, 1),
          title: Text(
            'Flutter AppBar 3',
          ),
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Anasayfa'),
              Tab(icon: Icon(Icons.person_pin), text: 'Profilim'),
              Tab(icon: Icon(Icons.star_border), text: 'Favorilerim'),
              Tab(icon: Icon(Icons.settings), text: 'Ayarlar'),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 55,
            color: Color.fromRGBO(0, 51, 102, 1),
          ),
        ),
        body: Container(),
      ));
}
