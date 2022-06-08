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
import 'package:go_router/go_router.dart';

class UpdatePasswordScreen extends StatefulWidget {
  const UpdatePasswordScreen({this.userAttributeKey, super.key});

  final CognitoUserAttributeKey? userAttributeKey;

  @override
  State<UpdatePasswordScreen> createState() => _UpdatePasswordScreenState();
}

class _UpdatePasswordScreenState extends State<UpdatePasswordScreen> {
  final _newPassword = TextEditingController();
  final _oldPassword = TextEditingController();

  @override
  void dispose() {
    _newPassword.dispose();
    _oldPassword.dispose();
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

  Future<void> _changePassword() async {
    try {
      final res = await Amplify.Auth.updatePassword(
        oldPassword: _oldPassword.text,
        newPassword: _newPassword.text,
      );
      context.go('/');
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
              controller: _newPassword,
              decoration: const InputDecoration(
                labelText: 'New Password',
              ),
            ),
            TextFormField(
              controller: _oldPassword,
              decoration: const InputDecoration(
                labelText: 'Old Password',
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _changePassword,
              child: const Text('Update Password'),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => context.go(
                '/',
              ),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
