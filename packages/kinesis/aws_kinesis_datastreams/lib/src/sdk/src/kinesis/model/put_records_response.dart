// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_kinesis_datastreams.kinesis.model.put_records_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/put_records_result_entry.dart';
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'put_records_response.g.dart';

/// PutRecords results.
abstract class PutRecordsResponse
    with _i1.AWSEquatable<PutRecordsResponse>
    implements Built<PutRecordsResponse, PutRecordsResponseBuilder> {
  /// PutRecords results.
  factory PutRecordsResponse({
    int? failedRecordCount,
    required List<PutRecordsResultEntry> records,
    String? encryptionType,
  }) {
    return _$PutRecordsResponse._(
      failedRecordCount: failedRecordCount,
      records: _i3.BuiltList(records),
      encryptionType: encryptionType,
    );
  }

  /// PutRecords results.
  factory PutRecordsResponse.build([
    void Function(PutRecordsResponseBuilder) updates,
  ]) = _$PutRecordsResponse;

  const PutRecordsResponse._();

  /// Constructs a [PutRecordsResponse] from a [payload] and [response].
  factory PutRecordsResponse.fromResponse(
    PutRecordsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<PutRecordsResponse>> serializers = [
    PutRecordsResponseAwsJson11Serializer(),
  ];

  /// The number of unsuccessfully processed records in a PutRecords request.
  int? get failedRecordCount;

  /// An array of successfully and unsuccessfully processed record results.
  _i3.BuiltList<PutRecordsResultEntry> get records;

  /// The encryption type used on the records.
  String? get encryptionType;

  @override
  List<Object?> get props => [failedRecordCount, records, encryptionType];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutRecordsResponse')
      ..add('failedRecordCount', failedRecordCount)
      ..add('records', records)
      ..add('encryptionType', encryptionType);
    return helper.toString();
  }
}

class PutRecordsResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PutRecordsResponse> {
  const PutRecordsResponseAwsJson11Serializer() : super('PutRecordsResponse');

  @override
  Iterable<Type> get types => const [
        PutRecordsResponse,
        _$PutRecordsResponse,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
      ];

  @override
  PutRecordsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRecordsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'FailedRecordCount':
          result.failedRecordCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Records':
          result.records.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(PutRecordsResultEntry)],
            ),
          ) as _i3.BuiltList<PutRecordsResultEntry>));
        case 'EncryptionType':
          result.encryptionType = (serializers.deserialize(
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
    PutRecordsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'Records',
      serializers.serialize(
        object.records,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(PutRecordsResultEntry)],
        ),
      ),
    ];
    if (object.failedRecordCount != null) {
      result
        ..add('FailedRecordCount')
        ..add(serializers.serialize(
          object.failedRecordCount,
          specifiedType: const FullType(int),
        ));
    }
    if (object.encryptionType != null) {
      result
        ..add('EncryptionType')
        ..add(serializers.serialize(
          object.encryptionType,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
