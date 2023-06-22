// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.global_secondary_index_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_secondary_index_action.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_global_secondary_index_action.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_secondary_index_action.dart'
    as _i2;

part 'global_secondary_index_update.g.dart';

/// Represents one of the following:
///
/// *   A new global secondary index to be added to an existing table.
///
/// *   New provisioned throughput parameters for an existing global secondary index.
///
/// *   An existing global secondary index to be removed from an existing table.
abstract class GlobalSecondaryIndexUpdate
    with _i1.AWSEquatable<GlobalSecondaryIndexUpdate>
    implements
        Built<GlobalSecondaryIndexUpdate, GlobalSecondaryIndexUpdateBuilder> {
  /// Represents one of the following:
  ///
  /// *   A new global secondary index to be added to an existing table.
  ///
  /// *   New provisioned throughput parameters for an existing global secondary index.
  ///
  /// *   An existing global secondary index to be removed from an existing table.
  factory GlobalSecondaryIndexUpdate({
    _i2.UpdateGlobalSecondaryIndexAction? update_,
    _i3.CreateGlobalSecondaryIndexAction? create,
    _i4.DeleteGlobalSecondaryIndexAction? delete,
  }) {
    return _$GlobalSecondaryIndexUpdate._(
      update_: update_,
      create: create,
      delete: delete,
    );
  }

  /// Represents one of the following:
  ///
  /// *   A new global secondary index to be added to an existing table.
  ///
  /// *   New provisioned throughput parameters for an existing global secondary index.
  ///
  /// *   An existing global secondary index to be removed from an existing table.
  factory GlobalSecondaryIndexUpdate.build(
          [void Function(GlobalSecondaryIndexUpdateBuilder) updates]) =
      _$GlobalSecondaryIndexUpdate;

  const GlobalSecondaryIndexUpdate._();

  static const List<_i5.SmithySerializer<GlobalSecondaryIndexUpdate>>
      serializers = [GlobalSecondaryIndexUpdateAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GlobalSecondaryIndexUpdateBuilder b) {}

  /// The name of an existing global secondary index, along with new provisioned throughput settings to be applied to that index.
  _i2.UpdateGlobalSecondaryIndexAction? get update_;

  /// The parameters required for creating a global secondary index on an existing table:
  ///
  /// *   `IndexName`
  ///
  /// *   `KeySchema`
  ///
  /// *   `AttributeDefinitions`
  ///
  /// *   `Projection`
  ///
  /// *   `ProvisionedThroughput`
  _i3.CreateGlobalSecondaryIndexAction? get create;

  /// The name of an existing global secondary index to be removed.
  _i4.DeleteGlobalSecondaryIndexAction? get delete;
  @override
  List<Object?> get props => [
        update_,
        create,
        delete,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GlobalSecondaryIndexUpdate')
      ..add(
        'update_',
        update_,
      )
      ..add(
        'create',
        create,
      )
      ..add(
        'delete',
        delete,
      );
    return helper.toString();
  }
}

class GlobalSecondaryIndexUpdateAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<GlobalSecondaryIndexUpdate> {
  const GlobalSecondaryIndexUpdateAwsJson10Serializer()
      : super('GlobalSecondaryIndexUpdate');

  @override
  Iterable<Type> get types => const [
        GlobalSecondaryIndexUpdate,
        _$GlobalSecondaryIndexUpdate,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GlobalSecondaryIndexUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlobalSecondaryIndexUpdateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Update':
          result.update_.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.UpdateGlobalSecondaryIndexAction),
          ) as _i2.UpdateGlobalSecondaryIndexAction));
        case 'Create':
          result.create.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.CreateGlobalSecondaryIndexAction),
          ) as _i3.CreateGlobalSecondaryIndexAction));
        case 'Delete':
          result.delete.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.DeleteGlobalSecondaryIndexAction),
          ) as _i4.DeleteGlobalSecondaryIndexAction));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GlobalSecondaryIndexUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GlobalSecondaryIndexUpdate(:update_, :create, :delete) = object;
    if (update_ != null) {
      result$
        ..add('Update')
        ..add(serializers.serialize(
          update_,
          specifiedType: const FullType(_i2.UpdateGlobalSecondaryIndexAction),
        ));
    }
    if (create != null) {
      result$
        ..add('Create')
        ..add(serializers.serialize(
          create,
          specifiedType: const FullType(_i3.CreateGlobalSecondaryIndexAction),
        ));
    }
    if (delete != null) {
      result$
        ..add('Delete')
        ..add(serializers.serialize(
          delete,
          specifiedType: const FullType(_i4.DeleteGlobalSecondaryIndexAction),
        ));
    }
    return result$;
  }
}
