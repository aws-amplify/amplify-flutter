// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_kinesis_datastreams.kinesis.model.put_records_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/put_records_request_entry.dart';
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'put_records_request.g.dart';

/// A PutRecords request.
abstract class PutRecordsRequest
    with
        _i1.HttpInput<PutRecordsRequest>,
        _i2.AWSEquatable<PutRecordsRequest>
    implements Built<PutRecordsRequest, PutRecordsRequestBuilder> {
  /// A PutRecords request.
  factory PutRecordsRequest({
    required List<PutRecordsRequestEntry> records,
    required String streamName,
    String? streamArn,
  }) {
    return _$PutRecordsRequest._(
      records: _i3.BuiltList(records),
      streamName: streamName,
      streamArn: streamArn,
    );
  }

  /// A PutRecords request.
  factory PutRecordsRequest.build([
    void Function(PutRecordsRequestBuilder) updates,
  ]) = _$PutRecordsRequest;

  const PutRecordsRequest._();

  factory PutRecordsRequest.fromRequest(
    PutRecordsRequest payload,
    _i2.AWSBaseHttpRequest request,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<PutRecordsRequest>> serializers = [
    PutRecordsRequestAwsJson11Serializer(),
  ];

  /// The records associated with the request.
  _i3.BuiltList<PutRecordsRequestEntry> get records;

  /// The stream name associated with the request.
  String get streamName;

  /// The ARN of the stream.
  String? get streamArn;

  @override
  PutRecordsRequest getPayload() => this;

  @override
  List<Object?> get props => [records, streamName, streamArn];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutRecordsRequest')
      ..add('records', records)
      ..add('streamName', streamName)
      ..add('streamArn', streamArn);
    return helper.toString();
  }
}

class PutRecordsRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutRecordsRequest> {
  const PutRecordsRequestAwsJson11Serializer() : super('PutRecordsRequest');

  @override
  Iterable<Type> get types => const [
        PutRecordsRequest,
        _$PutRecordsRequest,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
      ];

  @override
  PutRecordsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRecordsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Records':
          result.records.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(PutRecordsRequestEntry)],
            ),
          ) as _i3.BuiltList<PutRecordsRequestEntry>));
        case 'StreamName':
          result.streamName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StreamARN':
          result.streamArn = (serializers.deserialize(
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
    PutRecordsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'Records',
      serializers.serialize(
        object.records,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(PutRecordsRequestEntry)],
        ),
      ),
      'StreamName',
      serializers.serialize(
        object.streamName,
        specifiedType: const FullType(String),
      ),
    ];
    if (object.streamArn != null) {
      result
        ..add('StreamARN')
        ..add(serializers.serialize(
          object.streamArn,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
