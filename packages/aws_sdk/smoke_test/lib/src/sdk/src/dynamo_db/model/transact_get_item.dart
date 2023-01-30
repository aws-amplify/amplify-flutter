// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.transact_get_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/get.dart' as _i2;

part 'transact_get_item.g.dart';

/// Specifies an item to be retrieved as part of the transaction.
abstract class TransactGetItem
    with _i1.AWSEquatable<TransactGetItem>
    implements Built<TransactGetItem, TransactGetItemBuilder> {
  /// Specifies an item to be retrieved as part of the transaction.
  factory TransactGetItem({required _i2.Get get}) {
    return _$TransactGetItem._(get: get);
  }

  /// Specifies an item to be retrieved as part of the transaction.
  factory TransactGetItem.build(
      [void Function(TransactGetItemBuilder) updates]) = _$TransactGetItem;

  const TransactGetItem._();

  static const List<_i3.SmithySerializer> serializers = [
    TransactGetItemAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransactGetItemBuilder b) {}

  /// Contains the primary key that identifies the item to get, together with the name of the table that contains the item, and optionally the specific attributes of the item to retrieve.
  _i2.Get get get;
  @override
  List<Object?> get props => [get];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransactGetItem');
    helper.add(
      'get',
      get,
    );
    return helper.toString();
  }
}

class TransactGetItemAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<TransactGetItem> {
  const TransactGetItemAwsJson10Serializer() : super('TransactGetItem');

  @override
  Iterable<Type> get types => const [
        TransactGetItem,
        _$TransactGetItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TransactGetItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactGetItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Get':
          result.get.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Get),
          ) as _i2.Get));
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
    final payload = (object as TransactGetItem);
    final result = <Object?>[
      'Get',
      serializers.serialize(
        payload.get,
        specifiedType: const FullType(_i2.Get),
      ),
    ];
    return result;
  }
}
