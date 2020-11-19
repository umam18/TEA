import 'package:flutter/material.dart';
import 'Expense_Management.dart';
import 'Login_Screen.dart';

class DetailExpensePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<DetailExpensePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExpensePage()),
                  );
                },
                icon: const Icon(Icons.chevron_left, size: 32.0),
              ),
              Text("Detail Expense Management"),
            ],
          ),
          titleSpacing: 0.0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 300,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      style: new TextStyle(
                        fontSize: 18.0,
                      ),
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(flex: 2, child: Container()),
                      Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            //width: 100,
                            height: 50,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  MaterialButton(
                                    textColor: Colors.white,
                                    color: Colors.blueAccent,
                                    child: Text(
                                      'Approve',
                                      style: new TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) => MenuDetailTime()),
                                      // );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            //margin: EdgeInsets.all(10),
                            //width: 100,
                            height: 50,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RaisedButton(
                                    textColor: Colors.white,
                                    color: Colors.redAccent,
                                    child: Text(
                                      'Reject',
                                      style: new TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) => MenuDetailTime()),
                                      // );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          )),
                      Expanded(flex: 2, child: Container()),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Approval Process',
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),

                  //Looping Approval Process
                  for (int i = 0; i < 3; i++)
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //Expanded(flex: 2, child: Container()),
                          Expanded(
                              flex: 6,
                              child: Container(
                                //margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                //width: 100,
                                height: 50,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Javier Hernandez2",
                                          style: new TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.brown)),
                                      Text("1st Approval",
                                          style: new TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.pinkAccent)),
                                    ],
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                //margin: EdgeInsets.all(10),
                                //width: 100,
                                height: 50,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      RaisedButton(
                                        textColor: Colors.white,
                                        color: Colors.lightBlueAccent,
                                        child: Text(
                                          'Approved',
                                          style: new TextStyle(
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) => MenuDetailTime()),
                                          // );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          Expanded(flex: 1, child: Container()),
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink, width: 2),
                          color: Colors.white),
                    ),
                ],
              ),
            )));
  }
}
