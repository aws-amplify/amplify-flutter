// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.describe_table_replica_auto_scaling_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_auto_scaling_description.dart'
    as _i2;

part 'describe_table_replica_auto_scaling_output.g.dart';

abstract class DescribeTableReplicaAutoScalingOutput
    with
        _i1.AWSEquatable<DescribeTableReplicaAutoScalingOutput>
    implements
        Built<DescribeTableReplicaAutoScalingOutput,
            DescribeTableReplicaAutoScalingOutputBuilder> {
  factory DescribeTableReplicaAutoScalingOutput(
      {_i2.TableAutoScalingDescription? tableAutoScalingDescription}) {
    return _$DescribeTableReplicaAutoScalingOutput._(
        tableAutoScalingDescription: tableAutoScalingDescription);
  }

  factory DescribeTableReplicaAutoScalingOutput.build(
      [void Function(DescribeTableReplicaAutoScalingOutputBuilder)
          updates]) = _$DescribeTableReplicaAutoScalingOutput;

  const DescribeTableReplicaAutoScalingOutput._();

  /// Constructs a [DescribeTableReplicaAutoScalingOutput] from a [payload] and [response].
  factory DescribeTableReplicaAutoScalingOutput.fromResponse(
    DescribeTableReplicaAutoScalingOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeTableReplicaAutoScalingOutput>>
      serializers = [
    DescribeTableReplicaAutoScalingOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTableReplicaAutoScalingOutputBuilder b) {}

  /// Represents the auto scaling properties of the table.
  _i2.TableAutoScalingDescription? get tableAutoScalingDescription;
  @override
  List<Object?> get props => [tableAutoScalingDescription];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTableReplicaAutoScalingOutput')
          ..add(
            'tableAutoScalingDescription',
            tableAutoScalingDescription,
          );
    return helper.toString();
  }
}

class DescribeTableReplicaAutoScalingOutputAwsJson10Serializer extends _i3
    .StructuredSmithySerializer<DescribeTableReplicaAutoScalingOutput> {
  const DescribeTableReplicaAutoScalingOutputAwsJson10Serializer()
      : super('DescribeTableReplicaAutoScalingOutput');

  @override
  Iterable<Type> get types => const [
        DescribeTableReplicaAutoScalingOutput,
        _$DescribeTableReplicaAutoScalingOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeTableReplicaAutoScalingOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTableReplicaAutoScalingOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableAutoScalingDescription':
          result.tableAutoScalingDescription.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.TableAutoScalingDescription),
          ) as _i2.TableAutoScalingDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeTableReplicaAutoScalingOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeTableReplicaAutoScalingOutput(:tableAutoScalingDescription) =
        object;
    if (tableAutoScalingDescription != null) {
      result$
        ..add('TableAutoScalingDescription')
        ..add(serializers.serialize(
          tableAutoScalingDescription,
          specifiedType: const FullType(_i2.TableAutoScalingDescription),
        ));
    }
    return result$;
  }
}
