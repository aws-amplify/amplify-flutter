// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.table_auto_scaling_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_auto_scaling_description.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_status.dart'
    as _i2;

part 'table_auto_scaling_description.g.dart';

/// Represents the auto scaling configuration for a global table.
abstract class TableAutoScalingDescription
    with _i1.AWSEquatable<TableAutoScalingDescription>
    implements
        Built<TableAutoScalingDescription, TableAutoScalingDescriptionBuilder> {
  /// Represents the auto scaling configuration for a global table.
  factory TableAutoScalingDescription({
    String? tableName,
    _i2.TableStatus? tableStatus,
    List<_i3.ReplicaAutoScalingDescription>? replicas,
  }) {
    return _$TableAutoScalingDescription._(
      tableName: tableName,
      tableStatus: tableStatus,
      replicas: replicas == null ? null : _i4.BuiltList(replicas),
    );
  }

  /// Represents the auto scaling configuration for a global table.
  factory TableAutoScalingDescription.build(
          [void Function(TableAutoScalingDescriptionBuilder) updates]) =
      _$TableAutoScalingDescription;

  const TableAutoScalingDescription._();

  static const List<_i5.SmithySerializer<TableAutoScalingDescription>>
      serializers = [TableAutoScalingDescriptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TableAutoScalingDescriptionBuilder b) {}

  /// The name of the table.
  String? get tableName;

  /// The current state of the table:
  ///
  /// *   `CREATING` \- The table is being created.
  ///
  /// *   `UPDATING` \- The table is being updated.
  ///
  /// *   `DELETING` \- The table is being deleted.
  ///
  /// *   `ACTIVE` \- The table is ready for use.
  _i2.TableStatus? get tableStatus;

  /// Represents replicas of the global table.
  _i4.BuiltList<_i3.ReplicaAutoScalingDescription>? get replicas;
  @override
  List<Object?> get props => [
        tableName,
        tableStatus,
        replicas,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TableAutoScalingDescription')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'tableStatus',
        tableStatus,
      )
      ..add(
        'replicas',
        replicas,
      );
    return helper.toString();
  }
}

class TableAutoScalingDescriptionAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<TableAutoScalingDescription> {
  const TableAutoScalingDescriptionAwsJson10Serializer()
      : super('TableAutoScalingDescription');

  @override
  Iterable<Type> get types => const [
        TableAutoScalingDescription,
        _$TableAutoScalingDescription,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TableAutoScalingDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TableAutoScalingDescriptionBuilder();
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
        case 'TableStatus':
          result.tableStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.TableStatus),
          ) as _i2.TableStatus);
        case 'Replicas':
          result.replicas.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.ReplicaAutoScalingDescription)],
            ),
          ) as _i4.BuiltList<_i3.ReplicaAutoScalingDescription>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TableAutoScalingDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TableAutoScalingDescription(:tableName, :tableStatus, :replicas) =
        object;
    if (tableName != null) {
      result$
        ..add('TableName')
        ..add(serializers.serialize(
          tableName,
          specifiedType: const FullType(String),
        ));
    }
    if (tableStatus != null) {
      result$
        ..add('TableStatus')
        ..add(serializers.serialize(
          tableStatus,
          specifiedType: const FullType(_i2.TableStatus),
        ));
    }
    if (replicas != null) {
      result$
        ..add('Replicas')
        ..add(serializers.serialize(
          replicas,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.ReplicaAutoScalingDescription)],
          ),
        ));
    }
    return result$;
  }
}
