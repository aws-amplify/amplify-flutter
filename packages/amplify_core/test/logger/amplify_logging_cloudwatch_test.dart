// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/logger/amplify_logging_cloudwatch.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:test/fake.dart';
import 'package:test/test.dart';

void main() {
  const jsonConfig1 = '''{
      "plugins": {
        "cloudWatchLoggerPluginConfiguration": {
            "enable": true,
            "logGroupName": "TestLogGroupName",
            "region": "us-east-1",
            "localStoreMaxSizeInMB": 5,
            "flushIntervalInSeconds": 60,
            "defaultRemoteConfiguration": {
                "endpoint": "URL",
                "refreshIntervalInSeconds": 1200
            },
            "loggingConstraints": {
                "defaultLogLevel": "ERROR",
                "categoryLogLevel": {
                        "AUTH": "WARN",
                        "API": "WARN"
                },
                "userLogLevel": {
                    "cognitoSub1": {
                        "defaultLogLevel": "WARN",
                        "categoryLogLevel": {
                            "AUTH": "INFO",
                            "API": "ERROR"
                        }
                    }
                }
            }
        }
      }
}''';

  const jsonConfig2 = '''{
	"plugins": {
		"cloudWatchLoggerPluginConfiguration": {
			"enable": true,
			"logGroupName": "logGroupName",
			"region": "region",
			"localStoreMaxSizeInMB": 5,
			"flushIntervalInSeconds": 60
		}
	}
}''';

  final loggingConfig1 = LoggingConfig.fromJson(
    jsonDecode(jsonConfig1) as Map<String, Object?>,
  );
  final amplifyConfig1 = AmplifyConfig(
    logging: loggingConfig1,
  );

  final loggingConfig2 = LoggingConfig.fromJson(
    jsonDecode(jsonConfig2) as Map<String, Object?>,
  );
  final amplifyConfig2 = AmplifyConfig(
    logging: loggingConfig2,
  );

  group('configure', () {
    setUp(() => AmplifyLogging().reset());
    test('It configures the plugin if it is not configured', () {
      AmplifyLogging()
          .configure(amplifyConfig1, FakeAmplifyAuthProviderRepository());
      final plugin = AmplifyLogger().getPlugin<CloudWatchLoggerPlugin>();
      expect(plugin, isNotNull);
    });

    test('It does not configures the plugin if is already configured',
        () async {
      AmplifyLogging()
          .configure(amplifyConfig1, FakeAmplifyAuthProviderRepository());
      final plugin1 = AmplifyLogger().getPlugin<CloudWatchLoggerPlugin>();
      AmplifyLogging()
          .configure(amplifyConfig2, FakeAmplifyAuthProviderRepository());
      final plugin2 = AmplifyLogger().getPlugin<CloudWatchLoggerPlugin>();
      expect(plugin1, plugin2);
    });

    test('It does not configure the plugin if config is not provided', () {
      AmplifyLogging().configure(
        const AmplifyConfig(),
        FakeAmplifyAuthProviderRepository(),
      );
      final plugin = AmplifyLogger().getPlugin<CloudWatchLoggerPlugin>();
      expect(plugin, isNull);
    });
  });
}

class FakeAmplifyAuthProviderRepository extends Fake
    implements AmplifyAuthProviderRepository {
  final Map<AmplifyAuthProviderToken, AmplifyAuthProvider> _authProviders = {
    APIAuthorizationType.iam.authProviderToken: FakeIamAuthProvider(),
  };

  @override
  T? getAuthProvider<T extends AmplifyAuthProvider>(
    AmplifyAuthProviderToken<T> token,
  ) {
    return _authProviders[token] as T?;
  }
}

class FakeIamAuthProvider extends Fake implements AWSIamAmplifyAuthProvider {
  @override
  AWSCredentials retrieve() {
    return const AWSCredentials('', '');
  }
}
