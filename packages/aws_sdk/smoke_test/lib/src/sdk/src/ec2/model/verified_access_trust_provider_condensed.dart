// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_trust_provider_condensed; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/device_trust_provider_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/trust_provider_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/user_trust_provider_type.dart';

part 'verified_access_trust_provider_condensed.g.dart';

/// Condensed information about a trust provider.
abstract class VerifiedAccessTrustProviderCondensed
    with
        _i1.AWSEquatable<VerifiedAccessTrustProviderCondensed>
    implements
        Built<VerifiedAccessTrustProviderCondensed,
            VerifiedAccessTrustProviderCondensedBuilder> {
  /// Condensed information about a trust provider.
  factory VerifiedAccessTrustProviderCondensed({
    String? verifiedAccessTrustProviderId,
    String? description,
    TrustProviderType? trustProviderType,
    UserTrustProviderType? userTrustProviderType,
    DeviceTrustProviderType? deviceTrustProviderType,
  }) {
    return _$VerifiedAccessTrustProviderCondensed._(
      verifiedAccessTrustProviderId: verifiedAccessTrustProviderId,
      description: description,
      trustProviderType: trustProviderType,
      userTrustProviderType: userTrustProviderType,
      deviceTrustProviderType: deviceTrustProviderType,
    );
  }

  /// Condensed information about a trust provider.
  factory VerifiedAccessTrustProviderCondensed.build(
      [void Function(VerifiedAccessTrustProviderCondensedBuilder)
          updates]) = _$VerifiedAccessTrustProviderCondensed;

  const VerifiedAccessTrustProviderCondensed._();

  static const List<_i2.SmithySerializer<VerifiedAccessTrustProviderCondensed>>
      serializers = [VerifiedAccessTrustProviderCondensedEc2QuerySerializer()];

  /// The ID of the trust provider.
  String? get verifiedAccessTrustProviderId;

  /// The description of trust provider.
  String? get description;

  /// The type of trust provider (user- or device-based).
  TrustProviderType? get trustProviderType;

  /// The type of user-based trust provider.
  UserTrustProviderType? get userTrustProviderType;

  /// The type of device-based trust provider.
  DeviceTrustProviderType? get deviceTrustProviderType;
  @override
  List<Object?> get props => [
        verifiedAccessTrustProviderId,
        description,
        trustProviderType,
        userTrustProviderType,
        deviceTrustProviderType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('VerifiedAccessTrustProviderCondensed')
          ..add(
            'verifiedAccessTrustProviderId',
            verifiedAccessTrustProviderId,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'trustProviderType',
            trustProviderType,
          )
          ..add(
            'userTrustProviderType',
            userTrustProviderType,
          )
          ..add(
            'deviceTrustProviderType',
            deviceTrustProviderType,
          );
    return helper.toString();
  }
}

class VerifiedAccessTrustProviderCondensedEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<VerifiedAccessTrustProviderCondensed> {
  const VerifiedAccessTrustProviderCondensedEc2QuerySerializer()
      : super('VerifiedAccessTrustProviderCondensed');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessTrustProviderCondensed,
        _$VerifiedAccessTrustProviderCondensed,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessTrustProviderCondensed deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessTrustProviderCondensedBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'verifiedAccessTrustProviderId':
          result.verifiedAccessTrustProviderId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'trustProviderType':
          result.trustProviderType = (serializers.deserialize(
            value,
            specifiedType: const FullType(TrustProviderType),
          ) as TrustProviderType);
        case 'userTrustProviderType':
          result.userTrustProviderType = (serializers.deserialize(
            value,
            specifiedType: const FullType(UserTrustProviderType),
          ) as UserTrustProviderType);
        case 'deviceTrustProviderType':
          result.deviceTrustProviderType = (serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceTrustProviderType),
          ) as DeviceTrustProviderType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VerifiedAccessTrustProviderCondensed object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessTrustProviderCondensedResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessTrustProviderCondensed(
      :verifiedAccessTrustProviderId,
      :description,
      :trustProviderType,
      :userTrustProviderType,
      :deviceTrustProviderType
    ) = object;
    if (verifiedAccessTrustProviderId != null) {
      result$
        ..add(const _i2.XmlElementName('VerifiedAccessTrustProviderId'))
        ..add(serializers.serialize(
          verifiedAccessTrustProviderId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (trustProviderType != null) {
      result$
        ..add(const _i2.XmlElementName('TrustProviderType'))
        ..add(serializers.serialize(
          trustProviderType,
          specifiedType: const FullType(TrustProviderType),
        ));
    }
    if (userTrustProviderType != null) {
      result$
        ..add(const _i2.XmlElementName('UserTrustProviderType'))
        ..add(serializers.serialize(
          userTrustProviderType,
          specifiedType: const FullType(UserTrustProviderType),
        ));
    }
    if (deviceTrustProviderType != null) {
      result$
        ..add(const _i2.XmlElementName('DeviceTrustProviderType'))
        ..add(serializers.serialize(
          deviceTrustProviderType,
          specifiedType: const FullType(DeviceTrustProviderType),
        ));
    }
    return result$;
  }
}
