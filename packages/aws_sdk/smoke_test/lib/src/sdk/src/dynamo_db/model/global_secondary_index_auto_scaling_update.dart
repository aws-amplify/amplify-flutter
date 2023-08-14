// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.global_secondary_index_auto_scaling_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart';

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
    AutoScalingSettingsUpdate? provisionedWriteCapacityAutoScalingUpdate,
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

  static const List<_i2.SmithySerializer<GlobalSecondaryIndexAutoScalingUpdate>>
      serializers = [
    GlobalSecondaryIndexAutoScalingUpdateAwsJson10Serializer()
  ];

  /// The name of the global secondary index.
  String? get indexName;

  /// Represents the auto scaling settings to be modified for a global table or global secondary index.
  AutoScalingSettingsUpdate? get provisionedWriteCapacityAutoScalingUpdate;
  @override
  List<Object?> get props => [
        indexName,
        provisionedWriteCapacityAutoScalingUpdate,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GlobalSecondaryIndexAutoScalingUpdate')
          ..add(
            'indexName',
            indexName,
          )
          ..add(
            'provisionedWriteCapacityAutoScalingUpdate',
            provisionedWriteCapacityAutoScalingUpdate,
          );
    return helper.toString();
  }
}

class GlobalSecondaryIndexAutoScalingUpdateAwsJson10Serializer extends _i2
    .StructuredSmithySerializer<GlobalSecondaryIndexAutoScalingUpdate> {
  const GlobalSecondaryIndexAutoScalingUpdateAwsJson10Serializer()
      : super('GlobalSecondaryIndexAutoScalingUpdate');

  @override
  Iterable<Type> get types => const [
        GlobalSecondaryIndexAutoScalingUpdate,
        _$GlobalSecondaryIndexAutoScalingUpdate,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ProvisionedWriteCapacityAutoScalingUpdate':
          result.provisionedWriteCapacityAutoScalingUpdate
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AutoScalingSettingsUpdate),
          ) as AutoScalingSettingsUpdate));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GlobalSecondaryIndexAutoScalingUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GlobalSecondaryIndexAutoScalingUpdate(
      :indexName,
      :provisionedWriteCapacityAutoScalingUpdate
    ) = object;
    if (indexName != null) {
      result$
        ..add('IndexName')
        ..add(serializers.serialize(
          indexName,
          specifiedType: const FullType(String),
        ));
    }
    if (provisionedWriteCapacityAutoScalingUpdate != null) {
      result$
        ..add('ProvisionedWriteCapacityAutoScalingUpdate')
        ..add(serializers.serialize(
          provisionedWriteCapacityAutoScalingUpdate,
          specifiedType: const FullType(AutoScalingSettingsUpdate),
        ));
    }
    return result$;
  }
}
