// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.item_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;

part 'item_response.g.dart';

/// Details for the requested item.
abstract class ItemResponse
    with _i1.AWSEquatable<ItemResponse>
    implements Built<ItemResponse, ItemResponseBuilder> {
  /// Details for the requested item.
  factory ItemResponse({Map<String, _i2.AttributeValue>? item}) {
    return _$ItemResponse._(item: item == null ? null : _i3.BuiltMap(item));
  }

  /// Details for the requested item.
  factory ItemResponse.build([void Function(ItemResponseBuilder) updates]) =
      _$ItemResponse;

  const ItemResponse._();

  static const List<_i4.SmithySerializer> serializers = [
    ItemResponseAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ItemResponseBuilder b) {}

  /// Map of attribute data consisting of the data type and attribute value.
  _i3.BuiltMap<String, _i2.AttributeValue>? get item;
  @override
  List<Object?> get props => [item];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ItemResponse');
    helper.add(
      'item',
      item,
    );
    return helper.toString();
  }
}

class ItemResponseAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ItemResponse> {
  const ItemResponseAwsJson10Serializer() : super('ItemResponse');

  @override
  Iterable<Type> get types => const [
        ItemResponse,
        _$ItemResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ItemResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Item':
          if (value != null) {
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
    final payload = (object as ItemResponse);
    final result = <Object?>[];
    if (payload.item != null) {
      result
        ..add('Item')
        ..add(serializers.serialize(
          payload.item!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeValue),
            ],
          ),
        ));
    }
    return result;
  }
}
