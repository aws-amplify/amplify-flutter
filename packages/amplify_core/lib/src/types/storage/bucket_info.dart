import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.bucket_info}
/// Presents a storage bucket information.
/// {@endtemplate}
class BucketInfo with AWSEquatable<BucketInfo> {
  /// {@macro amplify_core.storage.bucket_info}
  const BucketInfo({required this.bucketName, required this.region});
  final String bucketName;
  final String region;

  @override
  List<Object?> get props => [
        bucketName,
        region,
      ];
}