// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_amazon_firehose.firehose.model.record; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'record.g.dart';

/// The unit of data in a Firehose stream.
abstract class Record
    with _i1.AWSEquatable<Record>
    implements Built<Record, RecordBuilder> {
  /// The unit of data in a Firehose stream.
  factory Record({required _i2.Uint8List data}) {
    return _$Record._(data: data);
  }

  /// The unit of data in a Firehose stream.
  factory Record.build([void Function(RecordBuilder) updates]) = _$Record;

  const Record._();

  static const List<_i3.SmithySerializer<Record>> serializers = [
    RecordAwsJson11Serializer(),
  ];

  /// The data blob, which is base64-encoded when the blob is serialized. The maximum size of the data blob, before base64-encoding, is 1,000 KiB.
  _i2.Uint8List get data;
  @override
  List<Object?> get props => [data];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Record')..add('data', data);
    return helper.toString();
  }
}

class RecordAwsJson11Serializer extends _i3.StructuredSmithySerializer<Record> {
  const RecordAwsJson11Serializer() : super('Record');

  @override
  Iterable<Type> get types => const [Record, _$Record];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  Record deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordBuilder();
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
          result.data =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(_i2.Uint8List),
                  )
                  as _i2.Uint8List);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Record object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Record(:data) = object;
    result$.addAll([
      'Data',
      serializers.serialize(data, specifiedType: const FullType(_i2.Uint8List)),
    ]);
    return result$;
  }
}
