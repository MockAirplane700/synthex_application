/*  This will how the current projects model will look like

 */

import 'package:flutter/material.dart';
import 'package:synthexapplication/screens/projectScreen/projectScreen.dart';
import 'package:synthexapplication/shared/NavigationBar.dart';

class CompletedProjects extends StatefulWidget {
  @override
  _CompletedProjectsState createState() => _CompletedProjectsState();
}

class _CompletedProjectsState extends State<CompletedProjects> {
  String string = "Client Name: John Doe\nProject Name: Molasis\nProject Duration: 6 months\nProjecr Start Date: 19-11-2019\nProject Current Stage: Complete";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      backgroundColor: Colors.black,
      body: Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              child: Image(image: AssetImage("images/synthexLogo.png")),
            ),
            Text("Completed Projects", style: TextStyle(color: Colors.white),),
            SizedBox(height: 10,),
            Card(
              child: Row(
                children: <Widget>[
                  Text(string),
                  SizedBox(width: 50,),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          print("view");
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ProjectScreen())
                          );
                        });
                      },
                      child: Text("View")
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
