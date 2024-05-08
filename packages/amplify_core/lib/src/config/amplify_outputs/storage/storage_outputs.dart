// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'storage_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.storage_outputs}
/// The storage outputs used by Storage category plugin
/// to communicate with backend services.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class StorageOutputs
    with AWSEquatable<StorageOutputs>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.storage_outputs}
  const StorageOutputs({required this.awsRegion, required this.bucketName});

  factory StorageOutputs.fromJson(Map<String, Object?> json) =>
      _$StorageOutputsFromJson(json);

  /// The AWS region of Amazon S3 resources.
  final String awsRegion;

  /// The Amazon S3 bucket name.
  final String bucketName;

  @override
  List<Object?> get props => [awsRegion, bucketName];

  @override
  String get runtimeTypeName => 'StorageOutputs';

  @override
  Object? toJson() {
    return _$StorageOutputsToJson(this);
  }
}
