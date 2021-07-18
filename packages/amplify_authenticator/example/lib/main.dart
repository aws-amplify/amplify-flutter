import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();

    _amplifyConfig();
  }

// Amplify Configuration
  void _amplifyConfig() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      signUpForm: SignUpForm(
        formFields: FormFields(children: [
          SignUpFormField(
            type: 'username',
            title: "Email or Phone Number*",
            hintText: "Enter your username",
          ),
          SignUpFormField(
              title: 'Password*',
              hintText: "Enter your password",
              type: "password"),
          SignUpFormField(
              title: "Address*",
              hintText: "Enter your address",
              type: "address"),
          SignUpFormField(
              title: "Birthdate*",
              hintText: "Enter your birthdate",
              type: "birthdate"),
          // SignUpFormField(
          //     title: "Email*", hintText: "Enter your email", type: "email"),
          SignUpFormField(
              title: "Name*", hintText: "Enter your name", type: "name"),
          SignUpFormField(
              title: "Phone Number*",
              hintText: "Enter your phone number",
              type: "phone_number"),
          SignUpFormField(
              title: "Website*",
              hintText: "Enter your website",
              type: "website"),
        ]),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SignOutButton(),
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
