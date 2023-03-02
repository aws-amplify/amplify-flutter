// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/amplify_push_notifications_pinpoint.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'amplifyconfiguration.dart';

String globalBgCallbackKey = 'globalBgCallbackCountKey';

// TODO: Drawback app needs to be restarted for a new version of this function to be registered
@pragma('vm:entry-point')
void bgHandler(PushNotificationMessage pushNotificationMessage) async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    print('BG handler invoked');
    final prefs = await SharedPreferences.getInstance();
    await prefs.reload();
    var globalBgCallbackCount = prefs.getInt(globalBgCallbackKey);
    globalBgCallbackCount =
        globalBgCallbackCount != null ? (globalBgCallbackCount + 1) : 0;
    await prefs.setInt(
      globalBgCallbackKey,
      globalBgCallbackCount,
    );
    print('globalBgCallbackCount in handler -> $globalBgCallbackCount');
  } on Exception catch (e) {
    print(' error in handler: $e');
  }
  return;
}

void main() {
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
  PushNotificationMessage? notificaitonOpenedMessage;
  PushNotificationPermissionRequestStatus? getPermissionStatus;
  bool? requestPermissionsResult;
  PushNotificationMessage? launchNotificaitonAvailable;

  Future<int> getAndUpdateCallbackCounts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.reload();
      globalBgCallbackCount = prefs.getInt(globalBgCallbackKey) ?? 0;
      print('globalBgCallbackCount -> $globalBgCallbackCount');
      return globalBgCallbackCount;
    } on Exception catch (e) {
      print('Error when get call $e');
      return 0;
    }
  }

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void getLaunchNotif() {
    setState(() {
      launchNotificaitonAvailable =
          Amplify.Notifications.Push.launchNotification;
    });
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> _configureAmplify() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
    try {
      final notificationsPlugin = AmplifyPushNotificationsPinpoint();
      final authPlugin = AmplifyAuthCognito();

      if (!Amplify.isConfigured) {
        await Amplify.addPlugins([authPlugin, notificationsPlugin]);
        await Amplify.configure(amplifyconfig);
        setState(() {
          isConfigured = true;
        });
      }
    } on Exception catch (e) {
      safePrint(e.toString());
    }
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
              headerText('Configuration APIs'),
              ElevatedButton(
                onPressed: () async {
                  await _configureAmplify();
                },
                child: const Text('configure'),
              ),
              if (isConfigured)
                const Text('Push notification plugin has been configured'),
              const Divider(
                height: 20,
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
              headerText('Notification Handling APIs'),
              ElevatedButton(
                onPressed: () async {
                  try {
                    final foregroundStream = Amplify
                        .Notifications.Push.onNotificationReceivedInForeground;
                    foregroundStream.listen((event) {
                      setState(() {
                        foregroundMessage = event;
                      });
                    });
                    setState(() {
                      isForegroundListernerInitialized = true;
                    });
                  } on Exception {
                    // print(e.toString());
                  }
                },
                child: const Text('onForegroundNotificationReceived'),
              ),
              if (isForegroundListernerInitialized)
                const Text('Foreground event listener initialized!'),
              ListTile(
                title: Text(
                  foregroundMessage == null
                      ? 'No foreground message yet'
                      : "Title: ${foregroundMessage!.title?.toString() ?? ""}",
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  try {
                    Amplify.Notifications.Push
                        .onNotificationReceivedInBackground(
                      bgHandler,
                    );

                    setState(() {
                      isBackgroundListernerInitialized = true;
                    });
                  } on Exception {
                    // print(e.toString());
                  }
                },
                child: const Text('onNotificationReceivedInBackground'),
              ),
              if (isBackgroundListernerInitialized)
                const Text('Background event listener initialized!'),
              ElevatedButton(
                onPressed: () async {
                  final notificaitonOpenedStream =
                      Amplify.Notifications.Push.onNotificationOpened;
                  notificaitonOpenedStream.listen((event) {
                    setState(() {
                      notificaitonOpenedMessage = event;
                    });
                  });
                  setState(() {
                    notificationOpenedListernerInitialized = true;
                  });
                },
                child: const Text('onNotificationOpened'),
              ),
              if (notificationOpenedListernerInitialized)
                const Text('OnNotificationOpened event listener initialized!'),
              ListTile(
                title: Text(
                  notificaitonOpenedMessage == null
                      ? 'No OnNotificationOpened message yet'
                      : "Title: ${notificaitonOpenedMessage!.title?.toString() ?? ""}",
                ),
              ),
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
