// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_amazon_firehose.firehose.model.put_record_batch_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/record.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'put_record_batch_input.g.dart';

abstract class PutRecordBatchInput
    with
        _i1.HttpInput<PutRecordBatchInput>,
        _i2.AWSEquatable<PutRecordBatchInput>
    implements Built<PutRecordBatchInput, PutRecordBatchInputBuilder> {
  factory PutRecordBatchInput({
    required String deliveryStreamName,
    required List<Record> records,
  }) {
    return _$PutRecordBatchInput._(
      deliveryStreamName: deliveryStreamName,
      records: _i3.BuiltList(records),
    );
  }

  factory PutRecordBatchInput.build([
    void Function(PutRecordBatchInputBuilder) updates,
  ]) = _$PutRecordBatchInput;

  const PutRecordBatchInput._();

  factory PutRecordBatchInput.fromRequest(
    PutRecordBatchInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  static const List<_i1.SmithySerializer<PutRecordBatchInput>> serializers = [
    PutRecordBatchInputAwsJson11Serializer(),
  ];

  /// The name of the Firehose stream.
  String get deliveryStreamName;

  /// One or more records.
  _i3.BuiltList<Record> get records;
  @override
  PutRecordBatchInput getPayload() => this;

  @override
  List<Object?> get props => [deliveryStreamName, records];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutRecordBatchInput')
      ..add('deliveryStreamName', deliveryStreamName)
      ..add('records', records);
    return helper.toString();
  }
}

class PutRecordBatchInputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutRecordBatchInput> {
  const PutRecordBatchInputAwsJson11Serializer() : super('PutRecordBatchInput');

  @override
  Iterable<Type> get types => const [
    PutRecordBatchInput,
    _$PutRecordBatchInput,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  PutRecordBatchInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRecordBatchInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeliveryStreamName':
          result.deliveryStreamName =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'Records':
          result.records.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i3.BuiltList, [
                    FullType(Record),
                  ]),
                )
                as _i3.BuiltList<Record>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutRecordBatchInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutRecordBatchInput(:deliveryStreamName, :records) = object;
    result$.addAll([
      'DeliveryStreamName',
      serializers.serialize(
        deliveryStreamName,
        specifiedType: const FullType(String),
      ),
      'Records',
      serializers.serialize(
        records,
        specifiedType: const FullType(_i3.BuiltList, [FullType(Record)]),
      ),
    ]);
    return result$;
  }
}
