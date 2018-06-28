import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class profilePic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new profilePicState();
  }
}

class profilePicState extends State<profilePic> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    final image = new Image(image: new AssetImage('images/profilepic.png'));
    final addPic = new MaterialButton(
      onPressed: getImage,
      color: Colors.blueAccent,
      child: new Text(
        'Add Profile Picture',
        style: new TextStyle(
          color: Colors.white,
          fontSize: 15.0,
        ),
      ),
    );
    return new Scaffold(
        body: new Center(
            child: new ListView(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              children: <Widget>[
                SizedBox(height: 100.0),
                image,
                SizedBox(height: 0.0),
                addPic,
              ],
            )));
  }
}