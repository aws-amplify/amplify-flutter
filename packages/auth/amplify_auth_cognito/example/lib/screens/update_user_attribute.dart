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

import 'confirm_user_attribute.dart';

class UpdateUserAttributeWidget extends StatefulWidget {
  final CognitoUserAttributeKey? userAttributeKey;
  const UpdateUserAttributeWidget({this.userAttributeKey, super.key});

  @override
  State<UpdateUserAttributeWidget> createState() =>
      _UpdateUserAttributeWidgetState();
}

class _UpdateUserAttributeWidgetState extends State<UpdateUserAttributeWidget> {
  bool isNewAttribute = false;
  late TextEditingController _keyController;
  final _valueController = TextEditingController();

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.green[800], content: Text(message)));
  }

  void _showInfo(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.blue[800], content: Text(message)));
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.red[900], content: Text(message)));
  }

  void _updateAttribute() async {
    try {
      var res = await Amplify.Auth.updateUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.parse(_keyController.text),
        value: _valueController.text,
      );
      if (res.nextStep.updateAttributeStep == 'CONFIRM_ATTRIBUTE_WITH_CODE') {
        _showInfo(
            'Confirmation Code Sent via ${res.nextStep.codeDeliveryDetails?.deliveryMedium}');
      } else {
        _showSuccess('Attribute Updated Successfully');
      }
    } on AmplifyException catch (e) {
      _showError(e.message);
    }
  }

  @override
  void initState() {
    isNewAttribute = widget.userAttributeKey == null;
    _keyController = TextEditingController(
      text: widget.userAttributeKey.toString(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Attribute'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const SizedBox(height: 12),
            TextFormField(
              controller: _keyController,
              enabled: isNewAttribute,
              decoration: const InputDecoration(
                labelText: 'Attribute Name',
              ),
            ),
            TextFormField(
              controller: _valueController,
              decoration: const InputDecoration(
                labelText: 'Attribute Value',
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _updateAttribute,
              child: const Text('Update Attribute'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute<void>(
                    builder: (context) => ConfirmUserAttribute(
                      userAttributeKey:
                          CognitoUserAttributeKey.parse(_keyController.text),
                    ),
                  ),
                );
              },
              child: const Text('Confirm User Attribute'),
            ),
          ],
        ),
      ),
    );
  }
}
