// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.list_global_tables_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_global_tables_input.g.dart';

abstract class ListGlobalTablesInput
    with
        _i1.HttpInput<ListGlobalTablesInput>,
        _i2.AWSEquatable<ListGlobalTablesInput>
    implements Built<ListGlobalTablesInput, ListGlobalTablesInputBuilder> {
  factory ListGlobalTablesInput({
    String? exclusiveStartGlobalTableName,
    int? limit,
    String? regionName,
  }) {
    return _$ListGlobalTablesInput._(
      exclusiveStartGlobalTableName: exclusiveStartGlobalTableName,
      limit: limit,
      regionName: regionName,
    );
  }

  factory ListGlobalTablesInput.build(
          [void Function(ListGlobalTablesInputBuilder) updates]) =
      _$ListGlobalTablesInput;

  const ListGlobalTablesInput._();

  factory ListGlobalTablesInput.fromRequest(
    ListGlobalTablesInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListGlobalTablesInput>> serializers = [
    ListGlobalTablesInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListGlobalTablesInputBuilder b) {}

  /// The first global table name that this operation will evaluate.
  String? get exclusiveStartGlobalTableName;

  /// The maximum number of table names to return, if the parameter is not specified DynamoDB defaults to 100.
  ///
  /// If the number of global tables DynamoDB finds reaches this limit, it stops the operation and returns the table names collected up to that point, with a table name in the `LastEvaluatedGlobalTableName` to apply in a subsequent operation to the `ExclusiveStartGlobalTableName` parameter.
  int? get limit;

  /// Lists the global tables in a specific Region.
  String? get regionName;
  @override
  ListGlobalTablesInput getPayload() => this;
  @override
  List<Object?> get props => [
        exclusiveStartGlobalTableName,
        limit,
        regionName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListGlobalTablesInput')
      ..add(
        'exclusiveStartGlobalTableName',
        exclusiveStartGlobalTableName,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'regionName',
        regionName,
      );
    return helper.toString();
  }
}

class ListGlobalTablesInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ListGlobalTablesInput> {
  const ListGlobalTablesInputAwsJson10Serializer()
      : super('ListGlobalTablesInput');

  @override
  Iterable<Type> get types => const [
        ListGlobalTablesInput,
        _$ListGlobalTablesInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListGlobalTablesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListGlobalTablesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ExclusiveStartGlobalTableName':
          result.exclusiveStartGlobalTableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'RegionName':
          result.regionName = (serializers.deserialize(
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
    ListGlobalTablesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListGlobalTablesInput(
      :exclusiveStartGlobalTableName,
      :limit,
      :regionName
    ) = object;
    if (exclusiveStartGlobalTableName != null) {
      result$
        ..add('ExclusiveStartGlobalTableName')
        ..add(serializers.serialize(
          exclusiveStartGlobalTableName,
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
    if (regionName != null) {
      result$
        ..add('RegionName')
        ..add(serializers.serialize(
          regionName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
