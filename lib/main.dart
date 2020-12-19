// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

//pages
import './home.dart';
import './activity.dart';
import './pfaditechnik.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
///
class MyApp extends StatefulWidget {
  @override
   State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    ActivityPage(),
    PfaditechnikPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pfadi SMN Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        //appBar: AppBar(title: Text('Pfadi SMN'),),
        key: scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        body: Stack(
        children: <Widget>[
          _pageOptions[_selectedPage],
          Positioned(
            left: 10,
            top: 20,
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => scaffoldKey.currentState.openDrawer(),
            ),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index){
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Lokal')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                title: Text('Aktivitäten')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.landscape),
                title: Text('Pfaditechnik')
            ),
          ],
        ),

      ),
    );
  }
}


