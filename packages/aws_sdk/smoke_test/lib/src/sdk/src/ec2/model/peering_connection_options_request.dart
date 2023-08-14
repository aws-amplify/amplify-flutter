// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.peering_connection_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'peering_connection_options_request.g.dart';

/// The VPC peering connection options.
abstract class PeeringConnectionOptionsRequest
    with
        _i1.AWSEquatable<PeeringConnectionOptionsRequest>
    implements
        Built<PeeringConnectionOptionsRequest,
            PeeringConnectionOptionsRequestBuilder> {
  /// The VPC peering connection options.
  factory PeeringConnectionOptionsRequest({
    bool? allowDnsResolutionFromRemoteVpc,
    bool? allowEgressFromLocalClassicLinkToRemoteVpc,
    bool? allowEgressFromLocalVpcToRemoteClassicLink,
  }) {
    allowDnsResolutionFromRemoteVpc ??= false;
    allowEgressFromLocalClassicLinkToRemoteVpc ??= false;
    allowEgressFromLocalVpcToRemoteClassicLink ??= false;
    return _$PeeringConnectionOptionsRequest._(
      allowDnsResolutionFromRemoteVpc: allowDnsResolutionFromRemoteVpc,
      allowEgressFromLocalClassicLinkToRemoteVpc:
          allowEgressFromLocalClassicLinkToRemoteVpc,
      allowEgressFromLocalVpcToRemoteClassicLink:
          allowEgressFromLocalVpcToRemoteClassicLink,
    );
  }

  /// The VPC peering connection options.
  factory PeeringConnectionOptionsRequest.build(
          [void Function(PeeringConnectionOptionsRequestBuilder) updates]) =
      _$PeeringConnectionOptionsRequest;

  const PeeringConnectionOptionsRequest._();

  static const List<_i2.SmithySerializer<PeeringConnectionOptionsRequest>>
      serializers = [PeeringConnectionOptionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PeeringConnectionOptionsRequestBuilder b) {
    b
      ..allowDnsResolutionFromRemoteVpc = false
      ..allowEgressFromLocalClassicLinkToRemoteVpc = false
      ..allowEgressFromLocalVpcToRemoteClassicLink = false;
  }

  /// If true, enables a local VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC.
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
    final helper =
        newBuiltValueToStringHelper('PeeringConnectionOptionsRequest')
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

class PeeringConnectionOptionsRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PeeringConnectionOptionsRequest> {
  const PeeringConnectionOptionsRequestEc2QuerySerializer()
      : super('PeeringConnectionOptionsRequest');

  @override
  Iterable<Type> get types => const [
        PeeringConnectionOptionsRequest,
        _$PeeringConnectionOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PeeringConnectionOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PeeringConnectionOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AllowDnsResolutionFromRemoteVpc':
          result.allowDnsResolutionFromRemoteVpc = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AllowEgressFromLocalClassicLinkToRemoteVpc':
          result.allowEgressFromLocalClassicLinkToRemoteVpc =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AllowEgressFromLocalVpcToRemoteClassicLink':
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
    PeeringConnectionOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PeeringConnectionOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PeeringConnectionOptionsRequest(
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
