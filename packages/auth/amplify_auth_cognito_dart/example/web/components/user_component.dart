// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:html';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:cognito_example/common.dart';
import 'package:example_common/example_common.dart';

import 'app_component.dart';

class UserComponent extends StatefulComponent {
  UserComponent({
    required this.navigateTo,
  });

  final void Function(AuthState) navigateTo;

  List<List<String>> rows = [];
  bool _showSession = false;

  Future<void> _fetchAuthSession() async {
    final session = await fetchAuthSession();
    final devices = await fetchDevices();
    setState(() {
      _showSession = true;
      rows = [
        ['userSub', session.userSub ?? 'null'],
        ['accessToken', session.userPoolTokens?.accessToken.raw ?? 'null'],
        ['idToken', session.userPoolTokens?.idToken.raw ?? 'null'],
        ['refreshToken', session.userPoolTokens?.refreshToken ?? 'null'],
        ['credential session', session.credentials?.sessionToken ?? 'null'],
        ...devices.map((device) => device.asCognitoDevice).map(
              (device) => [
                'Device: ${device.id}',
                device.attributes.toString(),
              ],
            )
      ];
    });
  }

  void _hideSession() {
    setState(() => _showSession = false);
  }

  @override
  Component render() {
    return ColumnComponent(
      alignItems: AlignItems.center,
      children: [
        TextComponent('You are logged in!'),
        ButtonComponent(
          innerHtml: 'Remember Device',
          onClick: rememberDevice,
        ),
        ButtonComponent(
          innerHtml: 'Forget Device',
          onClick: forgetDevice,
        ),
        ButtonComponent(
          innerHtml: 'Manage Attributes',
          onClick: () => navigateTo(AuthState.manageAttributes),
        ),
        if (!_showSession)
          ButtonComponent(
            innerHtml: 'Fetch Session',
            onClick: _fetchAuthSession,
          ),
        if (_showSession) ...[
          ButtonComponent(
            innerHtml: 'Hide Session',
            onClick: _hideSession,
          ),
          TableComponent(
            tableDefinition: TableDefinition(
              headers: ['Key', 'Value'],
              rows: rows,
            ),
          ),
        ],
        ButtonComponent(
          innerHtml: 'Change Password',
          onClick: () => navigateTo(AuthState.changePassword),
        ),
        ButtonComponent(
          innerHtml: 'Sign Out',
          onClick: () async {
            try {
              await signOut(globalSignOut: false);
            } finally {
              navigateTo(AuthState.login);
            }
          },
        ),
        ButtonComponent(
          innerHtml: 'Sign Out (Global)',
          onClick: () async {
            try {
              await signOut(globalSignOut: true);
            } finally {
              navigateTo(AuthState.login);
            }
          },
        ),
        ButtonComponent(
          innerHtml: 'Delete User',
          onClick: () async {
            if (window.confirm('Are you sure you want to delete the user?')) {
              try {
                await deleteUser();
              } finally {
                navigateTo(AuthState.login);
              }
            }
          },
        ),
      ],
    );
  }
}
