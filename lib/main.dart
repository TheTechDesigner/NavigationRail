import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Navigation Rail';
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Row(
        children: <Widget>[
          NavigationRail(
            leading: FlutterLogo(),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.lock),
            ),
            elevation: 10.0,
            backgroundColor: Color(0xFFC41A3B),
            // minWidth: 100.0,
            minExtendedWidth: 150.0,
            extended: true,
            selectedIconTheme: IconThemeData(
              color: Color(0xFFFBE0E6),
            ),
            unselectedIconTheme: IconThemeData(
              color: Color(0xFF1B1F32),
            ),
            selectedLabelTextStyle: TextStyle(
              color: Color(0xFFFBE0E6),
            ),
            unselectedLabelTextStyle: TextStyle(
              color: Color(0xFF1B1F32),
            ),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.none, //by default none
            // groupAlignment: 0.0, // by default -1.0
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                selectedIcon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.category),
                selectedIcon: Icon(Icons.category),
                label: Text('Category'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.search),
                selectedIcon: Icon(Icons.search),
                label: Text('Search'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_cart),
                selectedIcon: Icon(Icons.add_shopping_cart),
                label: Text('Cart'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person_outline),
                selectedIcon: Icon(Icons.person),
                label: Text('Profile'),
              ),
            ],
          ),
          VerticalDivider(
            width: 2.0,
            thickness: 2.0,
            color: Color(0xFFC41A3B),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Page ${_selectedIndex + 1}',
                style: TextStyle(fontSize: 42.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
