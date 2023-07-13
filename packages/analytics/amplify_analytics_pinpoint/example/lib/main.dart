// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _amplifyConfigured = false;

  String _uniqueId = 'default';
  String _globalProp = 'default';
  String _userId = 'default';

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

    // FIXME: In your app, make sure to remove this line and set up
    /// Keychain Sharing in Xcode as described in the docs:
    /// https://docs.amplify.aws/lib/project-setup/platform-setup/q/platform/flutter/#enable-keychain
    final storageFactory = AmplifySecureStorage.factoryFrom(
      // ignore: invalid_use_of_visible_for_testing_member
      macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
    );

    await Amplify.addPlugins([
      AmplifyAuthCognito(
        secureStorageFactory: storageFactory,
      ),
      AmplifyAnalyticsPinpoint(
        // ignore: invalid_use_of_visible_for_testing_member
        secureStorageFactory: storageFactory,
      ),
    ]);

    try {
      await Amplify.configure(amplifyconfig);
      setState(() {
        _amplifyConfigured = true;
      });
    } on AnalyticsException catch (e) {
      safePrint(e.toString());
    }
  }

  void _recordEvent() async {
    final event = AnalyticsEvent(_uniqueId);

    event.customProperties.addBoolProperty('boolKey', true);
    event.customProperties.addDoubleProperty('doubleKey', 10.1);
    event.customProperties.addIntProperty('intKey', 10);
    event.customProperties.addStringProperty('stringKey', 'stringValue');

    await Amplify.Analytics.recordEvent(event: event);
  }

  void _flushEvents() async {
    await Amplify.Analytics.flushEvents();
  }

  void _registerGlobalProperties() async {
    safePrint('register global properties: $_globalProp');

    final properties = CustomProperties();
    properties.addIntProperty('${_globalProp}_1numKey', 1);
    properties.addBoolProperty('${_globalProp}_boolKey', true);
    properties.addDoubleProperty('${_globalProp}_doubleKey', 10);
    properties.addIntProperty('${_globalProp}_intKey', 10);
    properties.addStringProperty('${_globalProp}_stringKey', 'stringValue');

    await Amplify.Analytics.registerGlobalProperties(
      globalProperties: properties,
    );
  }

  void _unregisterGlobalProperties() async {
    safePrint('unregister global properties: $_globalProp');

    await Amplify.Analytics.unregisterGlobalProperties(
      propertyNames: [_globalProp],
    );
  }

  void _unregisterAllGlobalProperties() async {
    await Amplify.Analytics.unregisterGlobalProperties();
  }

  void _enable() async {
    await Amplify.Analytics.enable();
  }

  void _disable() async {
    await Amplify.Analytics.disable();
  }

  void _identifyUser() async {
    final analyticsUserProfile = AWSPinpointUserProfile(
      name: '${_userId}_name',
      email: '${_userId}_email',
      plan: '${_userId}_plan',
      location: const UserProfileLocation(
        latitude: 5,
        longitude: 5,
        postalCode: '94070',
        city: 'SanFrancisco',
        region: 'California',
        country: 'USA',
      ),
      customProperties: CustomProperties()
        ..addStringProperty('${_userId}_endpoint_stringKey', 'stringValue')
        ..addIntProperty('${_userId}_endpoint_intKey', 10)
        ..addDoubleProperty('${_userId}_endpoint_doubleKey', 10)
        ..addBoolProperty('${_userId}_endpoint_boolKey', false),
      userAttributes: {
        '${_userId}_user_stringKey': ['stringValue', 'anotherStringValue'],
      },
    );

    await Amplify.Analytics.identifyUser(
      userId: _userId,
      userProfile: analyticsUserProfile,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Amplify Analytics example app'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF7F7F7F)),
                color: const Color(0xFFBFBFBF),
              ),
              child: Column(
                children: <Widget>[
                  const Text(
                    'Amplify.Core',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: _amplifyConfigured ? null : _configureAmplify,
                    child: const Text('configure Amplify'),
                  ),
                  Center(
                    child:
                        Text('Is Amplify Configured?: $_amplifyConfigured\n'),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                  left: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                  right: BorderSide(width: 1, color: Color(0xFF7F7F7F)),
                  bottom: BorderSide(width: 1, color: Color(0xFF7F7F7F)),
                ),
                color: Color(0xFFBFBFBF),
              ),
              child: Column(
                children: <Widget>[
                  const Text(
                    'Amplify.Analytics',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    decoration:
                        const InputDecoration(hintText: 'Enter event id'),
                    onChanged: (text) {
                      _uniqueId = text;
                    },
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: _amplifyConfigured ? _recordEvent : null,
                      child: const Text('Record Event'),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: _amplifyConfigured ? _flushEvents : null,
                      child: const Text('Flush Events'),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 3,
                    thickness: 1,
                    indent: 1,
                    endIndent: 0,
                  ),
                  TextField(
                    decoration:
                        const InputDecoration(hintText: 'Enter global prop id'),
                    onChanged: (text) {
                      _globalProp = text;
                    },
                  ),
                  ElevatedButton(
                    onPressed:
                        _amplifyConfigured ? _registerGlobalProperties : null,
                    child: const Text('Register Global Prop'),
                  ),
                  ElevatedButton(
                    onPressed:
                        _amplifyConfigured ? _unregisterGlobalProperties : null,
                    child: const Text('Unregister Global Prop'),
                  ),
                  ElevatedButton(
                    onPressed: _amplifyConfigured
                        ? _unregisterAllGlobalProperties
                        : null,
                    child: const Text('Unregister All Global Prop'),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 3,
                    thickness: 1,
                    indent: 1,
                    endIndent: 0,
                  ),
                  TextField(
                    decoration:
                        const InputDecoration(hintText: 'Enter user id'),
                    onChanged: (text) {
                      _userId = text;
                    },
                  ),
                  ElevatedButton(
                    onPressed: _amplifyConfigured ? _identifyUser : null,
                    child: const Text('Register User'),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 3,
                    thickness: 1,
                    indent: 1,
                    endIndent: 0,
                  ),
                  ElevatedButton(
                    onPressed: _amplifyConfigured ? _enable : null,
                    child: const Text('Enable'),
                  ),
                  ElevatedButton(
                    onPressed: _amplifyConfigured ? _disable : null,
                    child: const Text('Disable'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
