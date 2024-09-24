import 'package:amplify_storage_s3_dart/src/sdk/src/s3/s3_client.dart';
import 'package:meta/meta.dart';
import 'package:smithy_aws/smithy_aws.dart';

@internal
class S3ClientInfo {
  const S3ClientInfo({required this.client, required this.config});

  final S3Client client;
  final S3ClientConfig config;
}
