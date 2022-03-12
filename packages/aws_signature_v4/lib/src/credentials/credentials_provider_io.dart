import 'dart:io';

import 'package:aws_signature_v4/aws_signature_v4.dart';

/// {@macro aws_signature_v4.environment_credentials_provider}
class EnvironmentCredentialsProvider implements AWSCredentialsProvider {
  /// {@macro aws_signature_v4.environment_credentials_provider}
  const EnvironmentCredentialsProvider();

  @override
  AWSCredentials retrieve() {
    final accessKeyId = Platform.environment[$awsAccessKeyId] ?? '';
    final secretAccessKey = Platform.environment[$awsSecretAccessKey] ?? '';
    final sessionToken = Platform.environment[$awsSessionToken];

    if (accessKeyId.isEmpty || secretAccessKey.isEmpty) {
      throw const InvalidCredentialsException.couldNotLoad();
    }

    return AWSCredentials(
      accessKeyId,
      secretAccessKey,
      sessionToken == null || sessionToken.isEmpty ? null : sessionToken,
    );
  }
}
