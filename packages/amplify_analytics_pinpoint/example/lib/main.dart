import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';

import 'package:amplify_core/amplify_core.dart';
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
  Amplify amplifyInstance = new Amplify();

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

    amplifyInstance.addPlugin(
        authPlugins: [authPlugin], analyticsPlugins: [analyticsPlugin]);

    try {
      await amplifyInstance.configure(amplifyconfig);
      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
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
    print("register global properties: " + _globalProp);

    AnalyticsProperties properties = new AnalyticsProperties();
    properties.addBoolProperty(_globalProp + "_boolKey", true);
    properties.addDoubleProperty(_globalProp + "_doubleKey", 10.0);
    properties.addIntProperty(_globalProp + "_intKey", 10);
    properties.addStringProperty(_globalProp + "_stringKey", "stringValue");

    Amplify.Analytics.registerGlobalProperties(globalProperties: properties);
  }

  void _unregisterGlobalProperties() async {
    print("unregister global properties: " + _globalProp);

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
    AnalyticsUserProfile analyticsUserProfile = new AnalyticsUserProfile();
    analyticsUserProfile.name = _userId + "_name";
    analyticsUserProfile.email = _userId + "_email";
    analyticsUserProfile.plan = _userId + "_plan";

    AnalyticsUserProfileLocation analyticsUserLocation =
        new AnalyticsUserProfileLocation();
    analyticsUserLocation.latitude = 5;
    analyticsUserLocation.longitude = 5;
    analyticsUserLocation.postalCode = "94070";
    analyticsUserLocation.city = "SanFrancisco";
    analyticsUserLocation.region = "California";
    analyticsUserLocation.country = "USA";

    analyticsUserProfile.location = analyticsUserLocation;

    AnalyticsProperties properties = new AnalyticsProperties();
    properties.addStringProperty(_userId + "_stringKey", "stringValue");

    analyticsUserProfile.properties = properties;

    Amplify.Analytics.identifyUser(
        userId: _userId, userProfile: analyticsUserProfile);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Amplify Core example app'),
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
                  RaisedButton(
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
                      child: RaisedButton(
                          onPressed: _amplifyConfigured ? _recordEvent : null,
                          child: Text('Record Event'))),
                  Center(
                      child: RaisedButton(
                          onPressed: _amplifyConfigured ? _flushEvents : null,
                          child: Text('Flush Events'))),
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
                  RaisedButton(
                      onPressed:
                          _amplifyConfigured ? _registerGlobalProperties : null,
                      child: Text('Register Global Prop')),
                  RaisedButton(
                      onPressed: _amplifyConfigured
                          ? _unregisterGlobalProperties
                          : null,
                      child: Text('Unregister Global Prop')),
                  RaisedButton(
                      onPressed: _amplifyConfigured
                          ? _unregisterAllGlobalProperties
                          : null,
                      child: Text('Unregister All Global Prop')),
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
                  RaisedButton(
                      onPressed: _amplifyConfigured ? _identifyUser : null,
                      child: Text('Register User')),
                  const Divider(
                    color: Colors.black,
                    height: 3,
                    thickness: 1,
                    indent: 1,
                    endIndent: 0,
                  ),
                  RaisedButton(
                      onPressed: _amplifyConfigured ? _enable : null,
                      child: Text('Enable')),
                  RaisedButton(
                      onPressed: _amplifyConfigured ? _disable : null,
                      child: Text('Disable')),
                ]))
          ])),
    );
  }
}
