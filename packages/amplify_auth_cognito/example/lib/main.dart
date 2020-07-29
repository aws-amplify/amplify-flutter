import 'package:flutter/material.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final confirmationCodeController = TextEditingController();

  bool _isAmplifyConfigured = false;
  Amplify amplify = new Amplify();
  String authState = "";
  String displayState;
  String authError = "";
  String authErrorCause = "";
  String signUpResult;
  String signInResult;

  @override
  void initState() {
    super.initState();
  }

  void _configureAmplify() async {
    AmplifyAuthCognito  auth = new AmplifyAuthCognito();
    amplify.addPlugin(authPlugin: [auth]);
    await amplify.configure(amplifyconfig);
    setState(() {
      _isAmplifyConfigured = true;
      displayState = "SHOW_SIGN_IN";
    });
  }

  void _signUp() async {
    Map<String, dynamic> userAttributes = {
      "email": emailController.text,
      "phone_number": phoneController.text,
    };
    try {
      SignUpResult res = await Amplify.Auth.signUp(
        request: SignUpRequest(
          username: usernameController.text.trim(),
          password: passwordController.text.trim(),
          options: SignUpRequestOptions(
              userAttributes: userAttributes,
          )
        ), 
      );
      setState(() {
        authState = res.signUpState;
        authError = res.error?.authErrorType;
        authErrorCause = res.error?.errorCauses[0].toString();
        switch (res.signUpState) {
          case "DONE":
            displayState = "SHOW_SIGN_IN";
            break;
          case "CONFIRM_SIGN_UP_STEP":
            displayState = "SHOW_CONFIRM";
            break;
        }
      });
    } catch (e) {
      print(e);
    }
  }

  void _confirmSignUp() async {
    try {
      SignUpResult res = await Amplify.Auth.confirmSignUp(
        request: ConfirmSignUpRequest(
          userKey: usernameController.text.trim(),
          confirmationCode: confirmationCodeController.text.trim(),
        )
      );
      setState(() {
        authState = res.signUpState;
        authError = res.error?.authErrorType;
        authErrorCause = res.error?.errorCauses[0].toString();
      });
    } catch (e) {
    
      print(e);
    }
  }

  void _signIn() async {
    try {
      SignInResult res = await Amplify.Auth.signIn(
        request: SignInRequest(
          username: usernameController.text.trim(),
          password: passwordController.text.trim(),
        )
      );
      setState(() {
        signInResult = res.toString();
        
      });
    } catch (e) {
      print(e);
    }
  }

 void _confirmSignIn() async {
    try {
      SignInResult res = await Amplify.Auth.confirmSignIn(
        request: ConfirmSignInRequest(
          confirmationValue: confirmationCodeController.text.trim(),
        )
      );
      setState(() {
        signInResult = res.toString();
        
      });
    } catch (e) {
      print(e);
    }
  }

  void _signOut() async {
    try {
      SignOutResult res = await Amplify.Auth.signOut();
      setState(() {
        signInResult = res.toString();
        
      });
    } catch (e) {
      print(e);
    }
  }

  void _createUser() async {
    setState(() {
      displayState = "SHOW_SIGN_UP";
    });
  }

  void _confirmUser() async {
    setState(() {
      displayState = "SHOW_CONFIRM";
    });
  }

  void _backToSignIn() async {
    setState(() {
      displayState = "SHOW_SIGN_IN";
    });
  }

Widget showConfirmSignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column (
            children: [
              const Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Your username',
                  labelText: 'Username *',
                )
              ),
              TextFormField(
                controller: confirmationCodeController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.confirmation_number),
                  hintText: 'The code we sent you',
                  labelText: 'Confirmation Code *',
                )
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _confirmSignUp,
                child: const Text('Confirm SignUp'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed:_backToSignIn,
                child: const Text('Back to Sign In'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget showConfirmSignIn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                controller: confirmationCodeController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.question_answer),
                  hintText: 'The secret answer to the auth challange',
                  labelText: 'Challange Response *',
                )
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _confirmSignIn,
                child: const Text('Confirm SignIn'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed:_backToSignIn,
                child: const Text('Back to Sign In'),
              ),
            ],
          ),
        ),
      ],
    );
  }

Widget showSignIn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column(
            children: [
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Your username',
                  labelText: 'Username *',
                )
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'Your password',
                  labelText: 'Password *',
                )
              ),
            const Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: _createUser,
              child: const Text('Create User'),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: _confirmUser,
              child: const Text('Confirm User'),
            ),
            ],
          ),
        ),
      ],
    );
  }

  Widget showSignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column(
            children: [
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'The name you will use to login',
                  labelText: 'Username *',
                ),
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'The password you will use to login',
                  labelText: 'Password *',
                ),
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Your email address',
                  labelText: 'Email *',
                ),
              ),
              TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Your phone number',
                  labelText: 'Phone number *',
                ),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _signUp,
                child: const Text('Sign Up'),
              ),
              const Padding(padding: EdgeInsets.all(2.0)),
              Text(
                'SignUpData: $signUpResult',
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            const Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed:_backToSignIn,
              child: const Text('Back to Sign In'),
            ),
            ],
          ),
        ),
      ],
    );
  }

  Widget showApp() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded( // wrap your Column in Expanded
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(10.0)),
                  Text(
                    'Auth Status: $authState',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  const Padding(padding: EdgeInsets.all(10.0)),
                  RaisedButton(
                    onPressed: _signOut,
                    child: const Text('Signout'),
                  )
                ],
              ),
            ),
          ],
        );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(10.0)),
                RaisedButton(
                  onPressed: _isAmplifyConfigured ? null: _configureAmplify,
                  child: const Text('configure'),
                ),

                const Padding(padding: EdgeInsets.all(10.0)),
                if (this.displayState == "SHOW_SIGN_UP") showSignUp(),
                if (this.displayState == "SHOW_CONFIRM") showConfirmSignUp(),
                if (this.displayState == "SHOW_SIGN_IN") showSignIn(),
                if (this.displayState == "SHOW_MFA") showConfirmSignIn(),
                if (this.displayState == "SHOW_APP") showApp(),

                const Padding(padding: EdgeInsets.all(10.0)),
                if (this.authState != "") Text("AUTHSTATE: "),
                if (this.authError != "") Text("ERROR: " + this.authError),
                if (this.authErrorCause != "") Text("ERROR CAUSE: " + this.authErrorCause),
              ]
            )
          ],
        ),
      ),
    );
  }
}
