// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_amazon_firehose.firehose.model.put_record_batch_response_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'put_record_batch_response_entry.g.dart';

/// Contains the result for an individual record from a PutRecordBatch request. If the record is successfully added to your Firehose stream, it receives a record ID. If the record fails to be added to your Firehose stream, the result includes an error code and an error message.
abstract class PutRecordBatchResponseEntry
    with _i1.AWSEquatable<PutRecordBatchResponseEntry>
    implements
        Built<PutRecordBatchResponseEntry, PutRecordBatchResponseEntryBuilder> {
  /// Contains the result for an individual record from a PutRecordBatch request. If the record is successfully added to your Firehose stream, it receives a record ID. If the record fails to be added to your Firehose stream, the result includes an error code and an error message.
  factory PutRecordBatchResponseEntry({
    String? recordId,
    String? errorCode,
    String? errorMessage,
  }) {
    return _$PutRecordBatchResponseEntry._(
      recordId: recordId,
      errorCode: errorCode,
      errorMessage: errorMessage,
    );
  }

  /// Contains the result for an individual record from a PutRecordBatch request. If the record is successfully added to your Firehose stream, it receives a record ID. If the record fails to be added to your Firehose stream, the result includes an error code and an error message.
  factory PutRecordBatchResponseEntry.build([
    void Function(PutRecordBatchResponseEntryBuilder) updates,
  ]) = _$PutRecordBatchResponseEntry;

  const PutRecordBatchResponseEntry._();

  static const List<_i2.SmithySerializer<PutRecordBatchResponseEntry>>
  serializers = [PutRecordBatchResponseEntryAwsJson11Serializer()];

  /// The ID of the record.
  String? get recordId;

  /// The error code for an individual record result.
  String? get errorCode;

  /// The error message for an individual record result.
  String? get errorMessage;
  @override
  List<Object?> get props => [recordId, errorCode, errorMessage];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutRecordBatchResponseEntry')
      ..add('recordId', recordId)
      ..add('errorCode', errorCode)
      ..add('errorMessage', errorMessage);
    return helper.toString();
  }
}

class PutRecordBatchResponseEntryAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PutRecordBatchResponseEntry> {
  const PutRecordBatchResponseEntryAwsJson11Serializer()
    : super('PutRecordBatchResponseEntry');

  @override
  Iterable<Type> get types => const [
    PutRecordBatchResponseEntry,
    _$PutRecordBatchResponseEntry,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  PutRecordBatchResponseEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRecordBatchResponseEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RecordId':
          result.recordId =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ErrorCode':
          result.errorCode =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ErrorMessage':
          result.errorMessage =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutRecordBatchResponseEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutRecordBatchResponseEntry(:recordId, :errorCode, :errorMessage) =
        object;
    if (recordId != null) {
      result$
        ..add('RecordId')
        ..add(
          serializers.serialize(
            recordId,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (errorCode != null) {
      result$
        ..add('ErrorCode')
        ..add(
          serializers.serialize(
            errorCode,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (errorMessage != null) {
      result$
        ..add('ErrorMessage')
        ..add(
          serializers.serialize(
            errorMessage,
            specifiedType: const FullType(String),
          ),
        );
    }
    return result$;
  }
}
