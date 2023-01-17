// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.put_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;

part 'put_request.g.dart';

/// Represents a request to perform a `PutItem` operation on an item.
abstract class PutRequest
    with _i1.AWSEquatable<PutRequest>
    implements Built<PutRequest, PutRequestBuilder> {
  /// Represents a request to perform a `PutItem` operation on an item.
  factory PutRequest({required Map<String, _i2.AttributeValue> item}) {
    return _$PutRequest._(item: _i3.BuiltMap(item));
  }

  /// Represents a request to perform a `PutItem` operation on an item.
  factory PutRequest.build([void Function(PutRequestBuilder) updates]) =
      _$PutRequest;

  const PutRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    PutRequestAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutRequestBuilder b) {}

  /// A map of attribute name to attribute values, representing the primary key of an item to be processed by `PutItem`. All of the table's primary key attributes must be specified, and their data types must match those of the table's key schema. If any attributes are present in the item that are part of an index key schema for the table, their types must match the index key schema.
  _i3.BuiltMap<String, _i2.AttributeValue> get item;
  @override
  List<Object?> get props => [item];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutRequest');
    helper.add(
      'item',
      item,
    );
    return helper.toString();
  }
}

class PutRequestAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<PutRequest> {
  const PutRequestAwsJson10Serializer() : super('PutRequest');

  @override
  Iterable<Type> get types => const [
        PutRequest,
        _$PutRequest,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  PutRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Item':
          result.item.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(_i2.AttributeValue),
              ],
            ),
          ) as _i3.BuiltMap<String, _i2.AttributeValue>));
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
    final payload = (object as PutRequest);
    final result = <Object?>[
      'Item',
      serializers.serialize(
        payload.item,
        specifiedType: const FullType(
          _i3.BuiltMap,
          [
            FullType(String),
            FullType(_i2.AttributeValue),
          ],
        ),
      ),
    ];
    return result;
  }
}
