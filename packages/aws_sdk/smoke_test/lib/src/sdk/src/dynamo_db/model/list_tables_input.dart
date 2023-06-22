// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.list_tables_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_tables_input.g.dart';

/// Represents the input of a `ListTables` operation.
abstract class ListTablesInput
    with _i1.HttpInput<ListTablesInput>, _i2.AWSEquatable<ListTablesInput>
    implements Built<ListTablesInput, ListTablesInputBuilder> {
  /// Represents the input of a `ListTables` operation.
  factory ListTablesInput({
    String? exclusiveStartTableName,
    int? limit,
  }) {
    return _$ListTablesInput._(
      exclusiveStartTableName: exclusiveStartTableName,
      limit: limit,
    );
  }

  /// Represents the input of a `ListTables` operation.
  factory ListTablesInput.build(
      [void Function(ListTablesInputBuilder) updates]) = _$ListTablesInput;

  const ListTablesInput._();

  factory ListTablesInput.fromRequest(
    ListTablesInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListTablesInput>> serializers = [
    ListTablesInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTablesInputBuilder b) {}

  /// The first table name that this operation will evaluate. Use the value that was returned for `LastEvaluatedTableName` in a previous operation, so that you can obtain the next page of results.
  String? get exclusiveStartTableName;

  /// A maximum number of table names to return. If this parameter is not specified, the limit is 100.
  int? get limit;
  @override
  ListTablesInput getPayload() => this;
  @override
  List<Object?> get props => [
        exclusiveStartTableName,
        limit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTablesInput')
      ..add(
        'exclusiveStartTableName',
        exclusiveStartTableName,
      )
      ..add(
        'limit',
        limit,
      );
    return helper.toString();
  }
}

class ListTablesInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ListTablesInput> {
  const ListTablesInputAwsJson10Serializer() : super('ListTablesInput');

  @override
  Iterable<Type> get types => const [
        ListTablesInput,
        _$ListTablesInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListTablesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTablesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ExclusiveStartTableName':
          result.exclusiveStartTableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListTablesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListTablesInput(:exclusiveStartTableName, :limit) = object;
    if (exclusiveStartTableName != null) {
      result$
        ..add('ExclusiveStartTableName')
        ..add(serializers.serialize(
          exclusiveStartTableName,
          specifiedType: const FullType(String),
        ));
    }
    if (limit != null) {
      result$
        ..add('Limit')
        ..add(serializers.serialize(
          limit,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
