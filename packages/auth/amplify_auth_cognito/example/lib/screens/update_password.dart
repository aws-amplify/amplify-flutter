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

class UpdatePasswordWidget extends StatefulWidget {
  final Function showResult;
  final Function changeDisplay;
  final Function setError;
  final VoidCallback backToSignIn;
  final VoidCallback backToApp;

  const UpdatePasswordWidget(this.showResult, this.changeDisplay, this.setError,
      this.backToSignIn, this.backToApp,
      {super.key});

  @override
  State<UpdatePasswordWidget> createState() => _UpdatePasswordWidgetState();
}

class _UpdatePasswordWidgetState extends State<UpdatePasswordWidget> {
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();

  void _updatePassword() async {
    try {
      await Amplify.Auth.updatePassword(
          newPassword: newPasswordController.text.trim(),
          oldPassword: oldPasswordController.text.trim());
      widget.showResult('Password Updated');
      widget.changeDisplay('SIGNED_IN');
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
                  controller: oldPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.question_answer),
                    hintText: 'Your old password',
                    labelText: 'Old Password *',
                  )),
              TextFormField(
                  controller: newPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.question_answer),
                    hintText: 'Your new password',
                    labelText: 'New Password *',
                  )),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: _updatePassword,
                child: const Text('Update Password'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: widget.backToApp,
                child: const Text('Back to App'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                key: const Key('goto-signin-button'),
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
