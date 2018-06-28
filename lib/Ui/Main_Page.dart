import 'package:flutter/material.dart';
import './Home_Page.dart';
import './Saved_Page.dart';
import './User_Page.dart';

class Mainpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainpageState();
  }
}

class MainpageState extends State<Mainpage> {
  final Key keyone = PageStorageKey('homePage');
  final Key keytwo = PageStorageKey('savedPage');
  final Key keythree = PageStorageKey('userPage');

  int currentTab = 0;

  homePage one;
  savedPage two;
  userPage three;
  List<Widget> pages;
  Widget currentPage;

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  void initState() {
    one = homePage(key: keyone);
    two = savedPage(
      key: keytwo,
    );
    three = userPage(
      key: keythree,
    );

    pages = [one, two, three];

    currentPage = one;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[0xf5f5f5],
      body: PageStorage(
        child: currentPage,
        bucket: bucket,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        fixedColor: Colors.purple,
        currentIndex: currentTab,
        iconSize: 30.0,
        onTap: (int index) {
          setState(() {
            currentTab = index;
            currentPage = pages[index];
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes), title: Text('Find Them')),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            title: Text('Saved Them'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Me'))
        ],
      ),
    );
  }
}
