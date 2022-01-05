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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_transfer_utility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3TransferUtility _$S3TransferUtilityFromJson(Map<String, dynamic> json) =>
    S3TransferUtility(
      bucket: json['Bucket'] as String,
      region: json['Region'] as String,
    );

Map<String, dynamic> _$S3TransferUtilityToJson(S3TransferUtility instance) =>
    <String, dynamic>{
      'Bucket': instance.bucket,
      'Region': instance.region,
    };
