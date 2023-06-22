// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.global_table_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_description.dart'
    as _i2;

part 'global_table_description.g.dart';

/// Contains details about the global table.
abstract class GlobalTableDescription
    with _i1.AWSEquatable<GlobalTableDescription>
    implements Built<GlobalTableDescription, GlobalTableDescriptionBuilder> {
  /// Contains details about the global table.
  factory GlobalTableDescription({
    List<_i2.ReplicaDescription>? replicationGroup,
    String? globalTableArn,
    DateTime? creationDateTime,
    _i3.GlobalTableStatus? globalTableStatus,
    String? globalTableName,
  }) {
    return _$GlobalTableDescription._(
      replicationGroup:
          replicationGroup == null ? null : _i4.BuiltList(replicationGroup),
      globalTableArn: globalTableArn,
      creationDateTime: creationDateTime,
      globalTableStatus: globalTableStatus,
      globalTableName: globalTableName,
    );
  }

  /// Contains details about the global table.
  factory GlobalTableDescription.build(
          [void Function(GlobalTableDescriptionBuilder) updates]) =
      _$GlobalTableDescription;

  const GlobalTableDescription._();

  static const List<_i5.SmithySerializer<GlobalTableDescription>> serializers =
      [GlobalTableDescriptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GlobalTableDescriptionBuilder b) {}

  /// The Regions where the global table has replicas.
  _i4.BuiltList<_i2.ReplicaDescription>? get replicationGroup;

  /// The unique identifier of the global table.
  String? get globalTableArn;

  /// The creation time of the global table.
  DateTime? get creationDateTime;

  /// The current state of the global table:
  ///
  /// *   `CREATING` \- The global table is being created.
  ///
  /// *   `UPDATING` \- The global table is being updated.
  ///
  /// *   `DELETING` \- The global table is being deleted.
  ///
  /// *   `ACTIVE` \- The global table is ready for use.
  _i3.GlobalTableStatus? get globalTableStatus;

  /// The global table name.
  String? get globalTableName;
  @override
  List<Object?> get props => [
        replicationGroup,
        globalTableArn,
        creationDateTime,
        globalTableStatus,
        globalTableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GlobalTableDescription')
      ..add(
        'replicationGroup',
        replicationGroup,
      )
      ..add(
        'globalTableArn',
        globalTableArn,
      )
      ..add(
        'creationDateTime',
        creationDateTime,
      )
      ..add(
        'globalTableStatus',
        globalTableStatus,
      )
      ..add(
        'globalTableName',
        globalTableName,
      );
    return helper.toString();
  }
}

class GlobalTableDescriptionAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<GlobalTableDescription> {
  const GlobalTableDescriptionAwsJson10Serializer()
      : super('GlobalTableDescription');

  @override
  Iterable<Type> get types => const [
        GlobalTableDescription,
        _$GlobalTableDescription,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GlobalTableDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlobalTableDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ReplicationGroup':
          result.replicationGroup.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.ReplicaDescription)],
            ),
          ) as _i4.BuiltList<_i2.ReplicaDescription>));
        case 'GlobalTableArn':
          result.globalTableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CreationDateTime':
          result.creationDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'GlobalTableStatus':
          result.globalTableStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.GlobalTableStatus),
          ) as _i3.GlobalTableStatus);
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
    GlobalTableDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GlobalTableDescription(
      :replicationGroup,
      :globalTableArn,
      :creationDateTime,
      :globalTableStatus,
      :globalTableName
    ) = object;
    if (replicationGroup != null) {
      result$
        ..add('ReplicationGroup')
        ..add(serializers.serialize(
          replicationGroup,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.ReplicaDescription)],
          ),
        ));
    }
    if (globalTableArn != null) {
      result$
        ..add('GlobalTableArn')
        ..add(serializers.serialize(
          globalTableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (creationDateTime != null) {
      result$
        ..add('CreationDateTime')
        ..add(serializers.serialize(
          creationDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (globalTableStatus != null) {
      result$
        ..add('GlobalTableStatus')
        ..add(serializers.serialize(
          globalTableStatus,
          specifiedType: const FullType(_i3.GlobalTableStatus),
        ));
    }
    if (globalTableName != null) {
      result$
        ..add('GlobalTableName')
        ..add(serializers.serialize(
          globalTableName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
