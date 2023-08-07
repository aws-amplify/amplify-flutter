// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.conditional_check_failed_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart';

part 'conditional_check_failed_exception.g.dart';

/// A condition specified in the operation could not be evaluated.
abstract class ConditionalCheckFailedException
    with
        _i1.AWSEquatable<ConditionalCheckFailedException>
    implements
        Built<ConditionalCheckFailedException,
            ConditionalCheckFailedExceptionBuilder>,
        _i2.SmithyHttpException {
  /// A condition specified in the operation could not be evaluated.
  factory ConditionalCheckFailedException({
    String? message,
    Map<String, AttributeValue>? item,
  }) {
    return _$ConditionalCheckFailedException._(
      message: message,
      item: item == null ? null : _i3.BuiltMap(item),
    );
  }

  /// A condition specified in the operation could not be evaluated.
  factory ConditionalCheckFailedException.build(
          [void Function(ConditionalCheckFailedExceptionBuilder) updates]) =
      _$ConditionalCheckFailedException;

  const ConditionalCheckFailedException._();

  /// Constructs a [ConditionalCheckFailedException] from a [payload] and [response].
  factory ConditionalCheckFailedException.fromResponse(
    ConditionalCheckFailedException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<ConditionalCheckFailedException>>
      serializers = [ConditionalCheckFailedExceptionAwsJson10Serializer()];

  /// The conditional request failed.
  @override
  String? get message;

  /// Item which caused the `ConditionalCheckFailedException`.
  _i3.BuiltMap<String, AttributeValue>? get item;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'ConditionalCheckFailedException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [
        message,
        item,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConditionalCheckFailedException')
          ..add(
            'message',
            message,
          )
          ..add(
            'item',
            item,
          );
    return helper.toString();
  }
}

class ConditionalCheckFailedExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<ConditionalCheckFailedException> {
  const ConditionalCheckFailedExceptionAwsJson10Serializer()
      : super('ConditionalCheckFailedException');

  @override
  Iterable<Type> get types => const [
        ConditionalCheckFailedException,
        _$ConditionalCheckFailedException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ConditionalCheckFailedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConditionalCheckFailedExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Item':
          result.item.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(AttributeValue),
              ],
            ),
          ) as _i3.BuiltMap<String, AttributeValue>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConditionalCheckFailedException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConditionalCheckFailedException(:message, :item) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    if (item != null) {
      result$
        ..add('Item')
        ..add(serializers.serialize(
          item,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(AttributeValue),
            ],
          ),
        ));
    }
    return result$;
  }
}
