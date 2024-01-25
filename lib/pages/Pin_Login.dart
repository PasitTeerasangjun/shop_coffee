import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pin_Login extends StatefulWidget {
  const Pin_Login({super.key});

  @override
  State<Pin_Login> createState() => _Pin_LoginState();
}

class _Pin_LoginState extends State<Pin_Login> {
  var _num_1 = "_";
  var _num_2 = "_";
  var _num_3 = "_";
  var _num_4 = "_";
  var _num_5 = "_";
  var _num_6 = "_";
  var _text = "";
  num index = 0;

  Widget buildItem({
    required String label_1,
    required String label_2,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          if (index == 0) {
            _num_1 = label_1;
            _text = label_2;
            index++;
          } else if (index == 1) {
            _num_2 = label_1;
            _text = label_2;
            index++;
          } else if (index == 2) {
            _num_3 = label_1;
            _text = label_2;
            index++;
          } else if (index == 3) {
            _num_4 = label_1;
            _text = label_2;
            index++;
          } else if (index == 4) {
            _num_5 = label_1;
            _text = label_2;
            index++;
          } else if (index == 5) {
            _num_6 = label_1;
            _text = label_2;
            index++;
          } else if (index >= 6) {
            index = 6;
          }
        });
      },
      child: Container(
        width: 60.0,
        height: 60.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label_1,
              style: GoogleFonts.notoSansThai(
                fontWeight: FontWeight.w800,
                fontSize: 15.0,
              ),
            ),
            Text(
              label_2,
              style: GoogleFonts.notoSansThai(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var itemList_1 = [
      buildItem(label_1: "1", label_2: "one"),
      buildItem(label_1: "2", label_2: "two"),
      buildItem(label_1: "3", label_2: "three"),
    ];
    var itemList_2 = [
      buildItem(label_1: "4", label_2: "four"),
      buildItem(label_1: "5", label_2: "five"),
      buildItem(label_1: "6", label_2: "six"),
    ];
    var itemList_3 = [
      buildItem(label_1: "7", label_2: "seven"),
      buildItem(label_1: "8", label_2: "eight"),
      buildItem(label_1: "9", label_2: "nine"),
    ];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.security,
                size: 50,
              ),
              Text("PIN LOGIN"),
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _num_1,
                        style: GoogleFonts.kanit(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w300),
                      ),
                      Text(
                        _num_2,
                        style: GoogleFonts.kanit(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w300),
                      ),
                      Text(
                        _num_3,
                        style: GoogleFonts.kanit(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w300),
                      ),
                      Text(
                        _num_4,
                        style: GoogleFonts.kanit(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w300),
                      ),
                      Text(
                        _num_5,
                        style: GoogleFonts.kanit(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w300),
                      ),
                      Text(
                        _num_6,
                        style: GoogleFonts.kanit(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 200.0,
                //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: itemList_1,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: itemList_2,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: itemList_3,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        clear(),
                        buildItem(label_1: "0", label_2: "zero"),
                        backspace(),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget clear() {
    return InkWell(
      onTap: () {
        setState(() {
          _num_1 = "_";
          _num_2 = "_";
          _num_3 = "_";
          _num_4 = "_";
          _num_5 = "_";
          _num_6 = "_";
          index = 0;
        });
      },
      child: Container(
        width: 60.0,
        height: 60.0,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.close,
            ),
          ],
        ),
      ),
    );
  }

  Widget backspace() {
    return InkWell(
      onTap: () {
        setState(() {
          if (index == 1) {
            _num_1 = "_";
            _text = "";
            index--;
          } else if (index == 2) {
            _num_2 = "_";
            _text = "";
            index--;
          } else if (index == 3) {
            _num_3 = "_";
            _text = "";
            index--;
          } else if (index == 4) {
            _num_4 = "_";
            _text = "";
            index--;
          } else if (index == 5) {
            _num_5 = "_";
            _text = "";
            index--;
          } else if (index == 6) {
            _num_6 = "_";
            _text = "";
            index--;
          }
          
        });
      },
      child: Container(
        width: 60.0,
        height: 60.0,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.backspace,
            ),
          ],
        ),
      ),
    );
  }
}
