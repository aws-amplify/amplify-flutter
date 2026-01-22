// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_kinesis_datastreams.kinesis.model.put_records_result_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'put_records_result_entry.g.dart';

/// Represents the result of an individual record from a PutRecords request.
abstract class PutRecordsResultEntry
    with _i1.AWSEquatable<PutRecordsResultEntry>
    implements Built<PutRecordsResultEntry, PutRecordsResultEntryBuilder> {
  /// Represents the result of an individual record from a PutRecords request.
  factory PutRecordsResultEntry({
    String? sequenceNumber,
    String? shardId,
    String? errorCode,
    String? errorMessage,
  }) {
    return _$PutRecordsResultEntry._(
      sequenceNumber: sequenceNumber,
      shardId: shardId,
      errorCode: errorCode,
      errorMessage: errorMessage,
    );
  }

  /// Represents the result of an individual record from a PutRecords request.
  factory PutRecordsResultEntry.build([
    void Function(PutRecordsResultEntryBuilder) updates,
  ]) = _$PutRecordsResultEntry;

  const PutRecordsResultEntry._();

  static const List<_i2.SmithySerializer<PutRecordsResultEntry>> serializers = [
    PutRecordsResultEntryAwsJson11Serializer(),
  ];

  /// The sequence number for an individual record result.
  String? get sequenceNumber;

  /// The shard ID for an individual record result.
  String? get shardId;

  /// The error code for an individual record result.
  /// `InternalFailure` and `ProvisionedThroughputExceededException` are
  /// retryable errors.
  String? get errorCode;

  /// The error message for an individual record result.
  String? get errorMessage;

  @override
  List<Object?> get props => [sequenceNumber, shardId, errorCode, errorMessage];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutRecordsResultEntry')
      ..add('sequenceNumber', sequenceNumber)
      ..add('shardId', shardId)
      ..add('errorCode', errorCode)
      ..add('errorMessage', errorMessage);
    return helper.toString();
  }
}

class PutRecordsResultEntryAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PutRecordsResultEntry> {
  const PutRecordsResultEntryAwsJson11Serializer()
      : super('PutRecordsResultEntry');

  @override
  Iterable<Type> get types => const [
        PutRecordsResultEntry,
        _$PutRecordsResultEntry,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
      ];

  @override
  PutRecordsResultEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRecordsResultEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SequenceNumber':
          result.sequenceNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ShardId':
          result.shardId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ErrorCode':
          result.errorCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ErrorMessage':
          result.errorMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }
    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutRecordsResultEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    if (object.sequenceNumber != null) {
      result
        ..add('SequenceNumber')
        ..add(serializers.serialize(
          object.sequenceNumber,
          specifiedType: const FullType(String),
        ));
    }
    if (object.shardId != null) {
      result
        ..add('ShardId')
        ..add(serializers.serialize(
          object.shardId,
          specifiedType: const FullType(String),
        ));
    }
    if (object.errorCode != null) {
      result
        ..add('ErrorCode')
        ..add(serializers.serialize(
          object.errorCode,
          specifiedType: const FullType(String),
        ));
    }
    if (object.errorMessage != null) {
      result
        ..add('ErrorMessage')
        ..add(serializers.serialize(
          object.errorMessage,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
