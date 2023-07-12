// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class GraphQLAuthMode extends StatelessWidget {
  const GraphQLAuthMode({
    super.key,
    required this.setAuthType,
    this.authMode = APIAuthorizationType.userPools,
    this.authTypes = APIAuthorizationType.values,
  });

  final APIAuthorizationType authMode;
  final void Function(APIAuthorizationType) setAuthType;

  final List<APIAuthorizationType> authTypes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Authorization Mode',
          textAlign: TextAlign.left,
        ),
        DropdownButton<APIAuthorizationType>(
          value: authMode,
          icon: const Icon(Icons.arrow_downward),
          isExpanded: true,
          elevation: 16,
          onChanged: (apiType) => setAuthType(apiType!),
          items: authTypes.map<DropdownMenuItem<APIAuthorizationType>>(
              (APIAuthorizationType value) {
            return DropdownMenuItem<APIAuthorizationType>(
              value: value,
              child: Text(value.authProviderToken.name),
            );
          }).toList(),
        ),
      ],
    );
  }
}
