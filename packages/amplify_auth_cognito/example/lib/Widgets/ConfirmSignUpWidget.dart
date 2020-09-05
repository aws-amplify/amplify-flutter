import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';

class ConfirmSignUpWidget extends StatefulWidget {

  final Function showResult;
  final Function changeDisplay;
  final Function setError;
  final Function backToSignIn;

  ConfirmSignUpWidget(this.showResult, this.changeDisplay, this.setError, this.backToSignIn);

  @override
  _ConfirmSignUpWidgetState createState() => _ConfirmSignUpWidgetState();
}

class _ConfirmSignUpWidgetState extends State<ConfirmSignUpWidget> {

  final usernameController = TextEditingController();
  final confirmationCodeController = TextEditingController();

  void _confirmSignUp() async {
    try {
      SignUpResult res = await Amplify.Auth.confirmSignUp(
        username: usernameController.text.trim(),
        confirmationCode: confirmationCodeController.text.trim()
      );
      widget.showResult("Confirm Sign Up Status = " + res.nextStep.signUpStep);
      widget.changeDisplay(res.nextStep.signUpStep != "DONE" ? "SHOW_CONFIRM" : "SHOW_SIGN_IN");
    } on AuthError catch (e) {
      widget.setError(e);
    }
  }

  void _resendSignUpCode() async {
    try {
      ResendSignUpCodeResult res = await Amplify.Auth.resendSignUpCode(
        username: usernameController.text.trim(),
      );
      widget.showResult("Sign Up Code Resent to " + res.codeDeliveryDetails.destination);
    } on AuthError catch (e) {
      widget.setError(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      key: Key('confirm-signup-component'),
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column (
            children: [
              const Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                key: Key('confirm-signup-username-input'),
                controller: usernameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Your username',
                  labelText: 'Username *',
                )
              ),
              TextFormField(
                key: Key('confirm-signup-code-input'),
                controller: confirmationCodeController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.confirmation_number),
                  hintText: 'The code we sent you',
                  labelText: 'Confirmation Code *',
                )
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                key: Key('confirm-user-button'),
                onPressed: _confirmSignUp,
                child: const Text('Confirm SignUp'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _resendSignUpCode,
                child: const Text('ResendCode'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
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
