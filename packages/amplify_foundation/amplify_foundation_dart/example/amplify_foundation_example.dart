// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_print

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

void main() async {
  print('Start minCustomization');
  await minCustomization();
  print('End minCustomization');

  print('Start maxCustomization');
  await maxCustomization();
  print('End maxCustomization');
}

// Min Customization — register a simple printer sink, use AmplifyLogging,
// and create an AWSCredentialsProvider from a Cognito client
Future<void> minCustomization() async {
  // Register a console log sink at info level
  final logSink = AmplifySimplePrinterLogSink(logLevel: LogLevel.info);
  AmplifyLogging.addSink(logSink);

  final cognitoConfig = AmplifyCognitoClientConfig(id: 'UserPoolId');

  final amplifyCognitoClient = AmplifyCognitoClient(
    createLogger: AmplifyLogging.logger,
    config: cognitoConfig,
  );

  final s3Config = AmplifyS3ClientConfig(id: 'S3BucketId');
  final credentialsProvider = amplifyCognitoClient.toAWSCredentialsProvider();

  final amplifyS3Client = AmplifyS3Client(
    awsCredentialsProvider: credentialsProvider,
    createLogger: AmplifyLogging.logger,
    config: s3Config,
  );

  final result = await amplifyS3Client.upload('FilePath');
  switch (result) {
    case Ok(:final value):
      print('ok - ${value.value}');
    case Error(:final error):
      print('error - $error');
  }
}

// Max Customization — custom LogSink and logger factory
class MyLogSink implements LogSink {
  @override
  bool isEnabled(LogLevel logLevel) => true; // Accept all levels

  @override
  void emit(LogMessage message) {
    // Custom sink logic — e.g., send to remote logging service
    print('[${message.level.name}] ${message.name}: ${message.content}');
  }
}

class MyCredentialsProvider implements AWSCredentialsProvider {
  @override
  Future<AWSCredentials> resolve() async {
    return const StaticCredentials('accessKeyID', 'secretAccessKey');
  }
}

Future<void> maxCustomization() async {
  final credentialsProvider = MyCredentialsProvider();

  // Use a custom sink with a BroadcastLogger
  final customSink = MyLogSink();
  Logger createLogger(String name) =>
      BroadcastLogger(name: name, sinks: [customSink]);

  final s3Config = AmplifyS3ClientConfig(id: 'S3BucketId');

  final amplifyS3Client = AmplifyS3Client(
    awsCredentialsProvider: credentialsProvider,
    createLogger: createLogger,
    config: s3Config,
  );

  final result = await amplifyS3Client.upload('FilePath');
  switch (result) {
    case Ok(:final value):
      print('ok - ${value.value}');
    case Error(:final error):
      print('error - $error');
  }
}

// Cognito Client Code
class AmplifyCognitoClientConfig {
  AmplifyCognitoClientConfig({required this.id});
  final String id;
}

class CognitoCredentialProvider implements AWSCredentialsProvider {
  @override
  Future<AWSCredentials> resolve() async {
    return const StaticCredentials('accessKeyID', 'secretAccessKey');
  }
}

class AmplifyCognitoClient {
  AmplifyCognitoClient({required this.createLogger, required this.config});

  final Logger Function(String name) createLogger;
  final AmplifyCognitoClientConfig config;

  Logger get _logger => createLogger('AmplifyCognitoClient');

  AWSCredentialsProvider toAWSCredentialsProvider() {
    _logger.verbose('Creating CognitoCredentialProvider');
    return CognitoCredentialProvider();
  }
}

// S3 Client Code
class UnknownAmplifyException extends AmplifyException {
  UnknownAmplifyException({super.cause})
    : super(
        message: 'An unknown error has occurred',
        recoverySuggestion: 'Please open an issue on the Amplify Github',
      );
}

class UploadResult {
  const UploadResult({required this.value});

  final String value;
}

class AmplifyS3ClientConfig {
  AmplifyS3ClientConfig({required this.id});
  final String id;
}

class AmplifyS3Client {
  AmplifyS3Client({
    required this.awsCredentialsProvider,
    required this.createLogger,
    required this.config,
  });

  final AWSCredentialsProvider awsCredentialsProvider;
  final Logger Function(String name) createLogger;
  final AmplifyS3ClientConfig config;

  Logger get _logger => createLogger('AmplifyS3Client');

  Future<Result<UploadResult>> upload(String file) async {
    try {
      _logger.info('upload called with file: $file');

      final result = await _upload(file);

      _logger.info('someAction returned with: $result');
      return Result.ok(result);
    } on Exception catch (error, stackTrace) {
      _logger.error('Error calling someAction', error, stackTrace);
      return Result.error(error);
    }
  }

  Future<UploadResult> _upload(String file) async {
    return const UploadResult(value: 'Success!');
  }
}
