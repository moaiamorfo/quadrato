// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StatelessWidget e StatefulWidget',
      home: Scaffold(
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatefulWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  double larghezza = 100.0;
  double altezza = 100.0;
  Color colore = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: altezza,
            width: larghezza,
            color: colore,
            curve: Curves.bounceIn,
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      altezza += 50.0;
                      larghezza += 50.0;
                      colore =
                          colore == Colors.red ? Colors.yellow : Colors.red;
                    });
                  },
                  icon: Icon(Icons.add),
                  label: Text("Aumenta")),
              SizedBox(width: 10.0),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      altezza -= 50.0;
                      larghezza -= 50.0;
                      colore =
                          colore == Colors.red ? Colors.yellow : Colors.red;
                    });
                  },
                  icon: Icon(Icons.remove),
                  label: Text("Riduci")),
              SizedBox(
                width: 10.0,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      altezza = 100.0;
                      larghezza = 100.0;
                      colore = Colors.red;
                    });
                  },
                  icon: Icon(Icons.restore),
                  label: Text("Resetta")),
            ],
          ),
        ],
      ),
    );
  }
}
