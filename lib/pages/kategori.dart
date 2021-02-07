import 'package:flutter/material.dart';

import 'package:para_biriktir/bilesenler.dart';
import 'package:para_biriktir/pages/home.dart';

class Kategori extends StatefulWidget {
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kategoriler"),
        backgroundColor: Colors.pink,
        centerTitle: true,
        elevation: 1,
        actions: [
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyAppHome()));
              }),
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Ekle"),
                          content: Container(
                            height: 165,
                            child: AlertBilesenleri(),
                          ),
                        ));
              })
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text("Bakiye:"),
                subtitle: Text("2800 TL"),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text("Gider:"),
                subtitle: Text(
                  "52 TL",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            Expanded(
                child: IconButton(
                    icon: Icon(Icons.remove_red_eye, color: Colors.pink),
                    onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
