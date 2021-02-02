import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs
class ConfirmSignInWidget extends StatefulWidget {
  final Function showResult;
  final Function changeDisplay;
  final Function setError;
  final Function backToSignIn;

  ConfirmSignInWidget(
      this.showResult, this.changeDisplay, this.setError, this.backToSignIn);

  @override
  _ConfirmSignInWidgetState createState() => _ConfirmSignInWidgetState();
}

class _ConfirmSignInWidgetState extends State<ConfirmSignInWidget> {
  final usernameController = TextEditingController();
  final confirmationCodeController = TextEditingController();

  void _confirmSignIn() async {
    try {
      var res = await Amplify.Auth.confirmSignIn(
          confirmationValue: confirmationCodeController.text.trim());
      widget.showResult('Confirm Sign In Status = ' + res.nextStep.signInStep);
      widget.changeDisplay(res.nextStep.signInStep == 'DONE'
          ? 'SIGNED_IN'
          : 'SHOW_CONFIRM_SIGN_IN');
    } on AmplifyException catch (e) {
      widget.setError(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          // wrap your Column in Expanded
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                  controller: confirmationCodeController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.question_answer),
                    hintText: 'The secret answer to the auth challange',
                    labelText: 'Challange Response *',
                  )),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: _confirmSignIn,
                child: const Text('Confirm SignIn'),
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
