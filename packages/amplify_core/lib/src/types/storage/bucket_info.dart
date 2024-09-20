/// {@template amplify_core.storage.bucket_info}
/// Presents a storage bucket information.
/// {@endtemplate}
class BucketInfo {
  /// {@macro amplify_core.storage.bucket_info}
  const BucketInfo({required this.bucketName, required this.region});
  final String bucketName;
  final String region;
}
