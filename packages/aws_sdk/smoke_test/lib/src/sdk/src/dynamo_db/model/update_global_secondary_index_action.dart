// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.update_global_secondary_index_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart';

part 'update_global_secondary_index_action.g.dart';

/// Represents the new provisioned throughput settings to be applied to a global secondary index.
abstract class UpdateGlobalSecondaryIndexAction
    with
        _i1.AWSEquatable<UpdateGlobalSecondaryIndexAction>
    implements
        Built<UpdateGlobalSecondaryIndexAction,
            UpdateGlobalSecondaryIndexActionBuilder> {
  /// Represents the new provisioned throughput settings to be applied to a global secondary index.
  factory UpdateGlobalSecondaryIndexAction({
    required String indexName,
    required ProvisionedThroughput provisionedThroughput,
  }) {
    return _$UpdateGlobalSecondaryIndexAction._(
      indexName: indexName,
      provisionedThroughput: provisionedThroughput,
    );
  }

  /// Represents the new provisioned throughput settings to be applied to a global secondary index.
  factory UpdateGlobalSecondaryIndexAction.build(
          [void Function(UpdateGlobalSecondaryIndexActionBuilder) updates]) =
      _$UpdateGlobalSecondaryIndexAction;

  const UpdateGlobalSecondaryIndexAction._();

  static const List<_i2.SmithySerializer<UpdateGlobalSecondaryIndexAction>>
      serializers = [UpdateGlobalSecondaryIndexActionAwsJson10Serializer()];

  /// The name of the global secondary index to be updated.
  String get indexName;

  /// Represents the provisioned throughput settings for the specified global secondary index.
  ///
  /// For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the _Amazon DynamoDB Developer Guide_.
  ProvisionedThroughput get provisionedThroughput;
  @override
  List<Object?> get props => [
        indexName,
        provisionedThroughput,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateGlobalSecondaryIndexAction')
          ..add(
            'indexName',
            indexName,
          )
          ..add(
            'provisionedThroughput',
            provisionedThroughput,
          );
    return helper.toString();
  }
}

class UpdateGlobalSecondaryIndexActionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<UpdateGlobalSecondaryIndexAction> {
  const UpdateGlobalSecondaryIndexActionAwsJson10Serializer()
      : super('UpdateGlobalSecondaryIndexAction');

  @override
  Iterable<Type> get types => const [
        UpdateGlobalSecondaryIndexAction,
        _$UpdateGlobalSecondaryIndexAction,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateGlobalSecondaryIndexAction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateGlobalSecondaryIndexActionBuilder();
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
        case 'ProvisionedThroughput':
          result.provisionedThroughput.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ProvisionedThroughput),
          ) as ProvisionedThroughput));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateGlobalSecondaryIndexAction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateGlobalSecondaryIndexAction(:indexName, :provisionedThroughput) =
        object;
    result$.addAll([
      'IndexName',
      serializers.serialize(
        indexName,
        specifiedType: const FullType(String),
      ),
      'ProvisionedThroughput',
      serializers.serialize(
        provisionedThroughput,
        specifiedType: const FullType(ProvisionedThroughput),
      ),
    ]);
    return result$;
  }
}
