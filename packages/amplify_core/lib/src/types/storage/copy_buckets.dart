import 'package:amplify_core/amplify_core.dart';

/// Presents storage buckets for a copy operation.
class CopyBuckets with AWSSerializable<Map<String, Object?>> {
  /// Creates a [CopyBuckets] with [source] and [destination] buckets.
  const CopyBuckets({required this.source, required this.destination});

  /// Creates a [CopyBuckets] with the same [bucket] for the [source] and [destination].
  CopyBuckets.sameBucket(StorageBucket bucket)
    : source = bucket,
      destination = bucket;

  final StorageBucket source;
  final StorageBucket destination;

  @override
  Map<String, Object?> toJson() => {
    'source': source.toJson(),
    'destination': destination.toJson(),
  };
}
