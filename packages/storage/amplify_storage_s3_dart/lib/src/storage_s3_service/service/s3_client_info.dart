import 'package:amplify_storage_s3_dart/src/sdk/src/s3/s3_client.dart';
import 'package:meta/meta.dart';
import 'package:smithy_aws/smithy_aws.dart';

/// It holds Amazon S3 client information.
@internal
class S3ClientInfo {
  const S3ClientInfo({
    required this.client,
    required this.config,
    required this.bucketName,
    required this.awsRegion,
  });

  final S3Client client;
  final S3ClientConfig config;
  final String bucketName;
  final String awsRegion;
}
