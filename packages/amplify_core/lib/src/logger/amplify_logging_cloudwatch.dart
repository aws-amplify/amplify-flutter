// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library;

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.logger.amplify_logging_cloudwatch}
/// It configures the [CloudWatchLoggerPlugin] from [AmplifyConfig] to sends
/// [AWSLogger]'s logs to the CloudWatch.
/// {@endtemplate}
class AmplifyLogging {
  static CloudWatchLoggerPlugin? _plugin;
  static final _logger = AWSLogger();

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

    _plugin = CloudWatchLoggerPlugin(
      credentialsProvider: credentialsProvider,
      pluginConfig: pluginConfig,
    );
    _logger
      ..registerPlugin(_plugin!)
      ..logLevel = LogLevel.verbose;
  }

  @visibleForTesting
  Future<void> reset() async {
    if (_plugin != null) {
      await _plugin!.disable();
      _logger.unregisterPlugin(_plugin!);
      _plugin = null;
    }
  }
}
