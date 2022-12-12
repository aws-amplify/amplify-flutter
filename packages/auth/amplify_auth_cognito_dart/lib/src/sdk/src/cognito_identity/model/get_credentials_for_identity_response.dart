// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity.model.get_credentials_for_identity_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/credentials.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

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
    _i2.Credentials? credentials,
    String? identityId,
  }) {
    return _$GetCredentialsForIdentityResponse._(
      credentials: credentials,
      identityId: identityId,
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

  static const List<_i3.SmithySerializer> serializers = [
    GetCredentialsForIdentityResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetCredentialsForIdentityResponseBuilder b) {}

  /// Credentials for the provided identity ID.
  _i2.Credentials? get credentials;

  /// A unique identifier in the format REGION:GUID.
  String? get identityId;
  @override
  List<Object?> get props => [
        credentials,
        identityId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetCredentialsForIdentityResponse');
    helper.add(
      'credentials',
      credentials,
    );
    helper.add(
      'identityId',
      identityId,
    );
    return helper.toString();
  }
}

class GetCredentialsForIdentityResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<GetCredentialsForIdentityResponse> {
  const GetCredentialsForIdentityResponseAwsJson11Serializer()
      : super('GetCredentialsForIdentityResponse');

  @override
  Iterable<Type> get types => const [
        GetCredentialsForIdentityResponse,
        _$GetCredentialsForIdentityResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      switch (key) {
        case 'Credentials':
          if (value != null) {
            result.credentials.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Credentials),
            ) as _i2.Credentials));
          }
          break;
        case 'IdentityId':
          if (value != null) {
            result.identityId = (serializers.deserialize(
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
    final payload = (object as GetCredentialsForIdentityResponse);
    final result = <Object?>[];
    if (payload.credentials != null) {
      result
        ..add('Credentials')
        ..add(serializers.serialize(
          payload.credentials!,
          specifiedType: const FullType(_i2.Credentials),
        ));
    }
    if (payload.identityId != null) {
      result
        ..add('IdentityId')
        ..add(serializers.serialize(
          payload.identityId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
