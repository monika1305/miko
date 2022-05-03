import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:miko/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark, // this will change the brightness of the icons
    statusBarColor: Colors.white, // or any color you want
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.dark),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyStatefulWidget(),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  bool _showAppbar = true; //this is to show app bar
  ScrollController _scrollBottomBarController = new ScrollController(); // set controller on scrolling
  bool isScrollingDown = false;
  bool _show = true;
  double bottomBarHeight = 75; // set bottom bar height
  double _bottomBarOffset = 0;

  @override
  void initState() {
    super.initState();
    myScroll();
  }

  @override
  void dispose() {
    _scrollBottomBarController.removeListener(() {});
    super.dispose();
  }
  void showBottomBar() {
    setState(() {
      _show = true;
    });
  }

  void hideBottomBar() {
    setState(() {
      _show = false;
    });
  }
  void myScroll() async {
    _scrollBottomBarController.addListener(() {
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          hideBottomBar();
        }
      }
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          showBottomBar();
        }
      }
    });
  }
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
   HomePage(),
    Text(
      'Index 1: Mikoconnect',
      style: optionStyle,
    ),
    Text(
      'Index 2: Mikomax',
      style: optionStyle,
    ), Text(
      'Index 3: Reports',
      style: optionStyle,
    ), Text(
      'Index 4: Moments',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _showAppbar
          ? AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,

              children: [
                Image.asset('assets/images/miko_logo.jpeg',
                  fit: BoxFit.fitWidth,
                 // height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ]
          ),
      actions: const [
        Icon(Icons.question_answer_outlined,color: Colors.redAccent,),
        SizedBox(width: 10,),
        Icon(Icons.person,color: Colors.redAccent,),
        SizedBox(width: 10,),

      ],
      )
            : PreferredSize(
        preferredSize: const Size(0.0, 0.0),
        child: Container(),
    ),

      bottomNavigationBar: Container(
        height: bottomBarHeight,
        width: MediaQuery.of(context).size.width,
        child: _show
            ?BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.black26.withOpacity(.60),
          selectedFontSize: 10,
          unselectedFontSize: 8,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex, // this will be set when a new tab is tapped
          items: const [
            BottomNavigationBarItem(
              label: ('Home'),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: ('Mikoconnect'),
              icon: Icon(Icons.videocam_sharp),
            ),
            BottomNavigationBarItem(
              label: ('Mikomax'),
              icon: Icon(Icons.design_services_sharp),
            ),
            BottomNavigationBarItem(
              label: ('Reports'),
              icon: Icon(Icons.show_chart),
            ),BottomNavigationBarItem(
              label: ('Moments'),
              icon: Icon(Icons.image_sharp),
            ),
          ],
        )
            : Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
        ),
      ),

    /*  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black26.withOpacity(.60),
        selectedFontSize: 10,
        unselectedFontSize: 8,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            label: ('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: ('Mikoconnect'),
            icon: Icon(Icons.videocam_sharp),
          ),
          BottomNavigationBarItem(
            label: ('Mikomax'),
            icon: Icon(Icons.design_services_sharp),
          ),
          BottomNavigationBarItem(
            label: ('Reports'),
            icon: Icon(Icons.show_chart),
          ),BottomNavigationBarItem(
            label: ('Moments'),
            icon: Icon(Icons.image_sharp),
          ),
        ],
      ),
*/
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
