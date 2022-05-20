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

import 'package:amplify_api/src/method_channel_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Amplify = MethodChannelAmplify();

  const apiChannel = MethodChannel('com.amazonaws.amplify/api');
  final api = AmplifyAPIMethodChannel();

  test('GraphQL Error Decoding', () async {
    const message = 'Not Authorized';
    const locations = [
      {'line': 2, 'column': 3},
      {'line': 4, 'column': 5}
    ];
    const path = ['a', 1, 'b'];
    const extensions = {
      'a': 'blah',
      'b': {'c': 'd'}
    };
    const expected = GraphQLResponseError(
      message: message,
      locations: [
        GraphQLResponseErrorLocation(2, 3),
        GraphQLResponseErrorLocation(4, 5),
      ],
      path: <dynamic>[...path],
      extensions: <String, dynamic>{...extensions},
    );

    apiChannel.setMockMethodCallHandler((MethodCall call) async {
      return {
        'data': null,
        'errors': [
          {
            'message': message,
            'locations': locations,
            'path': path,
            'extensions': extensions,
          },
        ]
      };
    });

    final resp = await api
        .query(
          request: GraphQLRequest<String>(document: ''),
        )
        .response;

    expect(resp.data, equals(null));
    expect(resp.errors.single, equals(expected));
  });
}
