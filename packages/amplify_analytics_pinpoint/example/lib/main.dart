import 'dart:io';

import 'package:amplify_analytics_pinpoint_example/test_helper.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _amplifyConfigured = false;

  String _uniqueId = "default";
  String _globalProp = "default";
  String _userId = "default";

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  void _configureAmplify() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    // Configure analytics plugin
    AmplifyAnalyticsPinpoint analyticsPlugin = AmplifyAnalyticsPinpoint();
    AmplifyAuthCognito authPlugin = AmplifyAuthCognito();

    Amplify.addPlugins([authPlugin, analyticsPlugin]);

    try {
      await Amplify.configure(amplifyconfig);
      setState(() {
        _amplifyConfigured = true;
      });
    } on AnalyticsException catch (e) {
      print(e.toString());
    }
  }

  void _recordEvent() async {
    AnalyticsEvent event = AnalyticsEvent(_uniqueId);

    event.properties.addBoolProperty("boolKey", true);
    event.properties.addDoubleProperty("doubleKey", 10.0);
    event.properties.addIntProperty("intKey", 10);
    event.properties.addStringProperty("stringKey", "stringValue");

    Amplify.Analytics.recordEvent(event: event);
  }

  void _flushEvents() async {
    Amplify.Analytics.flushEvents();
  }

  void _registerGlobalProperties() async {
    TestHelper.registerGlobalProperties(TestHelper.generateDateTimeID());
  }

  void _unregisterGlobalProperties() async {
    Amplify.Analytics.unregisterGlobalProperties(propertyNames: [_globalProp]);
  }

  void _unregisterAllGlobalProperties() async {
    Amplify.Analytics.unregisterGlobalProperties();
  }

  void _enable() async {
    Amplify.Analytics.enable();
  }

  void _disable() async {
    Amplify.Analytics.disable();
  }

  void _identifyUser() async {
    TestHelper.identifyUser(TestHelper.generateDateTimeID());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Amplify Analytics example app'),
          ),
          body: ListView(padding: EdgeInsets.all(10.0), children: <Widget>[
            Container(
                padding: EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                    left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                    right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                    bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                  ),
                  color: Color(0xFFBFBFBF),
                ),
                child: Column(children: <Widget>[
                  Text('Amplify.Core',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  ElevatedButton(
                    onPressed: _amplifyConfigured ? null : _configureAmplify,
                    child: const Text('configure Amplify'),
                  ),
                  Center(
                    child:
                        Text('Is Amplify Configured?: $_amplifyConfigured\n'),
                  )
                ])),
            Container(
                padding: EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                    left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                    right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                    bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                  ),
                  color: Color(0xFFBFBFBF),
                ),
                child: Column(children: <Widget>[
                  Text('Amplify.Analytics',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  TextField(
                      decoration: InputDecoration(hintText: 'Enter event id'),
                      onChanged: (text) {
                        _uniqueId = text;
                      }),
                  Center(
                      child: ElevatedButton(
                          onPressed: _amplifyConfigured ? _recordEvent : null,
                          child: const Text('Record Event'))),
                  Center(
                      child: ElevatedButton(
                          onPressed: _amplifyConfigured ? _flushEvents : null,
                          child: const Text('Flush Events'))),
                  const Divider(
                    color: Colors.black,
                    height: 3,
                    thickness: 1,
                    indent: 1,
                    endIndent: 0,
                  ),
                  TextField(
                      decoration:
                          InputDecoration(hintText: 'Enter global prop id'),
                      onChanged: (text) {
                        _globalProp = text;
                      }),
                  ElevatedButton(
                      onPressed:
                          _amplifyConfigured ? _registerGlobalProperties : null,
                      child: const Text('Register Global Prop')),
                  ElevatedButton(
                      onPressed: _amplifyConfigured
                          ? _unregisterGlobalProperties
                          : null,
                      child: const Text('Unregister Global Prop')),
                  ElevatedButton(
                      onPressed: _amplifyConfigured
                          ? _unregisterAllGlobalProperties
                          : null,
                      child: const Text('Unregister All Global Prop')),
                  const Divider(
                    color: Colors.black,
                    height: 3,
                    thickness: 1,
                    indent: 1,
                    endIndent: 0,
                  ),
                  TextField(
                      decoration: InputDecoration(hintText: 'Enter user id'),
                      onChanged: (text) {
                        _userId = text;
                      }),
                  ElevatedButton(
                      onPressed: _amplifyConfigured ? _identifyUser : null,
                      child: const Text('Register User')),
                  const Divider(
                    color: Colors.black,
                    height: 3,
                    thickness: 1,
                    indent: 1,
                    endIndent: 0,
                  ),
                  ElevatedButton(
                      onPressed: _amplifyConfigured ? _enable : null,
                      child: const Text('Enable')),
                  ElevatedButton(
                      onPressed: _amplifyConfigured ? _disable : null,
                      child: const Text('Disable')),
                  ElevatedButton(
                      onPressed:
                          _amplifyConfigured ? TestHelper.runTestA : null,
                      child: const Text('Run Test Suite')),
                ]))
          ])),
    );
  }
}
