import 'package:flutter/material.dart';

//Kendi importlarım

import 'package:para_biriktir/bilesenler.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatefulWidget {
  @override
  _MyAppHomeState createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> {
  @override
  Widget build(BuildContext context) {
    //Bu kod bize ekranın genişliğini verecek
    final mediaQuerydata = MediaQuery.of(context);
    final size = mediaQuerydata.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Para Biriktir"),
        backgroundColor: Colors.pink,
        centerTitle: true,
        elevation: 1,
        actions: [
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
      body: Stack(
        children: [
          Center(
            child: ListTile(
              title: Icon(
                Icons.account_balance_wallet,
                size: 64,
                color: Colors.grey,
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: size / 3.5),
                child: Text(
                  "Paranızı israf etmeyin!",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          )
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
