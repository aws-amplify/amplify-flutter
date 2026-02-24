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

//Min Customization
Future<void> minCustomization() async {
  final loggerProvider = AmplifySimplePrinterLoggerProvider();
  //final loggerProvider = AmplifyNoOpLoggerProvider();
  final cognitoConfig = AmplifyCognitoClientConfig(id: 'UserPoolId');

  final amplifyCognitoClient = AmplifyCognitoClient(
    loggerProvider: loggerProvider,
    config: cognitoConfig,
  );

  final s3Config = AmplifyS3ClientConfig(id: 'S3BucketId');
  final credentialsProvider = amplifyCognitoClient.toAWSCredentialsProvider();

  final amplifyS3Client = AmplifyS3Client(
    awsCredentialsProvider: credentialsProvider,
    loggerProvider: loggerProvider,
    config: s3Config,
  );

  final result = await amplifyS3Client.upload('FilePath');
  result.handle(
    onSuccess: (data) => print('onSuccess - ${data.value}'),
    onFailure: (error) => print('onFailure - ${error.message}'),
  );
}

//Max Customization
class MyCredentialsProvider implements AWSCredentialsProvider {
  @override
  Future<AWSCredentials> resolve() async {
    return StaticCredentials('accessKeyID', 'secretAccessKey');
  }
}

class MyLoggerProvider implements LoggerProvider {
  @override
  Logger resolve(String name) {
    return AmplifyLogger(
      name: name,
      thresholdLevel: LogLevel.all,
      logHandler: _logHandler,
    );
  }

  void _logHandler(AmplifyLog log) {}
}

Future<void> maxCustomization() async {
  final credentialsProvider = MyCredentialsProvider();
  final loggerProvider = MyLoggerProvider();

  final s3Config = AmplifyS3ClientConfig(id: 'S3BucketId');

  final amplifyS3Client = AmplifyS3Client(
    awsCredentialsProvider: credentialsProvider,
    loggerProvider: loggerProvider,
    config: s3Config,
  );

  final result = await amplifyS3Client.upload('FilePath');
  result.handle(
    onSuccess: (data) => print('onSuccess - ${data.value}'),
    onFailure: (error) => print('onFailure - ${error.message}'),
  );
}

//Cognito Client Code
class AmplifyCognitoClientConfig {
  AmplifyCognitoClientConfig({required this.id});
  String id;
}

class CognitoCredentialProvider implements AWSCredentialsProvider {
  @override
  Future<AWSCredentials> resolve() async {
    return StaticCredentials('accessKeyID', 'secretAccessKey');
  }
}

class AmplifyCognitoClient {
  AmplifyCognitoClient({required this.loggerProvider, required this.config});

  LoggerProvider loggerProvider;
  AmplifyCognitoClientConfig config;

  Logger get _logger => loggerProvider.resolve('AmplifyCognitoClient');

  AWSCredentialsProvider toAWSCredentialsProvider() {
    _logger.verbose('Creating CognitoCredentialProvider');
    return CognitoCredentialProvider();
  }
}

//S3 Client Code
class UnknownAmplifyException extends AmplifyException {
  UnknownAmplifyException({super.cause})
    : super(
        message: 'An unknown error has occured',
        recoverySuggestion: 'Please open an issue on the Amplify Github',
      );
}

class UploadResult {
  UploadResult({required this.value});
  String value;
}

class AmplifyS3ClientConfig {
  AmplifyS3ClientConfig({required this.id});
  String id;
}

class AmplifyS3Client {
  AmplifyS3Client({
    required this.awsCredentialsProvider,
    required this.loggerProvider,
    required this.config,
  });

  AWSCredentialsProvider awsCredentialsProvider;
  LoggerProvider loggerProvider;
  AmplifyS3ClientConfig config;

  Logger get _logger => loggerProvider.resolve('AmplifyS3Client');

  Future<Result<UploadResult, AmplifyException>> upload(String file) async {
    try {
      _logger.info('upload called with file: $file');

      final result = await _upload(file);

      _logger.info('someAction returned with: $result');
      return Success(result);
    } on AmplifyException catch (error, stackTrace) {
      _logger.error('Error calling someAction', error, stackTrace);
      return Failure(error);
    } on Object catch (error, stackTrace) {
      _logger.error('Error calling someAction', error, stackTrace);
      return Failure(UnknownAmplifyException(cause: error));
    }
  }

  Future<UploadResult> _upload(String file) async {
    // final credentials = await awsCredentialsProvider.resolve();
    // final id = config.id;

    return UploadResult(value: 'Success!');
  }
}
