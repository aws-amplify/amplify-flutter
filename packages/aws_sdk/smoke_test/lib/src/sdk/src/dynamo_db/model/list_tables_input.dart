// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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

  static const List<_i1.SmithySerializer> serializers = [
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
    final helper = newBuiltValueToStringHelper('ListTablesInput');
    helper.add(
      'exclusiveStartTableName',
      exclusiveStartTableName,
    );
    helper.add(
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
      switch (key) {
        case 'ExclusiveStartTableName':
          if (value != null) {
            result.exclusiveStartTableName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as ListTablesInput);
    final result = <Object?>[];
    if (payload.exclusiveStartTableName != null) {
      result
        ..add('ExclusiveStartTableName')
        ..add(serializers.serialize(
          payload.exclusiveStartTableName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
        ));
    }
    return result;
  }
}
