// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity.model.get_credentials_for_identity_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/credentials.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_credentials_for_identity_response.g.dart';

/// Returned in response to a successful `GetCredentialsForIdentity` operation.
abstract class GetCredentialsForIdentityResponse
    with
        _i1.AWSEquatable<GetCredentialsForIdentityResponse>
    implements
        Built<GetCredentialsForIdentityResponse,
            GetCredentialsForIdentityResponseBuilder> {
  /// Returned in response to a successful `GetCredentialsForIdentity` operation.
  factory GetCredentialsForIdentityResponse({
    String? identityId,
    Credentials? credentials,
  }) {
    return _$GetCredentialsForIdentityResponse._(
      identityId: identityId,
      credentials: credentials,
    );
  }

  /// Returned in response to a successful `GetCredentialsForIdentity` operation.
  factory GetCredentialsForIdentityResponse.build(
          [void Function(GetCredentialsForIdentityResponseBuilder) updates]) =
      _$GetCredentialsForIdentityResponse;

  const GetCredentialsForIdentityResponse._();

  /// Constructs a [GetCredentialsForIdentityResponse] from a [payload] and [response].
  factory GetCredentialsForIdentityResponse.fromResponse(
    GetCredentialsForIdentityResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetCredentialsForIdentityResponse>>
      serializers = [GetCredentialsForIdentityResponseAwsJson11Serializer()];

  /// A unique identifier in the format REGION:GUID.
  String? get identityId;

  /// Credentials for the provided identity ID.
  Credentials? get credentials;
  @override
  List<Object?> get props => [
        identityId,
        credentials,
      ];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetCredentialsForIdentityResponse')
          ..add(
            'identityId',
            identityId,
          )
          ..add(
            'credentials',
            credentials,
          );
    return helper.toString();
  }
}

class GetCredentialsForIdentityResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<GetCredentialsForIdentityResponse> {
  const GetCredentialsForIdentityResponseAwsJson11Serializer()
      : super('GetCredentialsForIdentityResponse');

  @override
  Iterable<Type> get types => const [
        GetCredentialsForIdentityResponse,
        _$GetCredentialsForIdentityResponse,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  GetCredentialsForIdentityResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCredentialsForIdentityResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IdentityId':
          result.identityId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Credentials':
          result.credentials.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Credentials),
          ) as Credentials));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetCredentialsForIdentityResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetCredentialsForIdentityResponse(:identityId, :credentials) = object;
    if (identityId != null) {
      result$
        ..add('IdentityId')
        ..add(serializers.serialize(
          identityId,
          specifiedType: const FullType(String),
        ));
    }
    if (credentials != null) {
      result$
        ..add('Credentials')
        ..add(serializers.serialize(
          credentials,
          specifiedType: const FullType(Credentials),
        ));
    }
    return result$;
  }
}
