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
import 'package:test/test.dart';

void main() {
  group('Config', () {
    test('Unknown Plugin', () {
      const customPluginName = 'my_custom_plugin';
      const customPluginConfig = {
        'custom_key': 'custom_value',
      };

      const json = {
        'UserAgent': 'aws-amplify-cli/2.0',
        'Version': '1.0',
        'auth': {
          'plugins': {
            customPluginName: customPluginConfig,
          }
        }
      };

      final config = AmplifyConfig.fromJson(json);
      const expected = AmplifyConfig(
        auth: AuthConfig(plugins: {
          customPluginName: UnknownPluginConfig(
            customPluginName,
            customPluginConfig,
          ),
        }),
      );
      expect(config, equals(expected));
      expect(expected.toJson(), equals(json));
    });
  });
}
