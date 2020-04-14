// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:core/core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amplify Core Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Amplify Core Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _amplifyStatus = "Amplify not configured...";
  String _amplifyConfiguration = "";

  Future<void> _configure() async {
    try {
      configure();
      setState(()  {
        _amplifyStatus = "Amplify Configured!";
      });
    } catch(e) {
      setState(()  {
        _amplifyStatus = "Amplify Failed to Configure!";
      });
    }
  }

  Future<void> _getAmplifyConfiguration() async { 
    String config = await getConfiguration();
    setState(()  {
      _amplifyConfiguration = config.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Status: " + _amplifyStatus),
              Text("Configuration" + _amplifyConfiguration),
              const Padding(padding: EdgeInsets.all(16.0)),
              RaisedButton(
                onPressed: () => _configure(),
                child: const Text('Configure Amplify'),
              ),
              const Padding(padding: EdgeInsets.all(16.0)),
              RaisedButton(
                onPressed: () => _getAmplifyConfiguration(),
                child: const Text('Get Amplify Configuration'),
              ),
              // FutureBuilder<void>(future: _launched, builder: _launchStatus),
            ],
          ),
        ],
      ),
    );
  }
}
