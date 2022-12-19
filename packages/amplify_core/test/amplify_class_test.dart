// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
