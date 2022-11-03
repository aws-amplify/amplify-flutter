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

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

const dummyConfiguration = '''{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0"
}''';

void main() {
  group('Amplify', () {
    group('configure', () {
      tearDown(() async {
        await Amplify.reset();
      });

      test('completes', () async {
        expect(Amplify.asyncConfig, completes);
        await Amplify.addPlugin(SuccessPlugin());
        expect(Amplify.configure(dummyConfiguration), completes);
      });

      test('throws for invalid JSON', () async {
        expect(
          Amplify.asyncConfig,
          throwsA(isA<ConfigurationError>()),
        );
        expect(
          Amplify.configure('...'),
          throwsA(isA<ConfigurationError>()),
        );
      });

      test('throws for configuration exceptions', () async {
        expect(
          Amplify.asyncConfig,
          throwsA(isA<ConfigurationError>()),
        );
        await Amplify.addPlugin(ConfigErrorPlugin());
        expect(
          Amplify.configure(dummyConfiguration),
          throwsA(isA<ConfigurationError>()),
        );
      });

      test('throws non-configuration exceptions', () async {
        expect(Amplify.asyncConfig, completes);
        await Amplify.addPlugin(NonConfigErrorPlugin());
        expect(
          Amplify.configure(dummyConfiguration),
          throwsA(isA<UnknownException>()),
        );
      });
    });
  });
}

class ConfigErrorPlugin extends AnalyticsPluginInterface {
  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) {
    throw ConfigurationError('Could not configure');
  }
}

class NonConfigErrorPlugin extends AnalyticsPluginInterface {
  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) {
    throw const UnknownException('Could not configure');
  }
}

class SuccessPlugin extends AnalyticsPluginInterface {
  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    return;
  }
}
