import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import './Main_Page.dart';

class Login extends StatelessWidget {
  _textInput() async {
    new TextInputConfiguration(
      inputAction: TextInputAction.newline,
    );
  }

  @override
  Widget build(BuildContext context) {
    final hereme = new Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(bottom: 150.0),
      child: new Text(
        'HereMe',
        style: new TextStyle(
            fontSize: 80.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      autocorrect: true,
      //controller: _textInput(),
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => Mainpage()),
            );
          },
          color: Colors.purple,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 100.0),
            hereme,
            SizedBox(height: 0.0),
            email,
            SizedBox(height: 10.0),
            password,
            SizedBox(height: 0.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}