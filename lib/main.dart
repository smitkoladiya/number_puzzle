import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: number_puzzle(),
  ));
}

class number_puzzle extends StatefulWidget {
  const number_puzzle({super.key});

  @override
  State<number_puzzle> createState() => _number_puzzleState();
}

class _number_puzzleState extends State<number_puzzle> {
  List l = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    "",
  ];
  bool temp = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    l.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    //print("BuildContext methhod called ...");
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 450,
          width: 450,
          color: Colors.indigo,
          alignment: Alignment.center,
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (temp == false) {
                        if (l[1] == "") {
                          l[1] = l[0];
                          l[0] = "";
                        }
                        if (l[3] == "") {
                          l[3] = l[0];
                          l[0] = "";
                        }
                      } else {
                        null;
                      }
                      win();
                      setState(() {});
                    },
                    child: Container(
                      color: CupertinoColors.activeOrange,
                      margin: EdgeInsets.all(15),
                      height: 100,
                      child: Text("${l[0]}"),
                      width: 100,
                      alignment: Alignment.center,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (temp == false) {
                        if (l[0] == "") {
                          l[0] = l[1];
                          l[1] = "";
                        }

                        if (l[2] == "") {
                          l[2] = l[1];
                          l[1] = "";
                        }
                        if (l[4] == "") {
                          l[4] = l[1];
                          l[1] = "";
                        }
                      }
                      win();
                      setState(() {});
                    },
                    child: Container(
                      color: CupertinoColors.activeOrange,
                      margin: EdgeInsets.all(15),
                      height: 100,
                      child: Text("${l[1]}"),
                      width: 100,
                      alignment: Alignment.center,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (temp == false) {
                        if (l[1] == "") {
                          l[1] = l[2];
                          l[2] = "";
                        }
                        if (l[5] == "") {
                          l[5] = l[2];
                          l[2] = "";
                        }
                      }
                      win();
                      setState(() {});
                    },
                    child: Container(
                      color: CupertinoColors.activeOrange,
                      margin: EdgeInsets.all(15),
                      height: 100,
                      child: Text("${l[2]}"),
                      width: 100,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (temp == true) {
                        if (l[0] == "") {
                          l[0] = l[3];
                          l[3] = "";
                        }
                        if (l[4] == "") {
                          l[4] = l[3];
                          l[3] = "";
                        }
                        if (l[6] == "") {
                          l[6] = l[3];
                          l[3] = "";
                        }
                      }
                      win();
                      setState(() {});
                    },
                    child: Container(
                      color: CupertinoColors.activeOrange,
                      margin: EdgeInsets.all(15),
                      height: 100,
                      child: Text("${l[3]}"),
                      width: 100,
                      alignment: Alignment.center,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (temp == false) {
                        if (l[1] == "") {
                          l[1] = l[4];
                          l[4] = "";
                        }
                        if (l[3] == "") {
                          l[3] = l[4];
                          l[4] = "";
                        }
                        if (l[7] == "") {
                          l[7] = l[4];
                          l[4] = "";
                        }
                        if (l[5] == "") {
                          l[5] = l[4];
                          l[4] = "";
                        }
                      }
                      win();
                      setState(() {});
                    },
                    child: Container(
                      color: CupertinoColors.activeOrange,
                      margin: EdgeInsets.all(15),
                      height: 100,
                      child: Text("${l[4]}"),
                      width: 100,
                      alignment: Alignment.center,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (temp == false) {
                        if (l[2] == "") {
                          l[2] = l[5];
                          l[5] = "";
                        }
                        if (l[8] == "") {
                          l[8] = l[5];
                          l[5] = "";
                        }
                        if (l[4] == "") {
                          l[4] = l[5];
                          l[5] = "";
                        }
                      }
                      win();
                      setState(() {});
                    },
                    child: Container(
                      color: CupertinoColors.activeOrange,
                      margin: EdgeInsets.all(15),
                      height: 100,
                      child: Text("${l[5]}"),
                      width: 100,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (temp == false) {
                        if (l[3] == "") {
                          l[3] = l[6];
                          l[6] = "";
                        }
                        if (l[7] == "") {
                          l[7] = l[6];
                          l[6] = "";
                        }
                      }
                      win();
                      setState(() {});
                    },
                    child: Container(
                      color: CupertinoColors.activeOrange,
                      margin: EdgeInsets.all(15),
                      height: 100,
                      child: Text("${l[6]}"),
                      width: 100,
                      alignment: Alignment.center,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (temp == false) {
                        if (l[6] == "") {
                          l[6] = l[7];
                          l[7] = "";
                        }
                        if (l[4] == "") {
                          l[4] = l[7];
                          l[7] = "";
                        }
                        if (l[8] == "") {
                          l[8] = l[7];
                          l[7] = "";
                        }
                      }
                      win();
                      setState(() {});
                    },
                    child: Container(
                      color: CupertinoColors.activeOrange,
                      margin: EdgeInsets.all(15),
                      height: 100,
                      child: Text("${l[7]}"),
                      width: 100,
                      alignment: Alignment.center,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (temp == false) {
                        if (l[7] == "") {
                          l[7] = l[8];
                          l[8] = "";
                        }
                        if (l[5] == "") {
                          l[5] = l[8];
                          l[8] = "";
                        }
                      }
                      win();
                      setState(() {});
                    },
                    child: Container(
                      color: CupertinoColors.activeOrange,
                      margin: EdgeInsets.all(15),
                      height: 100,
                      child: Text("${l[8]}"),
                      width: 100,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    l.shuffle();
                    str = "";
                    // temp=false
                    setState(() {});
                  },
                  child: Text(
                    "RESET",
                  )),
              Text("$str")
            ],
          ),
        ),
      ),
    );
  }

  win() {
    if (l[0] == 1 &&
        l[1] == 2 &&
        l[2] == 3 &&
        l[3] == 4 &&
        l[4] == 5 &&
        l[5] == 6 &&
        l[6] == 7 &&
        l[7] == 8 &&
        l[8] == "") {
      str = "player is win";
      temp = true;
      // print(str);
    } else {
      str = "game is running ";
    }
    setState(() {});
  }

  String str = "";
}
