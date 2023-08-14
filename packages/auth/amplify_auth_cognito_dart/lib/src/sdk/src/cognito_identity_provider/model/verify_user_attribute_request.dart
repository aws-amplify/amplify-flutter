// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.verify_user_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'verify_user_attribute_request.g.dart';

/// Represents the request to verify user attributes.
abstract class VerifyUserAttributeRequest
    with
        _i1.HttpInput<VerifyUserAttributeRequest>,
        _i2.AWSEquatable<VerifyUserAttributeRequest>
    implements
        Built<VerifyUserAttributeRequest, VerifyUserAttributeRequestBuilder> {
  /// Represents the request to verify user attributes.
  factory VerifyUserAttributeRequest({
    required String accessToken,
    required String attributeName,
    required String code,
  }) {
    return _$VerifyUserAttributeRequest._(
      accessToken: accessToken,
      attributeName: attributeName,
      code: code,
    );
  }

  /// Represents the request to verify user attributes.
  factory VerifyUserAttributeRequest.build(
          [void Function(VerifyUserAttributeRequestBuilder) updates]) =
      _$VerifyUserAttributeRequest;

  const VerifyUserAttributeRequest._();

  factory VerifyUserAttributeRequest.fromRequest(
    VerifyUserAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<VerifyUserAttributeRequest>>
      serializers = [VerifyUserAttributeRequestAwsJson11Serializer()];

  /// A valid access token that Amazon Cognito issued to the user whose user attributes you want to verify.
  String get accessToken;

  /// The attribute name in the request to verify user attributes.
  String get attributeName;

  /// The verification code in the request to verify user attributes.
  String get code;
  @override
  VerifyUserAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        accessToken,
        attributeName,
        code,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifyUserAttributeRequest')
      ..add(
        'accessToken',
        '***SENSITIVE***',
      )
      ..add(
        'attributeName',
        attributeName,
      )
      ..add(
        'code',
        code,
      );
    return helper.toString();
  }
}

class VerifyUserAttributeRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<VerifyUserAttributeRequest> {
  const VerifyUserAttributeRequestAwsJson11Serializer()
      : super('VerifyUserAttributeRequest');

  @override
  Iterable<Type> get types => const [
        VerifyUserAttributeRequest,
        _$VerifyUserAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  VerifyUserAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyUserAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AttributeName':
          result.attributeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Code':
          result.code = (serializers.deserialize(
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
    VerifyUserAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final VerifyUserAttributeRequest(:accessToken, :attributeName, :code) =
        object;
    result$.addAll([
      'AccessToken',
      serializers.serialize(
        accessToken,
        specifiedType: const FullType(String),
      ),
      'AttributeName',
      serializers.serialize(
        attributeName,
        specifiedType: const FullType(String),
      ),
      'Code',
      serializers.serialize(
        code,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
