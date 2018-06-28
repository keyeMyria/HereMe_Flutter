import 'package:flutter/material.dart';

class savedPage extends StatefulWidget {
  savedPage({
    Key key,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new savedPageState();
  }
}

class savedPageState extends State<savedPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return new Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: new Theme(
          data: theme.copyWith(primaryColor: Colors.purple),
          child: new TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelStyle:
              theme.textTheme.caption.copyWith(color: theme.primaryColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0),
              ),
              prefixIcon: new Image(
                image: new AssetImage('images/search.png'),
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            ),
          ),
        ),
      ),
    );
  }
}