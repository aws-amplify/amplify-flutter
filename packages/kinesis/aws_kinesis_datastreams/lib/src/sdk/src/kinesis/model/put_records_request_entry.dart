// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_kinesis_datastreams.kinesis.model.put_records_request_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'put_records_request_entry.g.dart';

/// Represents the output for PutRecords.
abstract class PutRecordsRequestEntry
    with _i1.AWSEquatable<PutRecordsRequestEntry>
    implements Built<PutRecordsRequestEntry, PutRecordsRequestEntryBuilder> {
  /// Represents the output for PutRecords.
  factory PutRecordsRequestEntry({
    required _i3.Uint8List data,
    String? explicitHashKey,
    required String partitionKey,
  }) {
    return _$PutRecordsRequestEntry._(
      data: data,
      explicitHashKey: explicitHashKey,
      partitionKey: partitionKey,
    );
  }

  /// Represents the output for PutRecords.
  factory PutRecordsRequestEntry.build([
    void Function(PutRecordsRequestEntryBuilder) updates,
  ]) = _$PutRecordsRequestEntry;

  const PutRecordsRequestEntry._();

  static const List<_i2.SmithySerializer<PutRecordsRequestEntry>> serializers =
      [PutRecordsRequestEntryAwsJson11Serializer()];

  /// The data blob to put into the record, which is base64-encoded when the
  /// blob is serialized.
  _i3.Uint8List get data;

  /// The hash value used to determine explicitly the shard that the data
  /// record is assigned to by overriding the partition key hash.
  String? get explicitHashKey;

  /// Determines which shard in the stream the data record is assigned to.
  String get partitionKey;

  @override
  List<Object?> get props => [data, explicitHashKey, partitionKey];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutRecordsRequestEntry')
      ..add('data', data)
      ..add('explicitHashKey', explicitHashKey)
      ..add('partitionKey', partitionKey);
    return helper.toString();
  }
}

class PutRecordsRequestEntryAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PutRecordsRequestEntry> {
  const PutRecordsRequestEntryAwsJson11Serializer()
      : super('PutRecordsRequestEntry');

  @override
  Iterable<Type> get types => const [
        PutRecordsRequestEntry,
        _$PutRecordsRequestEntry,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
      ];

  @override
  PutRecordsRequestEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRecordsRequestEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Data':
          result.data = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Uint8List),
          ) as _i3.Uint8List);
        case 'ExplicitHashKey':
          result.explicitHashKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PartitionKey':
          result.partitionKey = (serializers.deserialize(
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
    PutRecordsRequestEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'Data',
      serializers.serialize(
        object.data,
        specifiedType: const FullType(_i3.Uint8List),
      ),
      'PartitionKey',
      serializers.serialize(
        object.partitionKey,
        specifiedType: const FullType(String),
      ),
    ];
    if (object.explicitHashKey != null) {
      result
        ..add('ExplicitHashKey')
        ..add(serializers.serialize(
          object.explicitHashKey,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
