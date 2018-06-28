import 'package:flutter/material.dart';

class helpAndSupport extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new helpSupportState();
  }
}

class helpSupportState extends State<helpAndSupport> {
  @override
  Widget build(BuildContext context) {
    final link = new Container(
      child: new Row(children: <Widget>[
        new Image(image: new AssetImage('images/link.png')),
        new InkWell(
          child: new Text(
            '    Privacy Policy',
            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
          ),
        ),
      ]),
    );
    final rateApp = new Container(
      child: new Row(children: <Widget>[
        new Image(image: new AssetImage('images/star.png')),
        new InkWell(
          child: new Text(
            '    Terms & Conditions',
            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
          ),
        ),
      ]),
    );
    final helpSupport = new Container(
      child: new Row(children: <Widget>[
        new Image(image: new AssetImage('images/help.png')),
        new InkWell(
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new helpAndSupport()));
          },
          child: new Text(
            '    Blocker User',
            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
          ),
        ),
      ]),
    );
    final otherApps = new Container(
      child: new Row(children: <Widget>[
        new Image(image: new AssetImage('images/binoculars.png')),
        new InkWell(
          child: new Text(
            '    Change HereMe Name',
            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
          ),
        ),
      ]),
    );
    final hideMe = new Container(
      child: new Row(children: <Widget>[
        new Image(image: new AssetImage('images/detective.png')),
        new InkWell(
          child: Text(
            '    Reset Password',
            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
          ),
        ),
      ]),
    );
    final logout = new Container(
      child: new Row(children: <Widget>[
        new Image(image: new AssetImage('images/logout.png')),
        new Text(
          '    Delete HereMe Account',
          style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
        ),
      ]),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: new BackButton(
          color: Colors.purple,
        ),
        bottom: new PreferredSize(
            preferredSize: const Size.fromHeight(30.0),
            child: new Container(
              padding: EdgeInsets.fromLTRB(19.0, 0.0, 0.0, 0.0),
              alignment: Alignment.centerLeft,
              child: new Text(
                'Help & Support',
                style: new TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.purple),
              ),
            )),
      ),
      backgroundColor: Colors.grey[0xf5f5f5],
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 24.0, right: 17.0),
        children: <Widget>[
          SizedBox(height: 50.0),
          link,
          SizedBox(height: 60.0),
          rateApp,
          SizedBox(height: 60.0),
          helpSupport,
          SizedBox(height: 60.0),
          otherApps,
          SizedBox(height: 60.0),
          hideMe,
          SizedBox(height: 60.0),
          logout
        ],
      ),
    );
  }
}