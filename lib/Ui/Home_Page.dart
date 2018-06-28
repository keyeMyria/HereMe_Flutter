import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  homePage({
    Key key,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new homePageState();
  }
}

class homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        bottom: new PreferredSize(
            preferredSize: const Size.fromHeight(30.0),
            child: new Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
              alignment: Alignment.centerLeft,
              child: new Text(
                'HereMe',
                style: new TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.purple),
              ),
            )),
//        title: new Text(
//          'HereMe',
//          textAlign: TextAlign.left,
//          style: new TextStyle(
//            color: Colors.purple,
//            fontWeight: FontWeight.w700,
//            fontSize: 35.0
//          ),),
      ),
    );
  }
}