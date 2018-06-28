import 'package:flutter/material.dart';
import './Ui/Login_Page.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HereMeLogin(),
    theme: ThemeData(
      primaryColor: Colors.purple,
      accentColor: Colors.white,
    ),
  ));
}


//class Login extends StatelessWidget {
//  _textInput() async {
//    new TextInputConfiguration(
//      inputAction: TextInputAction.newline,
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    final hereme = new Container(
//      alignment: Alignment.topCenter,
//      padding: EdgeInsets.only(bottom: 150.0),
//      child: new Text(
//        'HereMe',
//        style: new TextStyle(
//            fontSize: 80.0,
//            fontStyle: FontStyle.normal,
//            fontWeight: FontWeight.w800),
//      ),
//    );
//
//    final email = TextFormField(
//      keyboardType: TextInputType.emailAddress,
//      autofocus: false,
//      autocorrect: true,
//      //controller: _textInput(),
//      decoration: InputDecoration(
//        hintText: 'Email',
//        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//      ),
//    );
//
//    final password = TextFormField(
//      autofocus: false,
//      obscureText: true,
//      decoration: InputDecoration(
//        hintText: 'Password',
//        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//      ),
//    );
//
//    final loginButton = Padding(
//      padding: EdgeInsets.symmetric(vertical: 16.0),
//      child: Material(
//        borderRadius: BorderRadius.circular(30.0),
//        shadowColor: Colors.lightBlueAccent.shade100,
//        elevation: 5.0,
//        child: MaterialButton(
//          minWidth: 200.0,
//          height: 42.0,
//          onPressed: () {
//            Navigator.push(
//              context,
//              new MaterialPageRoute(builder: (context) => Mainpage()),
//            );
//          },
//          color: Colors.purple,
//          child: Text('Log In', style: TextStyle(color: Colors.white)),
//        ),
//      ),
//    );
//
//    final forgotLabel = FlatButton(
//      child: Text(
//        'Forgot password?',
//        style: TextStyle(color: Colors.black54),
//      ),
//      onPressed: () {},
//    );
//
//    return Scaffold(
//      backgroundColor: Colors.white,
//      body: Center(
//        child: ListView(
//          padding: EdgeInsets.only(left: 24.0, right: 24.0),
//          children: <Widget>[
//            SizedBox(height: 100.0),
//            hereme,
//            SizedBox(height: 0.0),
//            email,
//            SizedBox(height: 10.0),
//            password,
//            SizedBox(height: 0.0),
//            loginButton,
//            forgotLabel
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class SignUp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final hereme = new Container(
//      alignment: Alignment.topCenter,
//      padding: EdgeInsets.only(bottom: 150.0),
//      child: new Text(
//        'HereMe',
//        style: new TextStyle(
//            fontSize: 80.0,
//            fontStyle: FontStyle.normal,
//            fontWeight: FontWeight.w800),
//      ),
//    );
//
//    final email = TextFormField(
//      keyboardType: TextInputType.emailAddress,
//      autofocus: false,
//      decoration: InputDecoration(
//        hintText: 'Email',
//        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//      ),
//    );
//
//    final yourname = TextFormField(
//      autofocus: false,
//      decoration: InputDecoration(
//        hintText: 'First Name',
//        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//      ),
//    );
//    final password = TextFormField(
//      autofocus: false,
//      obscureText: true,
//      decoration: InputDecoration(
//        hintText: 'Password',
//        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//      ),
//    );
//
//    final signButton = Padding(
//      padding: EdgeInsets.symmetric(vertical: 16.0),
//      child: Material(
//        borderRadius: BorderRadius.circular(30.0),
//        shadowColor: Colors.lightBlueAccent.shade100,
//        elevation: 5.0,
//        child: MaterialButton(
//          minWidth: 200.0,
//          height: 42.0,
//          onPressed: () {
//            Navigator.push(context,
//                new MaterialPageRoute(builder: (context) => new profilePic()));
//          },
//          color: Colors.purple,
//          child: Text('Sign In', style: TextStyle(color: Colors.white)),
//        ),
//      ),
//    );
//    _launchURL() async {
//      const url =
//          'https://termsfeed.com/terms-conditions/eb83aa859848185014a8c99fb5fbfadb';
//      if (await canLaunch(url)) {
//        await launch(url);
//      } else {
//        throw 'Could not launch $url';
//      }
//    }
//
//    final forgotLabel = FlatButton(
//      child: InkWell(
//        child: new Text('Terms Of Use'),
//      ),
//      onPressed: _launchURL,
//    );
//
//    return Scaffold(
//      backgroundColor: Colors.white,
//      body: Center(
//        child: ListView(
//          padding: EdgeInsets.only(left: 24.0, right: 24.0),
//          children: <Widget>[
//            SizedBox(height: 100.0),
//            hereme,
//            SizedBox(height: 0.0),
//            email,
//            SizedBox(height: 8.0),
//            yourname,
//            SizedBox(height: 8.0),
//            password,
//            SizedBox(height: 24.0),
//            signButton,
//            forgotLabel
//          ],
//        ),
//      ),
//    );
//  }
//}
//
////StateFullWidgets For All Classes
//class profilePic extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return new profilePicState();
//  }
//}
//
//class profilePicState extends State<profilePic> {
//  File _image;
//
//  Future getImage() async {
//    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
//
//    setState(() {
//      _image = image;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    final image = new Image(image: new AssetImage('images/profilepic.png'));
//    final addPic = new MaterialButton(
//      onPressed: getImage,
//      color: Colors.blueAccent,
//      child: new Text(
//        'Add Profile Picture',
//        style: new TextStyle(
//          color: Colors.white,
//          fontSize: 15.0,
//        ),
//      ),
//    );
//    return new Scaffold(
//        body: new Center(
//            child: new ListView(
//              padding: EdgeInsets.only(left: 50.0, right: 50.0),
//              children: <Widget>[
//                SizedBox(height: 100.0),
//                image,
//                SizedBox(height: 0.0),
//                addPic,
//              ],
//            )));
//  }
//}
//
//class MainpageState extends State<Mainpage> {
//  final Key keyone = PageStorageKey('homePage');
//  final Key keytwo = PageStorageKey('savedPage');
//  final Key keythree = PageStorageKey('userPage');
//
//  int currentTab = 0;
//
//  homePage one;
//  savedPage two;
//  userPage three;
//  List<Widget> pages;
//  Widget currentPage;
//
//  final PageStorageBucket bucket = PageStorageBucket();
//
//  @override
//  void initState() {
//    one = homePage(key: keyone);
//    two = savedPage(
//      key: keytwo,
//    );
//    three = userPage(
//      key: keythree,
//    );
//
//    pages = [one, two, three];
//
//    currentPage = one;
//
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      backgroundColor: Colors.grey[0xf5f5f5],
//      body: PageStorage(
//        child: currentPage,
//        bucket: bucket,
//      ),
//      bottomNavigationBar: new BottomNavigationBar(
//        fixedColor: Colors.purple,
//        currentIndex: currentTab,
//        iconSize: 30.0,
//        onTap: (int index) {
//          setState(() {
//            currentTab = index;
//            currentPage = pages[index];
//          });
//        },
//        items: <BottomNavigationBarItem>[
//          BottomNavigationBarItem(
//              icon: Icon(Icons.track_changes), title: Text('Find Them')),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.bookmark),
//            title: Text('Saved Them'),
//          ),
//          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Me'))
//        ],
//      ),
//    );
//  }
//}
//
//class Mainpage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return new MainpageState();
//  }
//}
//
//class homePage extends StatefulWidget {
//  homePage({
//    Key key,
//  }) : super(key: key);
//  @override
//  State<StatefulWidget> createState() {
//    return new homePageState();
//  }
//}
//
//class homePageState extends State<homePage> {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: AppBar(
//        centerTitle: false,
//        automaticallyImplyLeading: false,
//        backgroundColor: Colors.white,
//        bottom: new PreferredSize(
//            preferredSize: const Size.fromHeight(30.0),
//            child: new Container(
//              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
//              alignment: Alignment.centerLeft,
//              child: new Text(
//                'HereMe',
//                style: new TextStyle(
//                    fontSize: 35.0,
//                    fontWeight: FontWeight.w700,
//                    color: Colors.purple),
//              ),
//            )),
////        title: new Text(
////          'HereMe',
////          textAlign: TextAlign.left,
////          style: new TextStyle(
////            color: Colors.purple,
////            fontWeight: FontWeight.w700,
////            fontSize: 35.0
////          ),),
//      ),
//    );
//  }
//}
//
//class savedPageState extends State<savedPage> {
//  @override
//  Widget build(BuildContext context) {
//    final theme = Theme.of(context);
//    return new Scaffold(
//      appBar: new AppBar(
//        automaticallyImplyLeading: false,
//        centerTitle: true,
//        backgroundColor: Colors.white,
//        title: new Theme(
//          data: theme.copyWith(primaryColor: Colors.purple),
//          child: new TextFormField(
//            keyboardType: TextInputType.text,
//            decoration: InputDecoration(
//              labelStyle:
//              theme.textTheme.caption.copyWith(color: theme.primaryColor),
//              border: OutlineInputBorder(
//                borderRadius: BorderRadius.circular(100.0),
//              ),
//              prefixIcon: new Image(
//                image: new AssetImage('images/search.png'),
//              ),
//              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//class userPageState extends State<userPage> {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        automaticallyImplyLeading: false,
//        bottom: new PreferredSize(
//            preferredSize: const Size.fromHeight(30.0),
//            child: new Container(
//              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
//              alignment: Alignment.centerLeft,
//              child: new Text(
//                'User Name',
//                style: new TextStyle(
//                    fontSize: 35.0,
//                    fontWeight: FontWeight.w700,
//                    color: Colors.purple),
//              ),
//            )),
//        actions: <Widget>[
//          new IconButton(
//              icon: new Image(image: new AssetImage('images/menu2.png')),
//              color: Colors.black,
//              onPressed: () {
//                Navigator.push(context,
//                    new MaterialPageRoute(builder: (context) => menuPage()));
//              })
//        ],
//      ),
//    );
//  }
//}
//
//class savedPage extends StatefulWidget {
//  savedPage({
//    Key key,
//  }) : super(key: key);
//  @override
//  State<StatefulWidget> createState() {
//    return new savedPageState();
//  }
//}
//
//class userPage extends StatefulWidget {
//  userPage({
//    Key key,
//  }) : super(key: key);
//  @override
//  State<StatefulWidget> createState() {
//    return new userPageState();
//  }
//}
//
//class menuPage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return new menuPageState();
//  }
//}
//
//
//class menuPageState extends State<menuPage> {
//  @override
//  Widget build(BuildContext context) {
//    final link = new Container(
//      child: new Row(children: <Widget>[
//        new Image(image: new AssetImage('images/link.png')),
//        new Text(
//          '    Link Your Social Medias',
//          style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
//        ),
//      ]),
//    );
//    final rateApp = new Container(
//      child: new Row(children: <Widget>[
//        new Image(image: new AssetImage('images/star.png')),
//        new InkWell(
//          child: new Text(
//            '    Rate HereMe on the AppStore',
//            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
//          ),
//        ),
//      ]),
//    );
//    final helpSupport = new Container(
//      child: new Row(children: <Widget>[
//        new Image(image: new AssetImage('images/help.png')),
//        new InkWell(
//          onTap: () {
//            Navigator.push(
//                context,
//                new MaterialPageRoute(
//                    builder: (context) => new helpAndSupport()));
//          },
//          child: new Text(
//            '    Help & Support',
//            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
//          ),
//        ),
//      ]),
//    );
//    final otherApps = new Container(
//      child: new Row(children: <Widget>[
//        new Image(image: new AssetImage('images/binoculars.png')),
//        new Text(
//          '    Check Out Our Affiliate Apps',
//          style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
//        ),
//      ]),
//    );
//    final hideMe = new Container(
//      child: new Row(children: <Widget>[
//        new Image(image: new AssetImage('images/detective.png')),
////            new Icon(
////              Icons.do_not_disturb_alt,
////              color: Colors.lightBlueAccent,),
//        new Text(
//          '    HideMe',
//          style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
//        ),
//      ]),
//    );
//    final logout = new Container(
//      child: new Row(children: <Widget>[
//        new Image(image: new AssetImage('images/logout.png')),
//        new Text(
//          '    Logout',
//          style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
//        ),
//      ]),
//    );
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        automaticallyImplyLeading: true,
//        leading: new BackButton(
//          color: Colors.purple,
//        ),
//        bottom: new PreferredSize(
//            preferredSize: const Size.fromHeight(30.0),
//            child: new Container(
//              padding: EdgeInsets.fromLTRB(19.0, 0.0, 0.0, 0.0),
//              alignment: Alignment.centerLeft,
//              child: new Text(
//                'Menu',
//                style: new TextStyle(
//                    fontSize: 35.0,
//                    fontWeight: FontWeight.w700,
//                    color: Colors.purple),
//              ),
//            )),
//      ),
//      backgroundColor: Colors.grey[0xf5f5f5],
//      body: ListView(
//        shrinkWrap: true,
//        padding: EdgeInsets.only(left: 24.0, right: 17.0),
//        children: <Widget>[
//          SizedBox(height: 50.0),
//          link,
//          SizedBox(height: 60.0),
//          rateApp,
//          SizedBox(height: 60.0),
//          helpSupport,
//          SizedBox(height: 60.0),
//          otherApps,
//          SizedBox(height: 60.0),
//          hideMe,
//          SizedBox(height: 60.0),
//          logout
//        ],
//      ),
//    );
//  }
//}
//
//
//class helpAndSupport extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return new helpSupportState();
//  }
//}
//
//
//class helpSupportState extends State<helpAndSupport> {
//  @override
//  Widget build(BuildContext context) {
//    final link = new Container(
//      child: new Row(children: <Widget>[
//        new Image(image: new AssetImage('images/link.png')),
//        new InkWell(
//          child: new Text(
//            '    Privacy Policy',
//            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
//          ),
//        ),
//      ]),
//    );
//    final rateApp = new Container(
//      child: new Row(children: <Widget>[
//        new Image(image: new AssetImage('images/star.png')),
//        new InkWell(
//          child: new Text(
//            '    Terms & Conditions',
//            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
//          ),
//        ),
//      ]),
//    );
//    final helpSupport = new Container(
//      child: new Row(children: <Widget>[
//        new Image(image: new AssetImage('images/help.png')),
//        new InkWell(
//          onTap: () {
//            Navigator.push(
//                context,
//                new MaterialPageRoute(
//                    builder: (context) => new helpAndSupport()));
//          },
//          child: new Text(
//            '    Blocker User',
//            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
//          ),
//        ),
//      ]),
//    );
//    final otherApps = new Container(
//      child: new Row(children: <Widget>[
//        new Image(image: new AssetImage('images/binoculars.png')),
//        new InkWell(
//          child: new Text(
//            '    Change HereMe Name',
//            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
//          ),
//        ),
//      ]),
//    );
//    final hideMe = new Container(
//      child: new Row(children: <Widget>[
//        new Image(image: new AssetImage('images/detective.png')),
//        new InkWell(
//          child: Text(
//            '    Reset Password',
//            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
//          ),
//        ),
//      ]),
//    );
//    final logout = new Container(
//      child: new Row(children: <Widget>[
//        new Image(image: new AssetImage('images/logout.png')),
//        new Text(
//          '    Delete HereMe Account',
//          style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
//        ),
//      ]),
//    );
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        automaticallyImplyLeading: true,
//        leading: new BackButton(
//          color: Colors.purple,
//        ),
//        bottom: new PreferredSize(
//            preferredSize: const Size.fromHeight(30.0),
//            child: new Container(
//              padding: EdgeInsets.fromLTRB(19.0, 0.0, 0.0, 0.0),
//              alignment: Alignment.centerLeft,
//              child: new Text(
//                'Help & Support',
//                style: new TextStyle(
//                    fontSize: 35.0,
//                    fontWeight: FontWeight.w700,
//                    color: Colors.purple),
//              ),
//            )),
//      ),
//      backgroundColor: Colors.grey[0xf5f5f5],
//      body: ListView(
//        shrinkWrap: true,
//        padding: EdgeInsets.only(left: 24.0, right: 17.0),
//        children: <Widget>[
//          SizedBox(height: 50.0),
//          link,
//          SizedBox(height: 60.0),
//          rateApp,
//          SizedBox(height: 60.0),
//          helpSupport,
//          SizedBox(height: 60.0),
//          otherApps,
//          SizedBox(height: 60.0),
//          hideMe,
//          SizedBox(height: 60.0),
//          logout
//        ],
//      ),
//    );
//  }
//}
