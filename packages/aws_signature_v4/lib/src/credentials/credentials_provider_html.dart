import 'package:aws_signature_v4/aws_signature_v4.dart';

/// {@macro aws_signature_v4.environment_credentials_provider}
class EnvironmentCredentialsProvider implements AWSCredentialsProvider {
  /// {@macro aws_signature_v4.environment_credentials_provider}
  const EnvironmentCredentialsProvider();

  @override
  AWSCredentials retrieve() {
    return const DartEnvironmentCredentialsProvider().retrieve();
  }
}
