// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/amplify_push_notifications_pinpoint.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'amplifyconfiguration.dart';

String globalBgCallbackKey = 'globalBgCallbackCountKey';

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
  bool isForegroundListernerInitialized = false;
  bool isBackgroundListernerInitialized = false;
  bool notificationOpenedListernerInitialized = false;
  int globalBgCallbackCount = 0;

  PushNotificationMessage? foregroundMessage;
  PushNotificationMessage? backgroundMessage;

  PushNotificationMessage? notificaitonOpenedMessage;
  PushNotificationPermissionStatus? getPermissionStatus;
  bool? requestPermissionsResult;
  PushNotificationMessage? launchNotificaitonAvailable;

  Future<int> getAndUpdateCallbackCounts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.reload();
      globalBgCallbackCount = prefs.getInt(globalBgCallbackKey) ?? 0;
      return globalBgCallbackCount;
    } on Exception catch (e) {
      print('Error when get call $e');
      return 0;
    }
  }

  void getLaunchNotif() {
    setState(() {
      launchNotificaitonAvailable =
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
              const Divider(
                height: 20,
              ),
              FutureBuilder<int>(
                future: getAndUpdateCallbackCounts(),
                builder: (
                  BuildContext context,
                  AsyncSnapshot<int> snapshot,
                ) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return ListTile(
                      title: Text(
                        'Background callback count: ${snapshot.data}',
                      ),
                    );
                  } else {
                    return const ListTile(
                      title: Text(
                        'Background callback count:0',
                      ),
                    );
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Refresh count'),
              ),
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
                Text('Perimission status: $getPermissionStatus'),
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
                  'Requesting Perimission result: $requestPermissionsResult',
                ),
              const Divider(
                height: 20,
              ),
              headerText('Analytics APIs'),
              ElevatedButton(
                onPressed: () async {
                  await Amplify.Notifications.Push.identifyUser(
                    userId: 'test-user-101',
                    userProfile: AnalyticsUserProfile(name: 'test-name-101'),
                  );
                },
                child: const Text('identifyUser'),
              ),
              const Divider(
                height: 20,
              ),
              headerText('Notification Handling APIs'),
              ElevatedButton(
                onPressed: getLaunchNotif,
                child: const Text('get Launch Notification'),
              ),
              if (launchNotificaitonAvailable != null)
                ListTile(
                  title: Text(
                    'launchNotificaitonAvailable: $launchNotificaitonAvailable',
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
