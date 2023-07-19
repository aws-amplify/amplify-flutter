// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.not_found_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'not_found_exception.g.dart';

/// Provides information about an API request or response.
abstract class NotFoundException
    with _i1.AWSEquatable<NotFoundException>
    implements
        Built<NotFoundException, NotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Provides information about an API request or response.
  factory NotFoundException({
    String? message,
    String? requestId,
  }) {
    return _$NotFoundException._(
      message: message,
      requestId: requestId,
    );
  }

  /// Provides information about an API request or response.
  factory NotFoundException.build(
      [void Function(NotFoundExceptionBuilder) updates]) = _$NotFoundException;

  const NotFoundException._();

  /// Constructs a [NotFoundException] from a [payload] and [response].
  factory NotFoundException.fromResponse(
    NotFoundException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<NotFoundException>> serializers = [
    NotFoundExceptionRestJson1Serializer()
  ];

  /// The message that's returned from the API.
  @override
  String? get message;

  /// The unique identifier for the request or response.
  String? get requestId;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.pinpoint',
        shape: 'NotFoundException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 404;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [
        message,
        requestId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NotFoundException')
      ..add(
        'message',
        message,
      )
      ..add(
        'requestId',
        requestId,
      );
    return helper.toString();
  }
}

class NotFoundExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<NotFoundException> {
  const NotFoundExceptionRestJson1Serializer() : super('NotFoundException');

  @override
  Iterable<Type> get types => const [
        NotFoundException,
        _$NotFoundException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  NotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotFoundExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RequestID':
          result.requestId = (serializers.deserialize(
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
    NotFoundException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final NotFoundException(:message, :requestId) = object;
    if (message != null) {
      result$
        ..add('Message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    if (requestId != null) {
      result$
        ..add('RequestID')
        ..add(serializers.serialize(
          requestId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
