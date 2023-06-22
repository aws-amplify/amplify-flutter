// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.delete_table_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_table_input.g.dart';

/// Represents the input of a `DeleteTable` operation.
abstract class DeleteTableInput
    with _i1.HttpInput<DeleteTableInput>, _i2.AWSEquatable<DeleteTableInput>
    implements Built<DeleteTableInput, DeleteTableInputBuilder> {
  /// Represents the input of a `DeleteTable` operation.
  factory DeleteTableInput({required String tableName}) {
    return _$DeleteTableInput._(tableName: tableName);
  }

  /// Represents the input of a `DeleteTable` operation.
  factory DeleteTableInput.build(
      [void Function(DeleteTableInputBuilder) updates]) = _$DeleteTableInput;

  const DeleteTableInput._();

  factory DeleteTableInput.fromRequest(
    DeleteTableInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteTableInput>> serializers = [
    DeleteTableInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTableInputBuilder b) {}

  /// The name of the table to delete.
  String get tableName;
  @override
  DeleteTableInput getPayload() => this;
  @override
  List<Object?> get props => [tableName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteTableInput')
      ..add(
        'tableName',
        tableName,
      );
    return helper.toString();
  }
}

class DeleteTableInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DeleteTableInput> {
  const DeleteTableInputAwsJson10Serializer() : super('DeleteTableInput');

  @override
  Iterable<Type> get types => const [
        DeleteTableInput,
        _$DeleteTableInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DeleteTableInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTableInputBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteTableInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeleteTableInput(:tableName) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
