// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_multicast_domain_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_accept_shared_associations_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/igmpv2_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/static_sources_support_value.dart';

part 'transit_gateway_multicast_domain_options.g.dart';

/// Describes the options for a transit gateway multicast domain.
abstract class TransitGatewayMulticastDomainOptions
    with
        _i1.AWSEquatable<TransitGatewayMulticastDomainOptions>
    implements
        Built<TransitGatewayMulticastDomainOptions,
            TransitGatewayMulticastDomainOptionsBuilder> {
  /// Describes the options for a transit gateway multicast domain.
  factory TransitGatewayMulticastDomainOptions({
    Igmpv2SupportValue? igmpv2Support,
    StaticSourcesSupportValue? staticSourcesSupport,
    AutoAcceptSharedAssociationsValue? autoAcceptSharedAssociations,
  }) {
    return _$TransitGatewayMulticastDomainOptions._(
      igmpv2Support: igmpv2Support,
      staticSourcesSupport: staticSourcesSupport,
      autoAcceptSharedAssociations: autoAcceptSharedAssociations,
    );
  }

  /// Describes the options for a transit gateway multicast domain.
  factory TransitGatewayMulticastDomainOptions.build(
      [void Function(TransitGatewayMulticastDomainOptionsBuilder)
          updates]) = _$TransitGatewayMulticastDomainOptions;

  const TransitGatewayMulticastDomainOptions._();

  static const List<_i2.SmithySerializer<TransitGatewayMulticastDomainOptions>>
      serializers = [TransitGatewayMulticastDomainOptionsEc2QuerySerializer()];

  /// Indicates whether Internet Group Management Protocol (IGMP) version 2 is turned on for the transit gateway multicast domain.
  Igmpv2SupportValue? get igmpv2Support;

  /// Indicates whether support for statically configuring transit gateway multicast group sources is turned on.
  StaticSourcesSupportValue? get staticSourcesSupport;

  /// Indicates whether to automatically cross-account subnet associations that are associated with the transit gateway multicast domain.
  AutoAcceptSharedAssociationsValue? get autoAcceptSharedAssociations;
  @override
  List<Object?> get props => [
        igmpv2Support,
        staticSourcesSupport,
        autoAcceptSharedAssociations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayMulticastDomainOptions')
          ..add(
            'igmpv2Support',
            igmpv2Support,
          )
          ..add(
            'staticSourcesSupport',
            staticSourcesSupport,
          )
          ..add(
            'autoAcceptSharedAssociations',
            autoAcceptSharedAssociations,
          );
    return helper.toString();
  }
}

class TransitGatewayMulticastDomainOptionsEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<TransitGatewayMulticastDomainOptions> {
  const TransitGatewayMulticastDomainOptionsEc2QuerySerializer()
      : super('TransitGatewayMulticastDomainOptions');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastDomainOptions,
        _$TransitGatewayMulticastDomainOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastDomainOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastDomainOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'igmpv2Support':
          result.igmpv2Support = (serializers.deserialize(
            value,
            specifiedType: const FullType(Igmpv2SupportValue),
          ) as Igmpv2SupportValue);
        case 'staticSourcesSupport':
          result.staticSourcesSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(StaticSourcesSupportValue),
          ) as StaticSourcesSupportValue);
        case 'autoAcceptSharedAssociations':
          result.autoAcceptSharedAssociations = (serializers.deserialize(
            value,
            specifiedType: const FullType(AutoAcceptSharedAssociationsValue),
          ) as AutoAcceptSharedAssociationsValue);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayMulticastDomainOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayMulticastDomainOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayMulticastDomainOptions(
      :igmpv2Support,
      :staticSourcesSupport,
      :autoAcceptSharedAssociations
    ) = object;
    if (igmpv2Support != null) {
      result$
        ..add(const _i2.XmlElementName('Igmpv2Support'))
        ..add(serializers.serialize(
          igmpv2Support,
          specifiedType: const FullType.nullable(Igmpv2SupportValue),
        ));
    }
    if (staticSourcesSupport != null) {
      result$
        ..add(const _i2.XmlElementName('StaticSourcesSupport'))
        ..add(serializers.serialize(
          staticSourcesSupport,
          specifiedType: const FullType.nullable(StaticSourcesSupportValue),
        ));
    }
    if (autoAcceptSharedAssociations != null) {
      result$
        ..add(const _i2.XmlElementName('AutoAcceptSharedAssociations'))
        ..add(serializers.serialize(
          autoAcceptSharedAssociations,
          specifiedType:
              const FullType.nullable(AutoAcceptSharedAssociationsValue),
        ));
    }
    return result$;
  }
}
