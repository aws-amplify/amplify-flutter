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

class ConfirmUserAttributeScreen extends StatefulWidget {
  const ConfirmUserAttributeScreen({
    required this.userAttributeKey,
    super.key,
  });

  final AuthUserAttributeKey userAttributeKey;

  @override
  State<ConfirmUserAttributeScreen> createState() =>
      _ConfirmUserAttributeScreenState();
}

class _ConfirmUserAttributeScreenState
    extends State<ConfirmUserAttributeScreen> {
  final _confirmationCodeController = TextEditingController();

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.green[800], content: Text(message)),
    );
  }

  void _showInfo(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.blue[800], content: Text(message)),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.red[900], content: Text(message)),
    );
  }

  Future<void> _confirmUpdate() async {
    try {
      await Amplify.Auth.confirmUserAttribute(
        userAttributeKey: widget.userAttributeKey,
        confirmationCode: _confirmationCodeController.text,
      );
      _showSuccess('Attribute Confirmed Successfully');
    } on Exception catch (e) {
      _showError(e.toString());
    }
  }

  Future<void> _resendCode() async {
    try {
      final res = await Amplify.Auth.resendUserAttributeConfirmationCode(
        userAttributeKey: widget.userAttributeKey,
      );
      _showInfo(
        'Confirmation Code Sent via '
        '${res.codeDeliveryDetails.deliveryMedium}',
      );
    } on Exception catch (e) {
      _showError(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm Attribute'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const SizedBox(height: 12),
            TextFormField(
              initialValue: widget.userAttributeKey.key,
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Attribute Name',
              ),
            ),
            TextFormField(
              controller: _confirmationCodeController,
              decoration: const InputDecoration(
                labelText: 'Confirmation Code',
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _confirmUpdate,
              child: const Text('Confirm Attribute Update'),
            ),
            TextButton(
              onPressed: _resendCode,
              child: const Text('Resend Confirmation Code'),
            ),
          ],
        ),
      ),
    );
  }
}
