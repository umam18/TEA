import 'package:flutter/material.dart';
import 'package:tea/main.dart';
import 'package:tea/layout.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Image(
                  image: AssetImage('assets/Approval.png'),
                  height: SizeConfig.blockVertical * 30,
                )),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  'Time & Expense Approval',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.blockHorizontal * 10),
                )),
            Container(
              width: SizeConfig.blockHorizontal * 160,
              padding: EdgeInsets.all(10),
              child: TextField(
                style: new TextStyle(
                  fontSize: 18.0,
                ),
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              width: SizeConfig.blockHorizontal * 160,
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
            Container(
                //height: SizeConfig.blockVertical * 15,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text(
                    'Login',
                    style: new TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    // print(nameController.text);
                    // print(passwordController.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyBottomNavigationBar()),
                    );
                  },
                )),
          ],
        ));
  }
}
