// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'bucket_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.bucket_outputs}
/// The Amplify Gen 2 outputs for Buckets in the Storage category.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class BucketOutputs
    with AWSEquatable<BucketOutputs>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.bucket_outputs}
  const BucketOutputs({
    required this.name,
    required this.bucketName,
    required this.awsRegion,
  });

  factory BucketOutputs.fromJson(Map<String, Object?> json) =>
      _$BucketOutputsFromJson(json);

  /// The user friendly name of the bucket
  final String name;

  /// The Amazon S3 bucket name.
  final String bucketName;

  /// The AWS region of Amazon S3 resources.
  final String awsRegion;

  @override
  List<Object?> get props => [name, bucketName, awsRegion];

  @override
  String get runtimeTypeName => 'BucketOutputs';

  @override
  Object? toJson() {
    return _$BucketOutputsToJson(this);
  }
}
