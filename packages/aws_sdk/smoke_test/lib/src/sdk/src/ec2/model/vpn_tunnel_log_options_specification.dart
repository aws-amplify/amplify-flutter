// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpn_tunnel_log_options_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/cloud_watch_log_options_specification.dart';

part 'vpn_tunnel_log_options_specification.g.dart';

/// Options for logging VPN tunnel activity.
abstract class VpnTunnelLogOptionsSpecification
    with
        _i1.AWSEquatable<VpnTunnelLogOptionsSpecification>
    implements
        Built<VpnTunnelLogOptionsSpecification,
            VpnTunnelLogOptionsSpecificationBuilder> {
  /// Options for logging VPN tunnel activity.
  factory VpnTunnelLogOptionsSpecification(
      {CloudWatchLogOptionsSpecification? cloudWatchLogOptions}) {
    return _$VpnTunnelLogOptionsSpecification._(
        cloudWatchLogOptions: cloudWatchLogOptions);
  }

  /// Options for logging VPN tunnel activity.
  factory VpnTunnelLogOptionsSpecification.build(
          [void Function(VpnTunnelLogOptionsSpecificationBuilder) updates]) =
      _$VpnTunnelLogOptionsSpecification;

  const VpnTunnelLogOptionsSpecification._();

  static const List<_i2.SmithySerializer<VpnTunnelLogOptionsSpecification>>
      serializers = [VpnTunnelLogOptionsSpecificationEc2QuerySerializer()];

  /// Options for sending VPN tunnel logs to CloudWatch.
  CloudWatchLogOptionsSpecification? get cloudWatchLogOptions;
  @override
  List<Object?> get props => [cloudWatchLogOptions];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('VpnTunnelLogOptionsSpecification')
          ..add(
            'cloudWatchLogOptions',
            cloudWatchLogOptions,
          );
    return helper.toString();
  }
}

class VpnTunnelLogOptionsSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VpnTunnelLogOptionsSpecification> {
  const VpnTunnelLogOptionsSpecificationEc2QuerySerializer()
      : super('VpnTunnelLogOptionsSpecification');

  @override
  Iterable<Type> get types => const [
        VpnTunnelLogOptionsSpecification,
        _$VpnTunnelLogOptionsSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnTunnelLogOptionsSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnTunnelLogOptionsSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CloudWatchLogOptions':
          result.cloudWatchLogOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CloudWatchLogOptionsSpecification),
          ) as CloudWatchLogOptionsSpecification));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VpnTunnelLogOptionsSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VpnTunnelLogOptionsSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpnTunnelLogOptionsSpecification(:cloudWatchLogOptions) = object;
    if (cloudWatchLogOptions != null) {
      result$
        ..add(const _i2.XmlElementName('CloudWatchLogOptions'))
        ..add(serializers.serialize(
          cloudWatchLogOptions,
          specifiedType: const FullType(CloudWatchLogOptionsSpecification),
        ));
    }
    return result$;
  }
}
