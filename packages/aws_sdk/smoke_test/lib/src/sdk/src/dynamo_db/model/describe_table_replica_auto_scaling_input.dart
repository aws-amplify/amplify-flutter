// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.describe_table_replica_auto_scaling_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_table_replica_auto_scaling_input.g.dart';

abstract class DescribeTableReplicaAutoScalingInput
    with
        _i1.HttpInput<DescribeTableReplicaAutoScalingInput>,
        _i2.AWSEquatable<DescribeTableReplicaAutoScalingInput>
    implements
        Built<DescribeTableReplicaAutoScalingInput,
            DescribeTableReplicaAutoScalingInputBuilder> {
  factory DescribeTableReplicaAutoScalingInput({required String tableName}) {
    return _$DescribeTableReplicaAutoScalingInput._(tableName: tableName);
  }

  factory DescribeTableReplicaAutoScalingInput.build(
      [void Function(DescribeTableReplicaAutoScalingInputBuilder)
          updates]) = _$DescribeTableReplicaAutoScalingInput;

  const DescribeTableReplicaAutoScalingInput._();

  factory DescribeTableReplicaAutoScalingInput.fromRequest(
    DescribeTableReplicaAutoScalingInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeTableReplicaAutoScalingInput>>
      serializers = [DescribeTableReplicaAutoScalingInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTableReplicaAutoScalingInputBuilder b) {}

  /// The name of the table.
  String get tableName;
  @override
  DescribeTableReplicaAutoScalingInput getPayload() => this;
  @override
  List<Object?> get props => [tableName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTableReplicaAutoScalingInput')
          ..add(
            'tableName',
            tableName,
          );
    return helper.toString();
  }
}

class DescribeTableReplicaAutoScalingInputAwsJson10Serializer extends _i1
    .StructuredSmithySerializer<DescribeTableReplicaAutoScalingInput> {
  const DescribeTableReplicaAutoScalingInputAwsJson10Serializer()
      : super('DescribeTableReplicaAutoScalingInput');

  @override
  Iterable<Type> get types => const [
        DescribeTableReplicaAutoScalingInput,
        _$DescribeTableReplicaAutoScalingInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeTableReplicaAutoScalingInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTableReplicaAutoScalingInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
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
    DescribeTableReplicaAutoScalingInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeTableReplicaAutoScalingInput(:tableName) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
