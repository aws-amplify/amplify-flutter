// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_transfer_utility.g.dart';

@zAwsSerializable
class S3TransferUtility with AWSEquatable<S3TransferUtility>, AWSSerializable {
  const S3TransferUtility({
    required this.bucket,
    required this.region,
  });

  final String bucket;
  final String region;

  @override
  List<Object?> get props => [
        bucket,
        region,
      ];

  factory S3TransferUtility.fromJson(Map<String, Object?> json) =>
      _$S3TransferUtilityFromJson(json);

  S3TransferUtility copyWith({
    String? bucket,
    String? region,
  }) {
    return S3TransferUtility(
      bucket: bucket ?? this.bucket,
      region: region ?? this.region,
    );
  }

  @override
  Map<String, Object?> toJson() => _$S3TransferUtilityToJson(this);
}
