import 'package:flutter/material.dart';

import 'package:para_biriktir/bilesenler.dart';
import 'package:para_biriktir/pages/home.dart';
import 'package:para_biriktir/form.dart';

class Gelir extends StatefulWidget {
  @override
  _GelirState createState() => _GelirState();
}

class _GelirState extends State<Gelir> {
  @override
  Widget build(BuildContext context) {
    //Ekran boyutunu almak için
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Gelir"),
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
              }),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            FormOlustur(
              sekmeBaslik: "Gelir Adı",
              icYazi: "Gelir kaynağı(Örn: Maaş)",
            ),
            FormOlustur(
              sekmeBaslik: "Miktar",
              icYazi: "1000 TL",
            )
          ],
        ),
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
