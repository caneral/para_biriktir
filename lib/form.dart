import 'package:flutter/material.dart';

class FormOlustur extends StatefulWidget {
  String sekmeBaslik;
  String icYazi;
  FormOlustur({this.sekmeBaslik, this.icYazi});

  @override
  _FormOlusturState createState() => _FormOlusturState();
}

class _FormOlusturState extends State<FormOlustur> {
  @override
  Widget build(BuildContext context) {
    bool girisYapildi = false;
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 50, bottom: 4, top: 30),
            child: Text(
              widget.sekmeBaslik,
              style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontSize: 15,
                  color: Color(0xff8f9db5)),
            ),
          ),
        ),
        //TEXTFORM kısmı
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
          child: TextFormField(
            onEditingComplete: () {
              setState(() {
                girisYapildi = true;
              });
            },
            style: TextStyle(
              fontSize: 19,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              hintText: widget.icYazi,
              hintStyle: TextStyle(
                fontSize: 19,
                color: Colors.grey[350],
                fontWeight: FontWeight.w600,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 27, horizontal: 25),
              focusColor: Color(0xff0926ff),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(27),
                borderSide: BorderSide(
                  color: Colors.pink,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(27),
                borderSide: BorderSide(
                  color: Colors.grey[350],
                ),
              ),
              suffixIcon: girisYapildi == false
                  ? Icon(
                      Icons.check_box_outline_blank,
                      color: Colors.pink,
                    )
                  : Icon(Icons.check_box),
            ),
          ),
        ),
      ],
    );
  }
}
