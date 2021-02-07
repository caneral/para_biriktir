import 'package:flutter/material.dart';

//kendi importlarım
import 'package:para_biriktir/pages/gelir.dart';
import 'package:para_biriktir/pages/gider.dart';
import 'package:para_biriktir/pages/kategori.dart';

class AlertBilesenleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Burası yeni harcamalar eklemek için kullanılan düğmedir.
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(4),
              child: Icon(Icons.attach_money),
            ),
            Padding(
              padding: EdgeInsets.all(2),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Gelir()));
                },
                child: Text("Gelir"),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(4),
              child: Icon(Icons.money_off),
            ),
            Padding(
              padding: EdgeInsets.all(2),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Gider()));
                },
                child: Text("Gider"),
              ),
            ),
          ],
        ),
        //Burası yeni kategoriler eklemek için
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(4),
              child: Icon(Icons.dashboard),
            ),
            Padding(
              padding: EdgeInsets.all(2),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Kategori()));
                },
                child: Text("Kategori"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
