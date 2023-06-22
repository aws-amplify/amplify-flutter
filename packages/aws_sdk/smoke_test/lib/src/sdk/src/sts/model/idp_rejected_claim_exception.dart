// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.idp_rejected_claim_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'idp_rejected_claim_exception.g.dart';

/// The identity provider (IdP) reported that authentication failed. This might be because the claim is invalid.
///
/// If this error is returned for the `AssumeRoleWithWebIdentity` operation, it can also mean that the claim has expired or has been explicitly revoked.
abstract class IdpRejectedClaimException
    with _i1.AWSEquatable<IdpRejectedClaimException>
    implements
        Built<IdpRejectedClaimException, IdpRejectedClaimExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The identity provider (IdP) reported that authentication failed. This might be because the claim is invalid.
  ///
  /// If this error is returned for the `AssumeRoleWithWebIdentity` operation, it can also mean that the claim has expired or has been explicitly revoked.
  factory IdpRejectedClaimException({String? message}) {
    return _$IdpRejectedClaimException._(message: message);
  }

  /// The identity provider (IdP) reported that authentication failed. This might be because the claim is invalid.
  ///
  /// If this error is returned for the `AssumeRoleWithWebIdentity` operation, it can also mean that the claim has expired or has been explicitly revoked.
  factory IdpRejectedClaimException.build(
          [void Function(IdpRejectedClaimExceptionBuilder) updates]) =
      _$IdpRejectedClaimException;

  const IdpRejectedClaimException._();

  /// Constructs a [IdpRejectedClaimException] from a [payload] and [response].
  factory IdpRejectedClaimException.fromResponse(
    IdpRejectedClaimException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<IdpRejectedClaimException>>
      serializers = [IdpRejectedClaimExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IdpRejectedClaimExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.sts',
        shape: 'IDPRejectedClaimException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 403;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IdpRejectedClaimException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class IdpRejectedClaimExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<IdpRejectedClaimException> {
  const IdpRejectedClaimExceptionAwsQuerySerializer()
      : super('IdpRejectedClaimException');

  @override
  Iterable<Type> get types => const [
        IdpRejectedClaimException,
        _$IdpRejectedClaimException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  IdpRejectedClaimException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdpRejectedClaimExceptionBuilder();
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
    IdpRejectedClaimException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IdpRejectedClaimExceptionResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final IdpRejectedClaimException(:message) = object;
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
