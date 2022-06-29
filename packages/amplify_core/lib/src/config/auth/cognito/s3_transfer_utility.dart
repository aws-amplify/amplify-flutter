//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

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
