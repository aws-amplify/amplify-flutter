// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.list_tables_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'list_tables_output.g.dart';

/// Represents the output of a `ListTables` operation.
abstract class ListTablesOutput
    with _i1.AWSEquatable<ListTablesOutput>
    implements Built<ListTablesOutput, ListTablesOutputBuilder> {
  /// Represents the output of a `ListTables` operation.
  factory ListTablesOutput({
    List<String>? tableNames,
    String? lastEvaluatedTableName,
  }) {
    return _$ListTablesOutput._(
      tableNames: tableNames == null ? null : _i2.BuiltList(tableNames),
      lastEvaluatedTableName: lastEvaluatedTableName,
    );
  }

  /// Represents the output of a `ListTables` operation.
  factory ListTablesOutput.build(
      [void Function(ListTablesOutputBuilder) updates]) = _$ListTablesOutput;

  const ListTablesOutput._();

  /// Constructs a [ListTablesOutput] from a [payload] and [response].
  factory ListTablesOutput.fromResponse(
    ListTablesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListTablesOutput>> serializers = [
    ListTablesOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTablesOutputBuilder b) {}

  /// The names of the tables associated with the current account at the current endpoint. The maximum size of this array is 100.
  ///
  /// If `LastEvaluatedTableName` also appears in the output, you can use this value as the `ExclusiveStartTableName` parameter in a subsequent `ListTables` request and obtain the next page of results.
  _i2.BuiltList<String>? get tableNames;

  /// The name of the last table in the current page of results. Use this value as the `ExclusiveStartTableName` in a new request to obtain the next page of results, until all the table names are returned.
  ///
  /// If you do not receive a `LastEvaluatedTableName` value in the response, this means that there are no more table names to be retrieved.
  String? get lastEvaluatedTableName;
  @override
  List<Object?> get props => [
        tableNames,
        lastEvaluatedTableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTablesOutput')
      ..add(
        'tableNames',
        tableNames,
      )
      ..add(
        'lastEvaluatedTableName',
        lastEvaluatedTableName,
      );
    return helper.toString();
  }
}

class ListTablesOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ListTablesOutput> {
  const ListTablesOutputAwsJson10Serializer() : super('ListTablesOutput');

  @override
  Iterable<Type> get types => const [
        ListTablesOutput,
        _$ListTablesOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListTablesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTablesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableNames':
          result.tableNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'LastEvaluatedTableName':
          result.lastEvaluatedTableName = (serializers.deserialize(
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
    ListTablesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListTablesOutput(:tableNames, :lastEvaluatedTableName) = object;
    if (tableNames != null) {
      result$
        ..add('TableNames')
        ..add(serializers.serialize(
          tableNames,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (lastEvaluatedTableName != null) {
      result$
        ..add('LastEvaluatedTableName')
        ..add(serializers.serialize(
          lastEvaluatedTableName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
