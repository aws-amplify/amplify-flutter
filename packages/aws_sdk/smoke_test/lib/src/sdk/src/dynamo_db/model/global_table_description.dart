// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.global_table_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_description.dart'
    as _i3;

part 'global_table_description.g.dart';

/// Contains details about the global table.
abstract class GlobalTableDescription
    with _i1.AWSEquatable<GlobalTableDescription>
    implements Built<GlobalTableDescription, GlobalTableDescriptionBuilder> {
  /// Contains details about the global table.
  factory GlobalTableDescription({
    DateTime? creationDateTime,
    String? globalTableArn,
    String? globalTableName,
    _i2.GlobalTableStatus? globalTableStatus,
    List<_i3.ReplicaDescription>? replicationGroup,
  }) {
    return _$GlobalTableDescription._(
      creationDateTime: creationDateTime,
      globalTableArn: globalTableArn,
      globalTableName: globalTableName,
      globalTableStatus: globalTableStatus,
      replicationGroup:
          replicationGroup == null ? null : _i4.BuiltList(replicationGroup),
    );
  }

  /// Contains details about the global table.
  factory GlobalTableDescription.build(
          [void Function(GlobalTableDescriptionBuilder) updates]) =
      _$GlobalTableDescription;

  const GlobalTableDescription._();

  static const List<_i5.SmithySerializer> serializers = [
    GlobalTableDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GlobalTableDescriptionBuilder b) {}

  /// The creation time of the global table.
  DateTime? get creationDateTime;

  /// The unique identifier of the global table.
  String? get globalTableArn;

  /// The global table name.
  String? get globalTableName;

  /// The current state of the global table:
  ///
  /// *   `CREATING` \- The global table is being created.
  ///
  /// *   `UPDATING` \- The global table is being updated.
  ///
  /// *   `DELETING` \- The global table is being deleted.
  ///
  /// *   `ACTIVE` \- The global table is ready for use.
  _i2.GlobalTableStatus? get globalTableStatus;

  /// The Regions where the global table has replicas.
  _i4.BuiltList<_i3.ReplicaDescription>? get replicationGroup;
  @override
  List<Object?> get props => [
        creationDateTime,
        globalTableArn,
        globalTableName,
        globalTableStatus,
        replicationGroup,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GlobalTableDescription');
    helper.add(
      'creationDateTime',
      creationDateTime,
    );
    helper.add(
      'globalTableArn',
      globalTableArn,
    );
    helper.add(
      'globalTableName',
      globalTableName,
    );
    helper.add(
      'globalTableStatus',
      globalTableStatus,
    );
    helper.add(
      'replicationGroup',
      replicationGroup,
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
      switch (key) {
        case 'CreationDateTime':
          if (value != null) {
            result.creationDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'GlobalTableArn':
          if (value != null) {
            result.globalTableArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'GlobalTableName':
          if (value != null) {
            result.globalTableName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'GlobalTableStatus':
          if (value != null) {
            result.globalTableStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.GlobalTableStatus),
            ) as _i2.GlobalTableStatus);
          }
          break;
        case 'ReplicationGroup':
          if (value != null) {
            result.replicationGroup.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.ReplicaDescription)],
              ),
            ) as _i4.BuiltList<_i3.ReplicaDescription>));
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
    final payload = (object as GlobalTableDescription);
    final result = <Object?>[];
    if (payload.creationDateTime != null) {
      result
        ..add('CreationDateTime')
        ..add(serializers.serialize(
          payload.creationDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.globalTableArn != null) {
      result
        ..add('GlobalTableArn')
        ..add(serializers.serialize(
          payload.globalTableArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.globalTableName != null) {
      result
        ..add('GlobalTableName')
        ..add(serializers.serialize(
          payload.globalTableName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.globalTableStatus != null) {
      result
        ..add('GlobalTableStatus')
        ..add(serializers.serialize(
          payload.globalTableStatus!,
          specifiedType: const FullType(_i2.GlobalTableStatus),
        ));
    }
    if (payload.replicationGroup != null) {
      result
        ..add('ReplicationGroup')
        ..add(serializers.serialize(
          payload.replicationGroup!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.ReplicaDescription)],
          ),
        ));
    }
    return result;
  }
}
