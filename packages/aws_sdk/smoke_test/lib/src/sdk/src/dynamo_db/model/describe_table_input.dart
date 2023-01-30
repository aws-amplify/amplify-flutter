// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.describe_table_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_table_input.g.dart';

/// Represents the input of a `DescribeTable` operation.
abstract class DescribeTableInput
    with _i1.HttpInput<DescribeTableInput>, _i2.AWSEquatable<DescribeTableInput>
    implements Built<DescribeTableInput, DescribeTableInputBuilder> {
  /// Represents the input of a `DescribeTable` operation.
  factory DescribeTableInput({required String tableName}) {
    return _$DescribeTableInput._(tableName: tableName);
  }

  /// Represents the input of a `DescribeTable` operation.
  factory DescribeTableInput.build(
          [void Function(DescribeTableInputBuilder) updates]) =
      _$DescribeTableInput;

  const DescribeTableInput._();

  factory DescribeTableInput.fromRequest(
    DescribeTableInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeTableInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTableInputBuilder b) {}

  /// The name of the table to describe.
  String get tableName;
  @override
  DescribeTableInput getPayload() => this;
  @override
  List<Object?> get props => [tableName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTableInput');
    helper.add(
      'tableName',
      tableName,
    );
    return helper.toString();
  }
}

class DescribeTableInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeTableInput> {
  const DescribeTableInputAwsJson10Serializer() : super('DescribeTableInput');

  @override
  Iterable<Type> get types => const [
        DescribeTableInput,
        _$DescribeTableInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeTableInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTableInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DescribeTableInput);
    final result = <Object?>[
      'TableName',
      serializers.serialize(
        payload.tableName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
