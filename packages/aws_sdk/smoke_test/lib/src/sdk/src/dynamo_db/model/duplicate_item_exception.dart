// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.duplicate_item_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'duplicate_item_exception.g.dart';

/// There was an attempt to insert an item with the same primary key as an item that already exists in the DynamoDB table.
abstract class DuplicateItemException
    with _i1.AWSEquatable<DuplicateItemException>
    implements
        Built<DuplicateItemException, DuplicateItemExceptionBuilder>,
        _i2.SmithyHttpException {
  /// There was an attempt to insert an item with the same primary key as an item that already exists in the DynamoDB table.
  factory DuplicateItemException({String? message}) {
    return _$DuplicateItemException._(message: message);
  }

  /// There was an attempt to insert an item with the same primary key as an item that already exists in the DynamoDB table.
  factory DuplicateItemException.build(
          [void Function(DuplicateItemExceptionBuilder) updates]) =
      _$DuplicateItemException;

  const DuplicateItemException._();

  /// Constructs a [DuplicateItemException] from a [payload] and [response].
  factory DuplicateItemException.fromResponse(
    DuplicateItemException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<DuplicateItemException>> serializers =
      [DuplicateItemExceptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DuplicateItemExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'DuplicateItemException',
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
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DuplicateItemException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class DuplicateItemExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<DuplicateItemException> {
  const DuplicateItemExceptionAwsJson10Serializer()
      : super('DuplicateItemException');

  @override
  Iterable<Type> get types => const [
        DuplicateItemException,
        _$DuplicateItemException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DuplicateItemException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DuplicateItemExceptionBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DuplicateItemException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DuplicateItemException(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
