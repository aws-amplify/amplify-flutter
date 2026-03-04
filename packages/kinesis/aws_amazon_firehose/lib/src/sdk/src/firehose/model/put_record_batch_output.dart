// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_amazon_firehose.firehose.model.put_record_batch_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/put_record_batch_response_entry.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'put_record_batch_output.g.dart';

abstract class PutRecordBatchOutput
    with _i1.AWSEquatable<PutRecordBatchOutput>
    implements Built<PutRecordBatchOutput, PutRecordBatchOutputBuilder> {
  factory PutRecordBatchOutput({
    required int failedPutCount,
    bool? encrypted,
    required List<PutRecordBatchResponseEntry> requestResponses,
  }) {
    return _$PutRecordBatchOutput._(
      failedPutCount: failedPutCount,
      encrypted: encrypted,
      requestResponses: _i2.BuiltList(requestResponses),
    );
  }

  factory PutRecordBatchOutput.build([
    void Function(PutRecordBatchOutputBuilder) updates,
  ]) = _$PutRecordBatchOutput;

  const PutRecordBatchOutput._();

  /// Constructs a [PutRecordBatchOutput] from a [payload] and [response].
  factory PutRecordBatchOutput.fromResponse(
    PutRecordBatchOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i3.SmithySerializer<PutRecordBatchOutput>> serializers = [
    PutRecordBatchOutputAwsJson11Serializer(),
  ];

  /// The number of records that might have failed processing. This number might be greater than 0 even if the PutRecordBatch call succeeds. Check `FailedPutCount` to determine whether there are records that you need to resend.
  int get failedPutCount;

  /// Indicates whether server-side encryption (SSE) was enabled during this operation.
  bool? get encrypted;

  /// The results array. For each record, the index of the response element is the same as the index used in the request array.
  _i2.BuiltList<PutRecordBatchResponseEntry> get requestResponses;
  @override
  List<Object?> get props => [failedPutCount, encrypted, requestResponses];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutRecordBatchOutput')
      ..add('failedPutCount', failedPutCount)
      ..add('encrypted', encrypted)
      ..add('requestResponses', requestResponses);
    return helper.toString();
  }
}

class PutRecordBatchOutputAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<PutRecordBatchOutput> {
  const PutRecordBatchOutputAwsJson11Serializer()
    : super('PutRecordBatchOutput');

  @override
  Iterable<Type> get types => const [
    PutRecordBatchOutput,
    _$PutRecordBatchOutput,
  ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  PutRecordBatchOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRecordBatchOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'FailedPutCount':
          result.failedPutCount =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'Encrypted':
          result.encrypted =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool);
        case 'RequestResponses':
          result.requestResponses.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.BuiltList, [
                    FullType(PutRecordBatchResponseEntry),
                  ]),
                )
                as _i2.BuiltList<PutRecordBatchResponseEntry>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutRecordBatchOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutRecordBatchOutput(:failedPutCount, :encrypted, :requestResponses) =
        object;
    result$.addAll([
      'FailedPutCount',
      serializers.serialize(failedPutCount, specifiedType: const FullType(int)),
      'RequestResponses',
      serializers.serialize(
        requestResponses,
        specifiedType: const FullType(_i2.BuiltList, [
          FullType(PutRecordBatchResponseEntry),
        ]),
      ),
    ]);
    if (encrypted != null) {
      result$
        ..add('Encrypted')
        ..add(
          serializers.serialize(encrypted, specifiedType: const FullType(bool)),
        );
    }
    return result$;
  }
}
