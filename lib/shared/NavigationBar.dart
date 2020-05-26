
import 'package:flutter/material.dart';
import 'package:synthexapplication/screens/addToDB/addToDB.dart';
import 'package:synthexapplication/screens/completedProjects/completedProjects.dart';
import 'package:synthexapplication/screens/currentProjects/currentProjects.dart';

class NavigationBar extends StatefulWidget {

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  static const TextStyle optionsStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionsStyle,
    ),
    Text(
      'Index 1: Completed',
      style: optionsStyle,
    ),
    Text(
      'Index 2: Add',
      style: optionsStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if(_selectedIndex == 0) {
        //go to the home page
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CurrentProjects(),
                settings: RouteSettings(
                    arguments: _selectedIndex
                )
            )
        );
      }else if(_selectedIndex == 1){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AddToDB(),
                settings: RouteSettings(
                    arguments: _selectedIndex
                )
            )
        );
      } else{
        // go to the additions page
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CompletedProjects(),
                settings: RouteSettings(
                    arguments: _selectedIndex
                )
            )
        );
      }//end if-else
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            title: Text('Current')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text("Add new")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.check),
            title: Text("Completed")
        ),

      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}