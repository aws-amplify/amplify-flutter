// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_print

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/amplify_push_notifications_pinpoint.dart';
import 'package:flutter/material.dart';

import 'amplifyconfiguration.dart';

Future<void> myCallback(PushNotificationMessage notification) async {
  print('🚀 onNotificationReceivedInBackground callback: $notification');
  await Future<void>.delayed(const Duration(seconds: 5));
  print(
    '  🚀 onNotificationReceivedInBackground callback: delayed for 5 seconds to complete',
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    final authPlugin = AmplifyAuthCognito();
    final notificationsPlugin = AmplifyPushNotificationsPinpoint();

    // Needs to be given in the main function here so iOS can wire up the callback when the app wakes up from killed state
    notificationsPlugin.onNotificationReceivedInBackground(myCallback);

    if (!Amplify.isConfigured) {
      await Amplify.addPlugins([authPlugin, notificationsPlugin]);
      await Amplify.configure(amplifyconfig);
      // Required to call this after Amplify.configure.
      // Doesn't get called on app start as event is swallowed by library to register device.
      Amplify.Notifications.Push.onTokenReceived.listen((event) {
        print('🚀 onTokenReceived $event');
      });

      // Required to call this after Amplify.configure.
      Amplify.Notifications.Push.onNotificationReceivedInForeground
          .listen((event) {
        print('🚀 onNotificationReceivedInForeground $event');
      });

      // Required to call this after Amplify.configure.
      Amplify.Notifications.Push.onNotificationOpened.listen((event) {
        print('🚀 onNotificationOpened $event');
      });
    }
  } on Exception catch (e) {
    safePrint(e.toString());
  }
  AmplifyLogger().logLevel = LogLevel.info;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isConfigured = false;
  bool isForegroundListenerInitialized = false;
  bool isBackgroundListenerInitialized = false;
  bool notificationOpenedListenerInitialized = false;
  int globalBgCallbackCount = 0;

  PushNotificationMessage? foregroundMessage;
  PushNotificationMessage? backgroundMessage;

  PushNotificationMessage? notificationOpenedMessage;
  PushNotificationPermissionStatus? getPermissionStatus;
  bool? requestPermissionsResult;
  PushNotificationMessage? launchNotificationAvailable;

  void getLaunchNotification() {
    setState(() {
      launchNotificationAvailable =
          Amplify.Notifications.Push.launchNotification;
    });
  }

  Widget headerText(String title) => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Amplify Push Notifications Pinpoint Example'),
        ),
        body: Center(
          child: ListView(
            children: [
              headerText('Permissions APIs'),
              ElevatedButton(
                onPressed: () async {
                  final status =
                      await Amplify.Notifications.Push.getPermissionStatus();
                  setState(() {
                    getPermissionStatus = status;
                  });
                },
                child: const Text('getPermissionStatus'),
              ),
              if (getPermissionStatus != null)
                Text('Permission status: $getPermissionStatus'),
              ElevatedButton(
                onPressed: () async {
                  final result =
                      await Amplify.Notifications.Push.requestPermissions();
                  setState(() {
                    requestPermissionsResult = result;
                  });
                },
                child: const Text('requestPermissions'),
              ),
              if (requestPermissionsResult != null)
                Text(
                  'Requesting permission result: $requestPermissionsResult',
                ),
              const Divider(
                height: 20,
              ),
              headerText('Analytics APIs'),
              ElevatedButton(
                onPressed: () async {
                  await Amplify.Notifications.Push.identifyUser(
                    userId: 'test-user-101',
                    userProfile: const UserProfile(name: 'test-name-101'),
                  );
                },
                child: const Text('identifyUser'),
              ),
              const Divider(
                height: 20,
              ),
              headerText('Notification Handling APIs'),
              ElevatedButton(
                onPressed: getLaunchNotification,
                child: const Text('get Launch Notification'),
              ),
              if (launchNotificationAvailable != null)
                ListTile(
                  title: Text(
                    'launchNotificationAvailable: $launchNotificationAvailable',
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
