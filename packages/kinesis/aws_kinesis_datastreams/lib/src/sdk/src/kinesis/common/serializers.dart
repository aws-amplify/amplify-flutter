// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_kinesis_datastreams.kinesis.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/invalid_argument_exception.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/kms_exception.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/provisioned_throughput_exceeded_exception.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/put_records_request.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/put_records_request_entry.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/put_records_response.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/put_records_result_entry.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/resource_not_found_exception.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...PutRecordsRequest.serializers,
  ...PutRecordsRequestEntry.serializers,
  ...PutRecordsResponse.serializers,
  ...PutRecordsResultEntry.serializers,
  ...InvalidArgumentException.serializers,
  ...ProvisionedThroughputExceededException.serializers,
  ...ResourceNotFoundException.serializers,
  ...KmsException.serializers,
];

final Map<FullType, Function> builderFactories = {
  const FullType(_i2.BuiltList, [FullType(PutRecordsRequestEntry)]):
      _i2.ListBuilder<PutRecordsRequestEntry>.new,
  const FullType(_i2.BuiltList, [FullType(PutRecordsResultEntry)]):
      _i2.ListBuilder<PutRecordsResultEntry>.new,
};
