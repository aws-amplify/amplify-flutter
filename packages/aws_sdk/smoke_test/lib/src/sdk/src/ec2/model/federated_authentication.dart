// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.federated_authentication; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'federated_authentication.g.dart';

/// Describes the IAM SAML identity providers used for federated authentication.
abstract class FederatedAuthentication
    with _i1.AWSEquatable<FederatedAuthentication>
    implements Built<FederatedAuthentication, FederatedAuthenticationBuilder> {
  /// Describes the IAM SAML identity providers used for federated authentication.
  factory FederatedAuthentication({
    String? samlProviderArn,
    String? selfServiceSamlProviderArn,
  }) {
    return _$FederatedAuthentication._(
      samlProviderArn: samlProviderArn,
      selfServiceSamlProviderArn: selfServiceSamlProviderArn,
    );
  }

  /// Describes the IAM SAML identity providers used for federated authentication.
  factory FederatedAuthentication.build(
          [void Function(FederatedAuthenticationBuilder) updates]) =
      _$FederatedAuthentication;

  const FederatedAuthentication._();

  static const List<_i2.SmithySerializer<FederatedAuthentication>> serializers =
      [FederatedAuthenticationEc2QuerySerializer()];

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
    final helper = newBuiltValueToStringHelper('FederatedAuthentication')
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

class FederatedAuthenticationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<FederatedAuthentication> {
  const FederatedAuthenticationEc2QuerySerializer()
      : super('FederatedAuthentication');

  @override
  Iterable<Type> get types => const [
        FederatedAuthentication,
        _$FederatedAuthentication,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FederatedAuthentication deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FederatedAuthenticationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'samlProviderArn':
          result.samlProviderArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'selfServiceSamlProviderArn':
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
    FederatedAuthentication object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FederatedAuthenticationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FederatedAuthentication(
      :samlProviderArn,
      :selfServiceSamlProviderArn
    ) = object;
    if (samlProviderArn != null) {
      result$
        ..add(const _i2.XmlElementName('SamlProviderArn'))
        ..add(serializers.serialize(
          samlProviderArn,
          specifiedType: const FullType(String),
        ));
    }
    if (selfServiceSamlProviderArn != null) {
      result$
        ..add(const _i2.XmlElementName('SelfServiceSamlProviderArn'))
        ..add(serializers.serialize(
          selfServiceSamlProviderArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
