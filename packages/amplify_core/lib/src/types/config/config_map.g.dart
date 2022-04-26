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

// ignore_for_file: implicit_dynamic_parameter

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWSConfigMap<T> _$AWSConfigMapFromJson<T extends AWSSerializable>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    AWSConfigMap<T>(
      (json['configs'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, fromJsonT(e)),
      ),
    );
