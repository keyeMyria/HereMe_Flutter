import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import './Add_Profile_Pic.dart';

class SignUp extends StatelessWidget {
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
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final yourname = TextFormField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'First Name',
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

    final signButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new profilePic()));
          },
          color: Colors.purple,
          child: Text('Sign In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
    _launchURL() async {
      const url =
          'https://termsfeed.com/terms-conditions/eb83aa859848185014a8c99fb5fbfadb';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    final forgotLabel = FlatButton(
      child: InkWell(
        child: new Text('Terms Of Use'),
      ),
      onPressed: _launchURL,
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
            SizedBox(height: 8.0),
            yourname,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            signButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}