import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';

class SignInWidget extends StatefulWidget {

  final Function showResult;
  final Function changeDisplay;
  final Function showCreateUser;
  final Function signOut;
  final Function fetchSession;
  final Function getCurrentUser;
  final Function setError;


  SignInWidget(this.showResult, this.changeDisplay, this.showCreateUser, this.signOut, this.fetchSession, this.getCurrentUser, this.setError);

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void _signIn() async {
    try {
      SignInResult res = await Amplify.Auth.signIn(
        username: usernameController.text.trim(),
        password: passwordController.text.trim()
      );
      widget.showResult("Sign In Status = " + res.nextStep.signInStep);
      widget.changeDisplay(res.isSignedIn ? "SIGNED_IN" : "SHOW_CONFIRM_SIGN_IN");
    } on AuthError catch (e) {
      widget.setError(e);
    }
  }

  void _resetPassword() async {
    try {
      ResetPasswordResult res = await Amplify.Auth.resetPassword(
        username: usernameController.text.trim(),
      );
      widget.showResult("Reset Password Status = " + res.nextStep.updateStep);
      widget.changeDisplay("SHOW_CONFIRM_RESET");
    } on AuthError catch (e) {
      widget.setError(e);
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      key: Key('signin-component'),
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column(
            children: [
              TextFormField(
                key: Key('signin-username-input'),
                controller: usernameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Your username',
                  labelText: 'Username *',
                )
              ),
              TextFormField(
                key: Key('signin-password-input'),
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'Your password',
                  labelText: 'Password *',
                )
              ),
              const Padding(padding: EdgeInsets.all(5.0)),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 4,
                childAspectRatio: 3,
                padding: const EdgeInsets.all(5.0),
                children: [
                  RaisedButton(
                    key: Key('signin-button'),
                    onPressed: _signIn,
                    child: const Text('Sign In'),
                  ),
                  RaisedButton(
                    key: Key('goto-signup-button'),
                    onPressed: widget.showCreateUser,
                    child: const Text('Create User'),
                  ),
                  RaisedButton(
                    key: Key('reset-button'),
                    onPressed: _resetPassword,
                    child: const Text('Reset Password'),
                  ),
                  RaisedButton(
                    key: Key('signout-button'),
                    onPressed: widget.signOut,
                    child: const Text('SignOut'),
                  ),
                  RaisedButton(
                    key: Key('session-button'),
                    onPressed: widget.fetchSession,
                    child: const Text('Get Session'),
                  ),
                  RaisedButton(
                    key: Key('current-user-button'),
                    onPressed: widget.getCurrentUser,
                    child: const Text('Get Current User'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
