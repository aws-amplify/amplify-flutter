import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs
class SignUpWidget extends StatefulWidget {
  final Function showResult;
  final Function changeDisplay;
  final Function setError;
  final Function backToSignIn;

  SignUpWidget(
      this.showResult, this.changeDisplay, this.setError, this.backToSignIn);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  void _signUp() async {
    var userAttributes = {
      'email': emailController.text,
      'phone_number': phoneController.text,
    };
    try {
      var res = await Amplify.Auth.signUp(
          username: usernameController.text.trim(),
          password: passwordController.text.trim(),
          options: CognitoSignUpOptions(userAttributes: userAttributes));
      widget.showResult('Sign Up Status = ' + res.nextStep.signUpStep);
      widget.changeDisplay(
          res.nextStep.signUpStep != 'DONE' ? 'SHOW_CONFIRM' : 'SHOW_SIGN_UP');
    } on AmplifyException catch (e) {
      widget.setError(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      key: Key('signup-component'),
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          // wrap your Column in Expanded
          child: Column(
            children: [
              TextFormField(
                key: Key('signup-username-input'),
                controller: usernameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'The name you will use to login',
                  labelText: 'Username *',
                ),
              ),
              TextFormField(
                key: Key('signup-password-input'),
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'The password you will use to login',
                  labelText: 'Password *',
                ),
              ),
              TextFormField(
                key: Key('signup-email-input'),
                controller: emailController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Your email address',
                  labelText: 'Email *',
                ),
              ),
              TextFormField(
                key: Key('signup-phone-input'),
                controller: phoneController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Your phone number',
                  labelText: 'Phone number *',
                ),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                key: Key('signup-button'),
                onPressed: _signUp,
                child: const Text('Sign Up'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                key: Key('goto-signin-button'),
                onPressed: widget.backToSignIn,
                child: const Text('Back to Sign In'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
