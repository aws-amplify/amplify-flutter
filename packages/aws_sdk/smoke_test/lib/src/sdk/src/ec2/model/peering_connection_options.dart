// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.peering_connection_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'peering_connection_options.g.dart';

/// Describes the VPC peering connection options.
abstract class PeeringConnectionOptions
    with _i1.AWSEquatable<PeeringConnectionOptions>
    implements
        Built<PeeringConnectionOptions, PeeringConnectionOptionsBuilder> {
  /// Describes the VPC peering connection options.
  factory PeeringConnectionOptions({
    bool? allowDnsResolutionFromRemoteVpc,
    bool? allowEgressFromLocalClassicLinkToRemoteVpc,
    bool? allowEgressFromLocalVpcToRemoteClassicLink,
  }) {
    allowDnsResolutionFromRemoteVpc ??= false;
    allowEgressFromLocalClassicLinkToRemoteVpc ??= false;
    allowEgressFromLocalVpcToRemoteClassicLink ??= false;
    return _$PeeringConnectionOptions._(
      allowDnsResolutionFromRemoteVpc: allowDnsResolutionFromRemoteVpc,
      allowEgressFromLocalClassicLinkToRemoteVpc:
          allowEgressFromLocalClassicLinkToRemoteVpc,
      allowEgressFromLocalVpcToRemoteClassicLink:
          allowEgressFromLocalVpcToRemoteClassicLink,
    );
  }

  /// Describes the VPC peering connection options.
  factory PeeringConnectionOptions.build(
          [void Function(PeeringConnectionOptionsBuilder) updates]) =
      _$PeeringConnectionOptions;

  const PeeringConnectionOptions._();

  static const List<_i2.SmithySerializer<PeeringConnectionOptions>>
      serializers = [PeeringConnectionOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PeeringConnectionOptionsBuilder b) {
    b
      ..allowDnsResolutionFromRemoteVpc = false
      ..allowEgressFromLocalClassicLinkToRemoteVpc = false
      ..allowEgressFromLocalVpcToRemoteClassicLink = false;
  }

  /// If true, the public DNS hostnames of instances in the specified VPC resolve to private IP addresses when queried from instances in the peer VPC.
  bool get allowDnsResolutionFromRemoteVpc;

  /// Deprecated.
  bool get allowEgressFromLocalClassicLinkToRemoteVpc;

  /// Deprecated.
  bool get allowEgressFromLocalVpcToRemoteClassicLink;
  @override
  List<Object?> get props => [
        allowDnsResolutionFromRemoteVpc,
        allowEgressFromLocalClassicLinkToRemoteVpc,
        allowEgressFromLocalVpcToRemoteClassicLink,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PeeringConnectionOptions')
      ..add(
        'allowDnsResolutionFromRemoteVpc',
        allowDnsResolutionFromRemoteVpc,
      )
      ..add(
        'allowEgressFromLocalClassicLinkToRemoteVpc',
        allowEgressFromLocalClassicLinkToRemoteVpc,
      )
      ..add(
        'allowEgressFromLocalVpcToRemoteClassicLink',
        allowEgressFromLocalVpcToRemoteClassicLink,
      );
    return helper.toString();
  }
}

class PeeringConnectionOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PeeringConnectionOptions> {
  const PeeringConnectionOptionsEc2QuerySerializer()
      : super('PeeringConnectionOptions');

  @override
  Iterable<Type> get types => const [
        PeeringConnectionOptions,
        _$PeeringConnectionOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PeeringConnectionOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PeeringConnectionOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'allowDnsResolutionFromRemoteVpc':
          result.allowDnsResolutionFromRemoteVpc = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'allowEgressFromLocalClassicLinkToRemoteVpc':
          result.allowEgressFromLocalClassicLinkToRemoteVpc =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'allowEgressFromLocalVpcToRemoteClassicLink':
          result.allowEgressFromLocalVpcToRemoteClassicLink =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PeeringConnectionOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PeeringConnectionOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PeeringConnectionOptions(
      :allowDnsResolutionFromRemoteVpc,
      :allowEgressFromLocalClassicLinkToRemoteVpc,
      :allowEgressFromLocalVpcToRemoteClassicLink
    ) = object;
    result$
      ..add(const _i2.XmlElementName('AllowDnsResolutionFromRemoteVpc'))
      ..add(serializers.serialize(
        allowDnsResolutionFromRemoteVpc,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName(
          'AllowEgressFromLocalClassicLinkToRemoteVpc'))
      ..add(serializers.serialize(
        allowEgressFromLocalClassicLinkToRemoteVpc,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName(
          'AllowEgressFromLocalVpcToRemoteClassicLink'))
      ..add(serializers.serialize(
        allowEgressFromLocalVpcToRemoteClassicLink,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
