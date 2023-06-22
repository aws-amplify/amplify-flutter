// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.concurrent_modification_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'concurrent_modification_exception.g.dart';

/// The request was rejected because multiple requests to change this object were submitted simultaneously. Wait a few minutes and submit your request again.
abstract class ConcurrentModificationException
    with
        _i1.AWSEquatable<ConcurrentModificationException>
    implements
        Built<ConcurrentModificationException,
            ConcurrentModificationExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because multiple requests to change this object were submitted simultaneously. Wait a few minutes and submit your request again.
  factory ConcurrentModificationException({String? message}) {
    return _$ConcurrentModificationException._(message: message);
  }

  /// The request was rejected because multiple requests to change this object were submitted simultaneously. Wait a few minutes and submit your request again.
  factory ConcurrentModificationException.build(
          [void Function(ConcurrentModificationExceptionBuilder) updates]) =
      _$ConcurrentModificationException;

  const ConcurrentModificationException._();

  /// Constructs a [ConcurrentModificationException] from a [payload] and [response].
  factory ConcurrentModificationException.fromResponse(
    ConcurrentModificationException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<ConcurrentModificationException>>
      serializers = [ConcurrentModificationExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConcurrentModificationExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'ConcurrentModificationException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 409;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConcurrentModificationException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class ConcurrentModificationExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ConcurrentModificationException> {
  const ConcurrentModificationExceptionAwsQuerySerializer()
      : super('ConcurrentModificationException');

  @override
  Iterable<Type> get types => const [
        ConcurrentModificationException,
        _$ConcurrentModificationException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ConcurrentModificationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConcurrentModificationExceptionBuilder();
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
    ConcurrentModificationException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ConcurrentModificationExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ConcurrentModificationException(:message) = object;
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
