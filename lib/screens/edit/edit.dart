/*  This is how the project editing page will look like

 */

import 'package:flutter/material.dart';
import 'package:synthexapplication/shared/NavigationBar.dart';

class Edit extends StatefulWidget {
  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {

  final _formKey = GlobalKey<FormState>();
  String error = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      body: Padding(padding: EdgeInsets.all(10),
        child: Center(
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    onChanged: (val) {
                      setState(() {
                        print(val);
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Client Name"
                    ),
                  ),
                  TextFormField(
                    onChanged: (val) {
                      setState(() {
                        print(val);
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Project Name",
                    ),
                  ),
                  TextFormField(
                    onChanged: (val) {
                      setState(() {
                        print(val);
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Project duration"
                    ),
                  ),
                  TextFormField(
                    onChanged: (val) {
                      setState(() {
                        print(val);
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Start date"
                    ),
                  ),
                  TextFormField(
                    onChanged: (val) {
                      setState(() {
                        print(val);
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Project current stage"
                    ),
                  ),
                  TextFormField(
                    onChanged: (val) {
                      setState(() {
                        print(val);
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Enter percentage completion"
                    ),
                  ),
                  TextFormField(
                    onChanged: (val) {
                      setState(() {
                        print(val);
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Web-leads"
                    ),
                  ),
                  TextFormField(
                    onChanged: (val) {
                      setState(() {
                        print(val);
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Mobile-lead"
                    ),
                  ),
                  TextFormField(
                    onChanged: (val) {
                      setState(() {
                        print(val);
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Story-leads"
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      if(_formKey.currentState.validate()){
                        setState(() {
                          print("Edit");
                        });
                      }
                    },
                    child: Text("Upload"),

                  ),
                  SizedBox(height: 15,),
                  Text(error, style: TextStyle(color: Colors.red),)
                ],
              )
          ),
        ),
      ),
    );
  }
}//end class
