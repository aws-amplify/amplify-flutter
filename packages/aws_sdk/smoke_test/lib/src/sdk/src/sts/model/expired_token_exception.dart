// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.expired_token_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'expired_token_exception.g.dart';

/// The web identity token that was passed is expired or is not valid. Get a new identity token from the identity provider and then retry the request.
abstract class ExpiredTokenException
    with _i1.AWSEquatable<ExpiredTokenException>
    implements
        Built<ExpiredTokenException, ExpiredTokenExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The web identity token that was passed is expired or is not valid. Get a new identity token from the identity provider and then retry the request.
  factory ExpiredTokenException({String? message}) {
    return _$ExpiredTokenException._(message: message);
  }

  /// The web identity token that was passed is expired or is not valid. Get a new identity token from the identity provider and then retry the request.
  factory ExpiredTokenException.build(
          [void Function(ExpiredTokenExceptionBuilder) updates]) =
      _$ExpiredTokenException;

  const ExpiredTokenException._();

  /// Constructs a [ExpiredTokenException] from a [payload] and [response].
  factory ExpiredTokenException.fromResponse(
    ExpiredTokenException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<ExpiredTokenException>> serializers = [
    ExpiredTokenExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExpiredTokenExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.sts',
        shape: 'ExpiredTokenException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExpiredTokenException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class ExpiredTokenExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ExpiredTokenException> {
  const ExpiredTokenExceptionAwsQuerySerializer()
      : super('ExpiredTokenException');

  @override
  Iterable<Type> get types => const [
        ExpiredTokenException,
        _$ExpiredTokenException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ExpiredTokenException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExpiredTokenExceptionBuilder();
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
    ExpiredTokenException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ExpiredTokenExceptionResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final ExpiredTokenException(:message) = object;
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
