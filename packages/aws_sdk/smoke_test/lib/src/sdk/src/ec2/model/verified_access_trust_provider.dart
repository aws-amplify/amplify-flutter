// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_trust_provider; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/device_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/device_trust_provider_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/oidc_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/trust_provider_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/user_trust_provider_type.dart';

part 'verified_access_trust_provider.g.dart';

/// Describes a Verified Access trust provider.
abstract class VerifiedAccessTrustProvider
    with _i1.AWSEquatable<VerifiedAccessTrustProvider>
    implements
        Built<VerifiedAccessTrustProvider, VerifiedAccessTrustProviderBuilder> {
  /// Describes a Verified Access trust provider.
  factory VerifiedAccessTrustProvider({
    String? verifiedAccessTrustProviderId,
    String? description,
    TrustProviderType? trustProviderType,
    UserTrustProviderType? userTrustProviderType,
    DeviceTrustProviderType? deviceTrustProviderType,
    OidcOptions? oidcOptions,
    DeviceOptions? deviceOptions,
    String? policyReferenceName,
    String? creationTime,
    String? lastUpdatedTime,
    List<Tag>? tags,
  }) {
    return _$VerifiedAccessTrustProvider._(
      verifiedAccessTrustProviderId: verifiedAccessTrustProviderId,
      description: description,
      trustProviderType: trustProviderType,
      userTrustProviderType: userTrustProviderType,
      deviceTrustProviderType: deviceTrustProviderType,
      oidcOptions: oidcOptions,
      deviceOptions: deviceOptions,
      policyReferenceName: policyReferenceName,
      creationTime: creationTime,
      lastUpdatedTime: lastUpdatedTime,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a Verified Access trust provider.
  factory VerifiedAccessTrustProvider.build(
          [void Function(VerifiedAccessTrustProviderBuilder) updates]) =
      _$VerifiedAccessTrustProvider;

  const VerifiedAccessTrustProvider._();

  static const List<_i3.SmithySerializer<VerifiedAccessTrustProvider>>
      serializers = [VerifiedAccessTrustProviderEc2QuerySerializer()];

  /// The ID of the Amazon Web Services Verified Access trust provider.
  String? get verifiedAccessTrustProviderId;

  /// A description for the Amazon Web Services Verified Access trust provider.
  String? get description;

  /// The type of Verified Access trust provider.
  TrustProviderType? get trustProviderType;

  /// The type of user-based trust provider.
  UserTrustProviderType? get userTrustProviderType;

  /// The type of device-based trust provider.
  DeviceTrustProviderType? get deviceTrustProviderType;

  /// The options for an OpenID Connect-compatible user-identity trust provider.
  OidcOptions? get oidcOptions;

  /// The options for device-identity trust provider.
  DeviceOptions? get deviceOptions;

  /// The identifier to be used when working with policy rules.
  String? get policyReferenceName;

  /// The creation time.
  String? get creationTime;

  /// The last updated time.
  String? get lastUpdatedTime;

  /// The tags.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        verifiedAccessTrustProviderId,
        description,
        trustProviderType,
        userTrustProviderType,
        deviceTrustProviderType,
        oidcOptions,
        deviceOptions,
        policyReferenceName,
        creationTime,
        lastUpdatedTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifiedAccessTrustProvider')
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
      )
      ..add(
        'oidcOptions',
        oidcOptions,
      )
      ..add(
        'deviceOptions',
        deviceOptions,
      )
      ..add(
        'policyReferenceName',
        policyReferenceName,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'lastUpdatedTime',
        lastUpdatedTime,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class VerifiedAccessTrustProviderEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VerifiedAccessTrustProvider> {
  const VerifiedAccessTrustProviderEc2QuerySerializer()
      : super('VerifiedAccessTrustProvider');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessTrustProvider,
        _$VerifiedAccessTrustProvider,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessTrustProvider deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessTrustProviderBuilder();
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
        case 'oidcOptions':
          result.oidcOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(OidcOptions),
          ) as OidcOptions));
        case 'deviceOptions':
          result.deviceOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceOptions),
          ) as DeviceOptions));
        case 'policyReferenceName':
          result.policyReferenceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'lastUpdatedTime':
          result.lastUpdatedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VerifiedAccessTrustProvider object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VerifiedAccessTrustProviderResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessTrustProvider(
      :verifiedAccessTrustProviderId,
      :description,
      :trustProviderType,
      :userTrustProviderType,
      :deviceTrustProviderType,
      :oidcOptions,
      :deviceOptions,
      :policyReferenceName,
      :creationTime,
      :lastUpdatedTime,
      :tags
    ) = object;
    if (verifiedAccessTrustProviderId != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessTrustProviderId'))
        ..add(serializers.serialize(
          verifiedAccessTrustProviderId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (trustProviderType != null) {
      result$
        ..add(const _i3.XmlElementName('TrustProviderType'))
        ..add(serializers.serialize(
          trustProviderType,
          specifiedType: const FullType(TrustProviderType),
        ));
    }
    if (userTrustProviderType != null) {
      result$
        ..add(const _i3.XmlElementName('UserTrustProviderType'))
        ..add(serializers.serialize(
          userTrustProviderType,
          specifiedType: const FullType(UserTrustProviderType),
        ));
    }
    if (deviceTrustProviderType != null) {
      result$
        ..add(const _i3.XmlElementName('DeviceTrustProviderType'))
        ..add(serializers.serialize(
          deviceTrustProviderType,
          specifiedType: const FullType(DeviceTrustProviderType),
        ));
    }
    if (oidcOptions != null) {
      result$
        ..add(const _i3.XmlElementName('OidcOptions'))
        ..add(serializers.serialize(
          oidcOptions,
          specifiedType: const FullType(OidcOptions),
        ));
    }
    if (deviceOptions != null) {
      result$
        ..add(const _i3.XmlElementName('DeviceOptions'))
        ..add(serializers.serialize(
          deviceOptions,
          specifiedType: const FullType(DeviceOptions),
        ));
    }
    if (policyReferenceName != null) {
      result$
        ..add(const _i3.XmlElementName('PolicyReferenceName'))
        ..add(serializers.serialize(
          policyReferenceName,
          specifiedType: const FullType(String),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType(String),
        ));
    }
    if (lastUpdatedTime != null) {
      result$
        ..add(const _i3.XmlElementName('LastUpdatedTime'))
        ..add(serializers.serialize(
          lastUpdatedTime,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
