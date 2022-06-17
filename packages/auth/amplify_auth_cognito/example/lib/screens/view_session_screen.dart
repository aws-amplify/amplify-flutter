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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// stores ExpansionPanel state information
class Item {
  Item({
    required this.headerValue,
    this.expandedValue = 'not found',
    this.isExpanded = false,
  });

  String? expandedValue;
  String headerValue;
  bool isExpanded;
}

class ViewSessionScreen extends StatefulWidget {
  const ViewSessionScreen({super.key});

  @override
  State<ViewSessionScreen> createState() => _ViewSessionScreenState();
}

class _ViewSessionScreenState extends State<ViewSessionScreen> {
  List<Item> _data = [];
  @override
  void initState() {
    super.initState();
    _fetchAuthSession();
  }

  void generateItems(CognitoAuthSession session) {
    final items = [
      Item(
        headerValue: 'Authentication Status',
        expandedValue: session.isSignedIn.toString(),
      ),
      Item(
        headerValue: 'IdentityId',
        expandedValue: session.identityId,
      ),
      Item(
        headerValue: 'UserSub',
        expandedValue: session.userSub,
      ),
      Item(
        headerValue: 'AccessKeyId',
        expandedValue: session.credentials?.accessKeyId,
      ),
      Item(
        headerValue: 'SessionToken',
        expandedValue: session.credentials?.sessionToken,
      ),
      Item(
        headerValue: 'SecretAccessKey',
        expandedValue: session.credentials?.secretAccessKey,
      ),
      Item(
        headerValue: 'AccessToken',
        expandedValue: session.userPoolTokens?.accessToken.raw,
      ),
      Item(
        headerValue: 'IdToken',
        expandedValue: session.userPoolTokens?.idToken.raw,
      ),
      Item(
        headerValue: 'RefreshToken',
        expandedValue: session.userPoolTokens?.refreshToken,
      )
    ];
    setState(() {
      _data = items;
    });
  }

  Future<void> _fetchAuthSession() async {
    final authSession = await Amplify.Auth.fetchAuthSession(
      options: const CognitoSessionOptions(getAWSCredentials: true),
    ) as CognitoAuthSession;
    safePrint(authSession);
    generateItems(authSession);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildPanel(),
          ElevatedButton(
            onPressed: () => context.go('/'),
            child: const Text('Back'),
          )
        ],
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue ?? 'not found'),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
