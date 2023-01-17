// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.global_secondary_index_auto_scaling_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart'
    as _i2;

part 'global_secondary_index_auto_scaling_update.g.dart';

/// Represents the auto scaling settings of a global secondary index for a global table that will be modified.
abstract class GlobalSecondaryIndexAutoScalingUpdate
    with
        _i1.AWSEquatable<GlobalSecondaryIndexAutoScalingUpdate>
    implements
        Built<GlobalSecondaryIndexAutoScalingUpdate,
            GlobalSecondaryIndexAutoScalingUpdateBuilder> {
  /// Represents the auto scaling settings of a global secondary index for a global table that will be modified.
  factory GlobalSecondaryIndexAutoScalingUpdate({
    String? indexName,
    _i2.AutoScalingSettingsUpdate? provisionedWriteCapacityAutoScalingUpdate,
  }) {
    return _$GlobalSecondaryIndexAutoScalingUpdate._(
      indexName: indexName,
      provisionedWriteCapacityAutoScalingUpdate:
          provisionedWriteCapacityAutoScalingUpdate,
    );
  }

  /// Represents the auto scaling settings of a global secondary index for a global table that will be modified.
  factory GlobalSecondaryIndexAutoScalingUpdate.build(
      [void Function(GlobalSecondaryIndexAutoScalingUpdateBuilder)
          updates]) = _$GlobalSecondaryIndexAutoScalingUpdate;

  const GlobalSecondaryIndexAutoScalingUpdate._();

  static const List<_i3.SmithySerializer> serializers = [
    GlobalSecondaryIndexAutoScalingUpdateAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GlobalSecondaryIndexAutoScalingUpdateBuilder b) {}

  /// The name of the global secondary index.
  String? get indexName;

  /// Represents the auto scaling settings to be modified for a global table or global secondary index.
  _i2.AutoScalingSettingsUpdate? get provisionedWriteCapacityAutoScalingUpdate;
  @override
  List<Object?> get props => [
        indexName,
        provisionedWriteCapacityAutoScalingUpdate,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GlobalSecondaryIndexAutoScalingUpdate');
    helper.add(
      'indexName',
      indexName,
    );
    helper.add(
      'provisionedWriteCapacityAutoScalingUpdate',
      provisionedWriteCapacityAutoScalingUpdate,
    );
    return helper.toString();
  }
}

class GlobalSecondaryIndexAutoScalingUpdateAwsJson10Serializer extends _i3
    .StructuredSmithySerializer<GlobalSecondaryIndexAutoScalingUpdate> {
  const GlobalSecondaryIndexAutoScalingUpdateAwsJson10Serializer()
      : super('GlobalSecondaryIndexAutoScalingUpdate');

  @override
  Iterable<Type> get types => const [
        GlobalSecondaryIndexAutoScalingUpdate,
        _$GlobalSecondaryIndexAutoScalingUpdate,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GlobalSecondaryIndexAutoScalingUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlobalSecondaryIndexAutoScalingUpdateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'IndexName':
          if (value != null) {
            result.indexName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ProvisionedWriteCapacityAutoScalingUpdate':
          if (value != null) {
            result.provisionedWriteCapacityAutoScalingUpdate
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AutoScalingSettingsUpdate),
            ) as _i2.AutoScalingSettingsUpdate));
          }
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
    final payload = (object as GlobalSecondaryIndexAutoScalingUpdate);
    final result = <Object?>[];
    if (payload.indexName != null) {
      result
        ..add('IndexName')
        ..add(serializers.serialize(
          payload.indexName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.provisionedWriteCapacityAutoScalingUpdate != null) {
      result
        ..add('ProvisionedWriteCapacityAutoScalingUpdate')
        ..add(serializers.serialize(
          payload.provisionedWriteCapacityAutoScalingUpdate!,
          specifiedType: const FullType(_i2.AutoScalingSettingsUpdate),
        ));
    }
    return result;
  }
}
