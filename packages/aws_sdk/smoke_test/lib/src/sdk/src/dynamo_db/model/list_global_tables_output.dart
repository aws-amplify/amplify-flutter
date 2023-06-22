// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.list_global_tables_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table.dart'
    as _i2;

part 'list_global_tables_output.g.dart';

abstract class ListGlobalTablesOutput
    with _i1.AWSEquatable<ListGlobalTablesOutput>
    implements Built<ListGlobalTablesOutput, ListGlobalTablesOutputBuilder> {
  factory ListGlobalTablesOutput({
    List<_i2.GlobalTable>? globalTables,
    String? lastEvaluatedGlobalTableName,
  }) {
    return _$ListGlobalTablesOutput._(
      globalTables: globalTables == null ? null : _i3.BuiltList(globalTables),
      lastEvaluatedGlobalTableName: lastEvaluatedGlobalTableName,
    );
  }

  factory ListGlobalTablesOutput.build(
          [void Function(ListGlobalTablesOutputBuilder) updates]) =
      _$ListGlobalTablesOutput;

  const ListGlobalTablesOutput._();

  /// Constructs a [ListGlobalTablesOutput] from a [payload] and [response].
  factory ListGlobalTablesOutput.fromResponse(
    ListGlobalTablesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListGlobalTablesOutput>> serializers =
      [ListGlobalTablesOutputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListGlobalTablesOutputBuilder b) {}

  /// List of global table names.
  _i3.BuiltList<_i2.GlobalTable>? get globalTables;

  /// Last evaluated global table name.
  String? get lastEvaluatedGlobalTableName;
  @override
  List<Object?> get props => [
        globalTables,
        lastEvaluatedGlobalTableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListGlobalTablesOutput')
      ..add(
        'globalTables',
        globalTables,
      )
      ..add(
        'lastEvaluatedGlobalTableName',
        lastEvaluatedGlobalTableName,
      );
    return helper.toString();
  }
}

class ListGlobalTablesOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ListGlobalTablesOutput> {
  const ListGlobalTablesOutputAwsJson10Serializer()
      : super('ListGlobalTablesOutput');

  @override
  Iterable<Type> get types => const [
        ListGlobalTablesOutput,
        _$ListGlobalTablesOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListGlobalTablesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListGlobalTablesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GlobalTables':
          result.globalTables.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.GlobalTable)],
            ),
          ) as _i3.BuiltList<_i2.GlobalTable>));
        case 'LastEvaluatedGlobalTableName':
          result.lastEvaluatedGlobalTableName = (serializers.deserialize(
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
    ListGlobalTablesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListGlobalTablesOutput(:globalTables, :lastEvaluatedGlobalTableName) =
        object;
    if (globalTables != null) {
      result$
        ..add('GlobalTables')
        ..add(serializers.serialize(
          globalTables,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.GlobalTable)],
          ),
        ));
    }
    if (lastEvaluatedGlobalTableName != null) {
      result$
        ..add('LastEvaluatedGlobalTableName')
        ..add(serializers.serialize(
          lastEvaluatedGlobalTableName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
