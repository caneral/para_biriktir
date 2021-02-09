import 'package:flutter/material.dart';

import 'package:para_biriktir/bilesenler.dart';
import 'package:para_biriktir/form.dart';
import 'package:para_biriktir/pages/home.dart';

class Gider extends StatefulWidget {
  @override
  _GiderState createState() => _GiderState();
}

class _GiderState extends State<Gider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giderler"),
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
      body: Container(
        child: Column(
          children: [
            FormOlustur(
              sekmeBaslik: "Gider Adı",
              icYazi: "Gider kaynağı(Örn: Su Faturası)",
            ),
            FormOlustur(
              sekmeBaslik: "Miktar",
              icYazi: "100 TL",
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
