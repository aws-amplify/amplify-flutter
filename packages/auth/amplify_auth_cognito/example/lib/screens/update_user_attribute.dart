// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UpdateUserAttributeScreen extends StatefulWidget {
  const UpdateUserAttributeScreen({this.userAttributeKey, super.key});

  final CognitoUserAttributeKey? userAttributeKey;

  @override
  State<UpdateUserAttributeScreen> createState() =>
      _UpdateUserAttributeScreenState();
}

class _UpdateUserAttributeScreenState extends State<UpdateUserAttributeScreen> {
  late final _isNewAttribute = widget.userAttributeKey == null;
  late final _keyController = TextEditingController(
    text: widget.userAttributeKey?.key,
  );
  final _valueController = TextEditingController();

  @override
  void dispose() {
    _keyController.dispose();
    _valueController.dispose();
    super.dispose();
  }

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green[800],
        content: Text(message),
      ),
    );
  }

  void _showInfo(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.blue[800],
        content: Text(message),
      ),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red[900],
        content: Text(message),
      ),
    );
  }

  Future<void> _updateAttribute() async {
    try {
      final key = _keyController.text;
      final isCustom = !CognitoUserAttributeKey.values
          .map((value) => value.key)
          .contains(key);
      final userAttributeKey = isCustom
          ? CognitoUserAttributeKey.custom(key)
          : CognitoUserAttributeKey.parse(key);
      final res = await Amplify.Auth.updateUserAttribute(
        userAttributeKey: userAttributeKey,
        value: _valueController.text,
      );
      if (res.nextStep.updateAttributeStep == 'CONFIRM_ATTRIBUTE_WITH_CODE') {
        _showInfo(
          'Confirmation Code Sent via '
          '${res.nextStep.codeDeliveryDetails?.deliveryMedium}',
        );
      } else {
        _showSuccess('Attribute Updated Successfully');

        if (mounted) {
          context.go('/');
        }
      }
    } on Exception catch (e) {
      _showError(e.toString());
    }
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
              enabled: _isNewAttribute,
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
              onPressed: () => context.push(
                '/confirm-user-attribute/${_keyController.text.trim()}',
              ),
              child: const Text('Confirm User Attribute'),
            ),
          ],
        ),
      ),
    );
  }
}
