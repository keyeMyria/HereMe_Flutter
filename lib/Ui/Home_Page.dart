import 'package:flutter/material.dart';
import './Menu_Page.dart';

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

  int _count = 0;
  var list = ['images/radar.png', 'images/menu.png', 'images/link.png'];



  void _userImage() {
    setState(() {
      _count++;

    });
  }
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
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: _userImage,
          child: new Icon(
              Icons.add,
              color: Colors.white,),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Expanded(
              child: new CustomScrollView(
                slivers: <Widget>[
                  new SliverGrid(
                    gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 80.0,
                      mainAxisSpacing: 3.0,
                      crossAxisSpacing: 3.0,
                      childAspectRatio: 1.0,
                    ),
                    delegate: new SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                         for(index == 0; index < 10; index++ ) {
                           return new Container(
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10.0),
                                 border: Border.all(color: Colors.blue)
                             ),
                             child: InkWell(
                                 onTap: () {
                                   Navigator.push(
                                     context,
                                     new MaterialPageRoute(
                                         builder: (context) => new menuPage()),
                                   );
                                 },
                                 child: new Image(
                                     image: new AssetImage(list[index]))
                             ),
                           );
                         }
                      },
                     childCount: _count,

                    ),
                  ),
                ],
              )
            ),
        ],
      ),
    );
  }
}