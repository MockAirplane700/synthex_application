/*  This is how the project screen will look like

 */

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:synthexapplication/screens/edit/edit.dart';
import 'package:synthexapplication/shared/NavigationBar.dart';

class ProjectScreen extends StatefulWidget {
  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  String string = "Client Name: John Doe\nProject Name: Molasis\nProject Duration: 6 months\nProjecr Start Date: 19-11-2019\nProject Current Stage: In progress";
  String assignmentTable = "Web-leads: Jane Doe, Joe Freshman\nStory-Lead: Joe Black, Oro Jackson\nMobile-lead: Nami Doroboro, Tanjiro K";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(".."),
      ),
      body: Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              child: Image(image: AssetImage("images/synthexLogo.png")),
            ),
            Text("Project Name: Project Titus", style: TextStyle(color: Colors.white),),
            SizedBox(height: 30,),
            Row(
              children: <Widget>[
                CircularPercentIndicator(
                  radius: 100,
                  lineWidth: 10,
                  animation: true,
                  percent: 0.5,
                  center: Text("Progress", style: TextStyle(color: Colors.white, fontSize:10, fontWeight: FontWeight.bold ),),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.white,
                ),
                SizedBox(width: 20,),
                Text(string,style: TextStyle(color: Colors.white),)
              ],
            ),
            SizedBox(height: 30,),
            Text(assignmentTable, style: TextStyle(color: Colors.white),),
            SizedBox(height: 20,),
            FlatButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Edit())
                    );
                  });
                },
                child: Text("Edit", style: TextStyle(color: Colors.white),)
            )
          ],
        ),
      ),
    );
  }
}
