// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.update_table_replica_auto_scaling_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_auto_scaling_description.dart'
    as _i2;

part 'update_table_replica_auto_scaling_output.g.dart';

abstract class UpdateTableReplicaAutoScalingOutput
    with
        _i1.AWSEquatable<UpdateTableReplicaAutoScalingOutput>
    implements
        Built<UpdateTableReplicaAutoScalingOutput,
            UpdateTableReplicaAutoScalingOutputBuilder> {
  factory UpdateTableReplicaAutoScalingOutput(
      {_i2.TableAutoScalingDescription? tableAutoScalingDescription}) {
    return _$UpdateTableReplicaAutoScalingOutput._(
        tableAutoScalingDescription: tableAutoScalingDescription);
  }

  factory UpdateTableReplicaAutoScalingOutput.build(
          [void Function(UpdateTableReplicaAutoScalingOutputBuilder) updates]) =
      _$UpdateTableReplicaAutoScalingOutput;

  const UpdateTableReplicaAutoScalingOutput._();

  /// Constructs a [UpdateTableReplicaAutoScalingOutput] from a [payload] and [response].
  factory UpdateTableReplicaAutoScalingOutput.fromResponse(
    UpdateTableReplicaAutoScalingOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<UpdateTableReplicaAutoScalingOutput>>
      serializers = [UpdateTableReplicaAutoScalingOutputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateTableReplicaAutoScalingOutputBuilder b) {}

  /// Returns information about the auto scaling settings of a table with replicas.
  _i2.TableAutoScalingDescription? get tableAutoScalingDescription;
  @override
  List<Object?> get props => [tableAutoScalingDescription];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateTableReplicaAutoScalingOutput')
          ..add(
            'tableAutoScalingDescription',
            tableAutoScalingDescription,
          );
    return helper.toString();
  }
}

class UpdateTableReplicaAutoScalingOutputAwsJson10Serializer extends _i3
    .StructuredSmithySerializer<UpdateTableReplicaAutoScalingOutput> {
  const UpdateTableReplicaAutoScalingOutputAwsJson10Serializer()
      : super('UpdateTableReplicaAutoScalingOutput');

  @override
  Iterable<Type> get types => const [
        UpdateTableReplicaAutoScalingOutput,
        _$UpdateTableReplicaAutoScalingOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateTableReplicaAutoScalingOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTableReplicaAutoScalingOutputBuilder();
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
    UpdateTableReplicaAutoScalingOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateTableReplicaAutoScalingOutput(:tableAutoScalingDescription) =
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
