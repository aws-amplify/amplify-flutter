// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.password_policy_violation_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'password_policy_violation_exception.g.dart';

/// The request was rejected because the provided password did not meet the requirements imposed by the account password policy.
abstract class PasswordPolicyViolationException
    with
        _i1.AWSEquatable<PasswordPolicyViolationException>
    implements
        Built<PasswordPolicyViolationException,
            PasswordPolicyViolationExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because the provided password did not meet the requirements imposed by the account password policy.
  factory PasswordPolicyViolationException({String? message}) {
    return _$PasswordPolicyViolationException._(message: message);
  }

  /// The request was rejected because the provided password did not meet the requirements imposed by the account password policy.
  factory PasswordPolicyViolationException.build(
          [void Function(PasswordPolicyViolationExceptionBuilder) updates]) =
      _$PasswordPolicyViolationException;

  const PasswordPolicyViolationException._();

  /// Constructs a [PasswordPolicyViolationException] from a [payload] and [response].
  factory PasswordPolicyViolationException.fromResponse(
    PasswordPolicyViolationException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<PasswordPolicyViolationException>>
      serializers = [PasswordPolicyViolationExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PasswordPolicyViolationExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'PasswordPolicyViolationException',
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
    final helper =
        newBuiltValueToStringHelper('PasswordPolicyViolationException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class PasswordPolicyViolationExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PasswordPolicyViolationException> {
  const PasswordPolicyViolationExceptionAwsQuerySerializer()
      : super('PasswordPolicyViolationException');

  @override
  Iterable<Type> get types => const [
        PasswordPolicyViolationException,
        _$PasswordPolicyViolationException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PasswordPolicyViolationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PasswordPolicyViolationExceptionBuilder();
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
    PasswordPolicyViolationException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PasswordPolicyViolationExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final PasswordPolicyViolationException(:message) = object;
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
