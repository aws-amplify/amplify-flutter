import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:amplify_core/amplify_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _amplifyConfigured = false;
  Amplify amplifyInstance = Amplify();
  var amplifyconfig = '''{"foo": "bar"}''';

  @override
  void initState() {
    super.initState();
    configureAmplify();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  void configureAmplify() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
    var isConfigured = await amplifyInstance.configure(amplifyconfig);
    try {
      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Amplify Core example app'),
        ),
        body: Center(
          child: Text('Is Amplify Configured?: $_amplifyConfigured\n'),
        ),
      ),
    );
  }
}
