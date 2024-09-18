// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'bucket_output.g.dart';

@zAmplifyOutputsSerializable
class BucketOutput 
    with AWSEquatable<BucketOutput>, AWSSerializable, AWSDebuggable{

  const BucketOutput({required this.name, required this.bucketName, required this.awsRegion});

  factory BucketOutput.fromJson(Map<String, Object?> json) =>
      _$BucketOutputFromJson(json);

  final String name;

  final String bucketName;

  final String awsRegion;

  @override
  List<Object?> get props => [
        name,
        bucketName,
        awsRegion,
      ];

  @override
  String get runtimeTypeName => 'BucketOutput';
  
  @override
  Object? toJson() {
    return _$BucketOutputToJson(this);
  }
}
