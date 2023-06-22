// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.get_federation_token_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/sts/model/credentials.dart' as _i2;
import 'package:smoke_test/src/sdk/src/sts/model/federated_user.dart' as _i3;

part 'get_federation_token_response.g.dart';

/// Contains the response to a successful GetFederationToken request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
abstract class GetFederationTokenResponse
    with _i1.AWSEquatable<GetFederationTokenResponse>
    implements
        Built<GetFederationTokenResponse, GetFederationTokenResponseBuilder> {
  /// Contains the response to a successful GetFederationToken request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
  factory GetFederationTokenResponse({
    _i2.Credentials? credentials,
    _i3.FederatedUser? federatedUser,
    int? packedPolicySize,
  }) {
    return _$GetFederationTokenResponse._(
      credentials: credentials,
      federatedUser: federatedUser,
      packedPolicySize: packedPolicySize,
    );
  }

  /// Contains the response to a successful GetFederationToken request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
  factory GetFederationTokenResponse.build(
          [void Function(GetFederationTokenResponseBuilder) updates]) =
      _$GetFederationTokenResponse;

  const GetFederationTokenResponse._();

  /// Constructs a [GetFederationTokenResponse] from a [payload] and [response].
  factory GetFederationTokenResponse.fromResponse(
    GetFederationTokenResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<GetFederationTokenResponse>>
      serializers = [GetFederationTokenResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFederationTokenResponseBuilder b) {}

  /// The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.
  ///
  /// The size of the security token that STS API operations return is not fixed. We strongly recommend that you make no assumptions about the maximum size.
  _i2.Credentials? get credentials;

  /// Identifiers for the federated user associated with the credentials (such as `arn:aws:sts::123456789012:federated-user/Bob` or `123456789012:Bob`). You can use the federated user's ARN in your resource-based policies, such as an Amazon S3 bucket policy.
  _i3.FederatedUser? get federatedUser;

  /// A percentage value that indicates the packed size of the session policies and session tags combined passed in the request. The request fails if the packed size is greater than 100 percent, which means the policies and tags exceeded the allowed space.
  int? get packedPolicySize;
  @override
  List<Object?> get props => [
        credentials,
        federatedUser,
        packedPolicySize,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetFederationTokenResponse')
      ..add(
        'credentials',
        credentials,
      )
      ..add(
        'federatedUser',
        federatedUser,
      )
      ..add(
        'packedPolicySize',
        packedPolicySize,
      );
    return helper.toString();
  }
}

class GetFederationTokenResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<GetFederationTokenResponse> {
  const GetFederationTokenResponseAwsQuerySerializer()
      : super('GetFederationTokenResponse');

  @override
  Iterable<Type> get types => const [
        GetFederationTokenResponse,
        _$GetFederationTokenResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetFederationTokenResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFederationTokenResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Credentials':
          result.credentials.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Credentials),
          ) as _i2.Credentials));
        case 'FederatedUser':
          result.federatedUser.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.FederatedUser),
          ) as _i3.FederatedUser));
        case 'PackedPolicySize':
          result.packedPolicySize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetFederationTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'GetFederationTokenResponseResponse',
        _i4.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final GetFederationTokenResponse(
      :credentials,
      :federatedUser,
      :packedPolicySize
    ) = object;
    if (credentials != null) {
      result$
        ..add(const _i4.XmlElementName('Credentials'))
        ..add(serializers.serialize(
          credentials,
          specifiedType: const FullType(_i2.Credentials),
        ));
    }
    if (federatedUser != null) {
      result$
        ..add(const _i4.XmlElementName('FederatedUser'))
        ..add(serializers.serialize(
          federatedUser,
          specifiedType: const FullType(_i3.FederatedUser),
        ));
    }
    if (packedPolicySize != null) {
      result$
        ..add(const _i4.XmlElementName('PackedPolicySize'))
        ..add(serializers.serialize(
          packedPolicySize,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
