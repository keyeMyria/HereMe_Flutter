import 'package:flutter/material.dart';
import './Login.dart';
import './SignUp.dart';


class HereMeLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HereMeLoginState();
  }
}

class HereMeLoginState extends State<HereMeLogin> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Expanded(
            child: Image(
              fit: BoxFit.fill,
              image: new AssetImage('images/HereMeLogo2White 2.png'),
            ),
          ),
          new Expanded(
              child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Expanded(
                        child: new MaterialButton(
                            child: new Text('L\nO\nG\n \n I\nN',
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                )),
                            color: Colors.blue,
                            height: 412.0,
                            minWidth: 187.5,
                            onPressed: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new Login()),
                              );
                            })),
                    new Expanded(
                        child: new MaterialButton(
                            child: new Text('S\n I\nG\nN\n \n I\nN',
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                )),
                            color: Colors.purple,
                            height: 412.0,
                            minWidth: 187.5,
                            onPressed: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new SignUp()),
                              );
                            })),
                  ])),
        ],
      ),
    );
  }
}

