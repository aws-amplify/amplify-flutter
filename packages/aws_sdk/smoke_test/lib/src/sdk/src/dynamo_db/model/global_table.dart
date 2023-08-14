// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.global_table; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica.dart';

part 'global_table.g.dart';

/// Represents the properties of a global table.
abstract class GlobalTable
    with _i1.AWSEquatable<GlobalTable>
    implements Built<GlobalTable, GlobalTableBuilder> {
  /// Represents the properties of a global table.
  factory GlobalTable({
    String? globalTableName,
    List<Replica>? replicationGroup,
  }) {
    return _$GlobalTable._(
      globalTableName: globalTableName,
      replicationGroup:
          replicationGroup == null ? null : _i2.BuiltList(replicationGroup),
    );
  }

  /// Represents the properties of a global table.
  factory GlobalTable.build([void Function(GlobalTableBuilder) updates]) =
      _$GlobalTable;

  const GlobalTable._();

  static const List<_i3.SmithySerializer<GlobalTable>> serializers = [
    GlobalTableAwsJson10Serializer()
  ];

  /// The global table name.
  String? get globalTableName;

  /// The Regions where the global table has replicas.
  _i2.BuiltList<Replica>? get replicationGroup;
  @override
  List<Object?> get props => [
        globalTableName,
        replicationGroup,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GlobalTable')
      ..add(
        'globalTableName',
        globalTableName,
      )
      ..add(
        'replicationGroup',
        replicationGroup,
      );
    return helper.toString();
  }
}

class GlobalTableAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<GlobalTable> {
  const GlobalTableAwsJson10Serializer() : super('GlobalTable');

  @override
  Iterable<Type> get types => const [
        GlobalTable,
        _$GlobalTable,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GlobalTable deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlobalTableBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GlobalTableName':
          result.globalTableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ReplicationGroup':
          result.replicationGroup.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Replica)],
            ),
          ) as _i2.BuiltList<Replica>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GlobalTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GlobalTable(:globalTableName, :replicationGroup) = object;
    if (globalTableName != null) {
      result$
        ..add('GlobalTableName')
        ..add(serializers.serialize(
          globalTableName,
          specifiedType: const FullType(String),
        ));
    }
    if (replicationGroup != null) {
      result$
        ..add('ReplicationGroup')
        ..add(serializers.serialize(
          replicationGroup,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Replica)],
          ),
        ));
    }
    return result$;
  }
}
