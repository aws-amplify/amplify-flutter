//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs
class ConfirmSignInWidget extends StatefulWidget {
  final Function showResult;
  final Function changeDisplay;
  final Function setError;
  final VoidCallback backToSignIn;

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
      widget.showResult('Confirm Sign In Status = ${res.nextStep?.signInStep}');
      widget.changeDisplay(res.nextStep?.signInStep == 'DONE'
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
