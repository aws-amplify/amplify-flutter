import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';

class ConfirmSignInWidget extends StatefulWidget {

  final Function showResult;
  final Function changeDisplay;
  final Function setError;
  final Function backToSignIn;

  ConfirmSignInWidget(this.showResult, this.changeDisplay, this.setError, this.backToSignIn);

  @override
  _ConfirmSignInWidgetState createState() => _ConfirmSignInWidgetState();
}

class _ConfirmSignInWidgetState extends State<ConfirmSignInWidget> {

  final usernameController = TextEditingController();
  final confirmationCodeController = TextEditingController();

   void _confirmSignIn() async {
    try {
      SignInResult res = await Amplify.Auth.confirmSignIn(
        confirmationValue: confirmationCodeController.text.trim()
      );
      widget.showResult("Confirm Sign In Status = " + res.nextStep.signInStep);
      widget.changeDisplay(res.nextStep.signInStep == "DONE" ? "SIGNED_IN" : "SHOW_CONFIRM_SIGN_IN");
    } on AuthError catch (e) {
      widget.setError(e);
    }
  }

  @override
  Widget build(BuildContext context) {
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
