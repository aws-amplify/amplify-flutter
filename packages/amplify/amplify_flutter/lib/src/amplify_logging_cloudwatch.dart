// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: invalid_use_of_internal_member, implementation_imports

@internal
library;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/logger/amplify_logging_cloudwatch.dart';
import 'package:amplify_logging_cloudwatch/amplify_logging_cloudwatch.dart';
import 'package:meta/meta.dart';

/// {@macro amplify_core.logger.amplify_logging_cloudwatch}
class AmplifyFlutterLogging extends AmplifyLogging {
  static AmplifyCloudWatchLoggerPlugin? _plugin;
  static final _logger = AWSLogger();

  @override
  void configure(
    AmplifyConfig amplifyConfig,
    AmplifyAuthProviderRepository authProviderRepository,
  ) {
    if (_plugin != null) {
      return;
    }

    final pluginConfig = amplifyConfig.logging?.awsPlugin;
    if (pluginConfig == null) {
      return;
    }

    final credentialsProvider = authProviderRepository
        .getAuthProvider(APIAuthorizationType.iam.authProviderToken);
    if (credentialsProvider == null) {
      throw ConfigurationError(
        'No credential provider found for CloudWatch Logging.',
        recoverySuggestion:
            "If you haven't already, please add amplify_auth_cognito plugin to your App.",
      );
    }

    _plugin = AmplifyCloudWatchLoggerPlugin(
      credentialsProvider: credentialsProvider,
      pluginConfig: pluginConfig,
    );
    _logger
      ..registerPlugin(_plugin!)
      ..logLevel = LogLevel.verbose;
  }

  @override
  @visibleForTesting
  Future<void> reset() async {
    if (_plugin != null) {
      await _plugin!.disable();
      _logger.unregisterPlugin(_plugin!);
      _plugin = null;
    }
  }
}
