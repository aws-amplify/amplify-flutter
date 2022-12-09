// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.list_streams_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_streams_input.g.dart';

/// Represents the input of a `ListStreams` operation.
abstract class ListStreamsInput
    with _i1.HttpInput<ListStreamsInput>, _i2.AWSEquatable<ListStreamsInput>
    implements Built<ListStreamsInput, ListStreamsInputBuilder> {
  /// Represents the input of a `ListStreams` operation.
  factory ListStreamsInput({
    String? exclusiveStartStreamArn,
    int? limit,
    String? tableName,
  }) {
    return _$ListStreamsInput._(
      exclusiveStartStreamArn: exclusiveStartStreamArn,
      limit: limit,
      tableName: tableName,
    );
  }

  /// Represents the input of a `ListStreams` operation.
  factory ListStreamsInput.build(
      [void Function(ListStreamsInputBuilder) updates]) = _$ListStreamsInput;

  const ListStreamsInput._();

  factory ListStreamsInput.fromRequest(
    ListStreamsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListStreamsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListStreamsInputBuilder b) {}

  /// The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the value that was returned for `LastEvaluatedStreamArn` in the previous operation.
  String? get exclusiveStartStreamArn;

  /// The maximum number of streams to return. The upper limit is 100.
  int? get limit;

  /// If this parameter is provided, then only the streams associated with this table name are returned.
  String? get tableName;
  @override
  ListStreamsInput getPayload() => this;
  @override
  List<Object?> get props => [
        exclusiveStartStreamArn,
        limit,
        tableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListStreamsInput');
    helper.add(
      'exclusiveStartStreamArn',
      exclusiveStartStreamArn,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'tableName',
      tableName,
    );
    return helper.toString();
  }
}

class ListStreamsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ListStreamsInput> {
  const ListStreamsInputAwsJson10Serializer() : super('ListStreamsInput');

  @override
  Iterable<Type> get types => const [
        ListStreamsInput,
        _$ListStreamsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListStreamsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStreamsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ExclusiveStartStreamArn':
          if (value != null) {
            result.exclusiveStartStreamArn = (serializers.deserialize(
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
        case 'TableName':
          if (value != null) {
            result.tableName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ListStreamsInput);
    final result = <Object?>[];
    if (payload.exclusiveStartStreamArn != null) {
      result
        ..add('ExclusiveStartStreamArn')
        ..add(serializers.serialize(
          payload.exclusiveStartStreamArn!,
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
    if (payload.tableName != null) {
      result
        ..add('TableName')
        ..add(serializers.serialize(
          payload.tableName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
