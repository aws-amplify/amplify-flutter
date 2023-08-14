// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.federated_authentication_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'federated_authentication_request.g.dart';

/// The IAM SAML identity provider used for federated authentication.
abstract class FederatedAuthenticationRequest
    with
        _i1.AWSEquatable<FederatedAuthenticationRequest>
    implements
        Built<FederatedAuthenticationRequest,
            FederatedAuthenticationRequestBuilder> {
  /// The IAM SAML identity provider used for federated authentication.
  factory FederatedAuthenticationRequest({
    String? samlProviderArn,
    String? selfServiceSamlProviderArn,
  }) {
    return _$FederatedAuthenticationRequest._(
      samlProviderArn: samlProviderArn,
      selfServiceSamlProviderArn: selfServiceSamlProviderArn,
    );
  }

  /// The IAM SAML identity provider used for federated authentication.
  factory FederatedAuthenticationRequest.build(
          [void Function(FederatedAuthenticationRequestBuilder) updates]) =
      _$FederatedAuthenticationRequest;

  const FederatedAuthenticationRequest._();

  static const List<_i2.SmithySerializer<FederatedAuthenticationRequest>>
      serializers = [FederatedAuthenticationRequestEc2QuerySerializer()];

  /// The Amazon Resource Name (ARN) of the IAM SAML identity provider.
  String? get samlProviderArn;

  /// The Amazon Resource Name (ARN) of the IAM SAML identity provider for the self-service portal.
  String? get selfServiceSamlProviderArn;
  @override
  List<Object?> get props => [
        samlProviderArn,
        selfServiceSamlProviderArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FederatedAuthenticationRequest')
      ..add(
        'samlProviderArn',
        samlProviderArn,
      )
      ..add(
        'selfServiceSamlProviderArn',
        selfServiceSamlProviderArn,
      );
    return helper.toString();
  }
}

class FederatedAuthenticationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<FederatedAuthenticationRequest> {
  const FederatedAuthenticationRequestEc2QuerySerializer()
      : super('FederatedAuthenticationRequest');

  @override
  Iterable<Type> get types => const [
        FederatedAuthenticationRequest,
        _$FederatedAuthenticationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FederatedAuthenticationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FederatedAuthenticationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SAMLProviderArn':
          result.samlProviderArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SelfServiceSAMLProviderArn':
          result.selfServiceSamlProviderArn = (serializers.deserialize(
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
    FederatedAuthenticationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FederatedAuthenticationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FederatedAuthenticationRequest(
      :samlProviderArn,
      :selfServiceSamlProviderArn
    ) = object;
    if (samlProviderArn != null) {
      result$
        ..add(const _i2.XmlElementName('SAMLProviderArn'))
        ..add(serializers.serialize(
          samlProviderArn,
          specifiedType: const FullType(String),
        ));
    }
    if (selfServiceSamlProviderArn != null) {
      result$
        ..add(const _i2.XmlElementName('SelfServiceSAMLProviderArn'))
        ..add(serializers.serialize(
          selfServiceSamlProviderArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
