import 'package:flutter/material.dart';
import 'custom_dropdown.dart' as custom;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tea/main.dart';
import 'Login_Screen.dart';

class TimePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<TimePage> {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  String _valEmployee;
  String _valFilter;
  List _employee = [
    "Clara",
    "John",
    "Rizal",
    "Steve",
    "Laurel",
    "Bernard",
    "etc."
  ];
  List _filter = ["Job Number", "Labor Type", "Date", "etc."];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5.0,
          title: Text('Main Menu'),
          leading: new Container(),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                IconData(0xe848, fontFamily: 'MaterialIcons'),
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            )
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  //color: const Color(0x3FC1C9),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    'Time Management',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                  )),
              Container(
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: custom.DropdownButton(
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 42,
                    underline: SizedBox(),
                    iconEnabledColor: Colors.blue,
                    isDense: false,
                    isExpanded: true,
                    hint: Text("Select Approver"),
                    value: _valEmployee,
                    items: _employee.map((value) {
                      return custom.DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _valEmployee = value;
                      });
                    },
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(12.0),
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "10",
                            style: TextStyle(
                              fontSize: 35.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Approved",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(200),
                      ),
                      color: Colors.yellowAccent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "22",
                            style: TextStyle(
                              fontSize: 35.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Pending",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(200),
                      ),
                      color: Colors.redAccent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "16",
                            style: TextStyle(
                              fontSize: 35.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Rejected",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(200),
                      ),
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                    //width: 100,
                    height: 50,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "To be processed",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.orange),
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 20, 10),
                    //margin: EdgeInsets.all(10),
                    //width: 100,
                    height: 50,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Completed",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.green,
                    ),
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 6,
                      child: Container(
                        //width: 200,
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                        child: TextField(
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search Data",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blueAccent, width: 32.0),
                                    borderRadius: BorderRadius.circular(25.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 32.0),
                                    borderRadius:
                                        BorderRadius.circular(25.0)))),
                      )),
                  Expanded(
                      flex: 3,
                      child: custom.DropdownButton(
                        icon: FaIcon(FontAwesomeIcons.filter),
                        iconSize: 30,
                        underline: SizedBox(),
                        iconEnabledColor: Colors.red,
                        isDense: false,
                        isExpanded: true,
                        hint: Text(" "),
                        value: _valFilter,
                        items: _filter.map((value) {
                          return custom.DropdownMenuItem(
                            child: Text(value),
                            value: value,
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _valFilter = value;
                          });
                        },
                      )),
                  Expanded(flex: 1, child: Container()),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    for (int i = 0; i < 6; i++)
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                        width: 150,
                        height: 240,
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Align(
                                alignment: FractionalOffset.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: RaisedButton(
                                    textColor: Colors.white,
                                    color: Colors.pinkAccent,
                                    child: Text(
                                      'Detail',
                                      style: new TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MenuDetailTime()),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink, width: 2),
                            color: Colors.white),
                      ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
