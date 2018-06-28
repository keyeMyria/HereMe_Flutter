import 'package:flutter/material.dart';
import './Menu_Page.dart';

class userPage extends StatefulWidget {
  userPage({
    Key key,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new userPageState();
  }
}

class userPageState extends State<userPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        bottom: new PreferredSize(
            preferredSize: const Size.fromHeight(30.0),
            child: new Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
              alignment: Alignment.centerLeft,
              child: new Text(
                'User Name',
                style: new TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.purple),
              ),
            )),
        actions: <Widget>[
          new IconButton(
              icon: new Image(image: new AssetImage('images/menu2.png')),
              color: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => menuPage()));
              })
        ],
      ),
    );
  }
}
