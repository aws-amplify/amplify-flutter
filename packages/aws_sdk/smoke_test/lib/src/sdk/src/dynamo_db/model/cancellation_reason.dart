// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.cancellation_reason; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;

part 'cancellation_reason.g.dart';

/// An ordered list of errors for each item in the request which caused the transaction to get cancelled. The values of the list are ordered according to the ordering of the `TransactWriteItems` request parameter. If no error occurred for the associated item an error with a Null code and Null message will be present.
abstract class CancellationReason
    with _i1.AWSEquatable<CancellationReason>
    implements Built<CancellationReason, CancellationReasonBuilder> {
  /// An ordered list of errors for each item in the request which caused the transaction to get cancelled. The values of the list are ordered according to the ordering of the `TransactWriteItems` request parameter. If no error occurred for the associated item an error with a Null code and Null message will be present.
  factory CancellationReason({
    String? code,
    Map<String, _i2.AttributeValue>? item,
    String? message,
  }) {
    return _$CancellationReason._(
      code: code,
      item: item == null ? null : _i3.BuiltMap(item),
      message: message,
    );
  }

  /// An ordered list of errors for each item in the request which caused the transaction to get cancelled. The values of the list are ordered according to the ordering of the `TransactWriteItems` request parameter. If no error occurred for the associated item an error with a Null code and Null message will be present.
  factory CancellationReason.build(
          [void Function(CancellationReasonBuilder) updates]) =
      _$CancellationReason;

  const CancellationReason._();

  static const List<_i4.SmithySerializer> serializers = [
    CancellationReasonAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancellationReasonBuilder b) {}

  /// Status code for the result of the cancelled transaction.
  String? get code;

  /// Item in the request which caused the transaction to get cancelled.
  _i3.BuiltMap<String, _i2.AttributeValue>? get item;

  /// Cancellation reason message description.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        item,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CancellationReason');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'item',
      item,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class CancellationReasonAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<CancellationReason> {
  const CancellationReasonAwsJson10Serializer() : super('CancellationReason');

  @override
  Iterable<Type> get types => const [
        CancellationReason,
        _$CancellationReason,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  CancellationReason deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancellationReasonBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
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
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    final payload = (object as CancellationReason);
    final result = <Object?>[];
    if (payload.code != null) {
      result
        ..add('Code')
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType(String),
        ));
    }
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
    if (payload.message != null) {
      result
        ..add('Message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
