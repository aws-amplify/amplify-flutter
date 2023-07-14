// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.describe_global_table_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_global_table_input.g.dart';

abstract class DescribeGlobalTableInput
    with
        _i1.HttpInput<DescribeGlobalTableInput>,
        _i2.AWSEquatable<DescribeGlobalTableInput>
    implements
        Built<DescribeGlobalTableInput, DescribeGlobalTableInputBuilder> {
  factory DescribeGlobalTableInput({required String globalTableName}) {
    return _$DescribeGlobalTableInput._(globalTableName: globalTableName);
  }

  factory DescribeGlobalTableInput.build(
          [void Function(DescribeGlobalTableInputBuilder) updates]) =
      _$DescribeGlobalTableInput;

  const DescribeGlobalTableInput._();

  factory DescribeGlobalTableInput.fromRequest(
    DescribeGlobalTableInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeGlobalTableInput>>
      serializers = [DescribeGlobalTableInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeGlobalTableInputBuilder b) {}

  /// The name of the global table.
  String get globalTableName;
  @override
  DescribeGlobalTableInput getPayload() => this;
  @override
  List<Object?> get props => [globalTableName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeGlobalTableInput')
      ..add(
        'globalTableName',
        globalTableName,
      );
    return helper.toString();
  }
}

class DescribeGlobalTableInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeGlobalTableInput> {
  const DescribeGlobalTableInputAwsJson10Serializer()
      : super('DescribeGlobalTableInput');

  @override
  Iterable<Type> get types => const [
        DescribeGlobalTableInput,
        _$DescribeGlobalTableInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeGlobalTableInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeGlobalTableInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GlobalTableName':
          result.globalTableName = (serializers.deserialize(
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
    DescribeGlobalTableInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeGlobalTableInput(:globalTableName) = object;
    result$.addAll([
      'GlobalTableName',
      serializers.serialize(
        globalTableName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
