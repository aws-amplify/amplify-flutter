// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpn_tunnel_log_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/cloud_watch_log_options.dart';

part 'vpn_tunnel_log_options.g.dart';

/// Options for logging VPN tunnel activity.
abstract class VpnTunnelLogOptions
    with _i1.AWSEquatable<VpnTunnelLogOptions>
    implements Built<VpnTunnelLogOptions, VpnTunnelLogOptionsBuilder> {
  /// Options for logging VPN tunnel activity.
  factory VpnTunnelLogOptions({CloudWatchLogOptions? cloudWatchLogOptions}) {
    return _$VpnTunnelLogOptions._(cloudWatchLogOptions: cloudWatchLogOptions);
  }

  /// Options for logging VPN tunnel activity.
  factory VpnTunnelLogOptions.build(
          [void Function(VpnTunnelLogOptionsBuilder) updates]) =
      _$VpnTunnelLogOptions;

  const VpnTunnelLogOptions._();

  static const List<_i2.SmithySerializer<VpnTunnelLogOptions>> serializers = [
    VpnTunnelLogOptionsEc2QuerySerializer()
  ];

  /// Options for sending VPN tunnel logs to CloudWatch.
  CloudWatchLogOptions? get cloudWatchLogOptions;
  @override
  List<Object?> get props => [cloudWatchLogOptions];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpnTunnelLogOptions')
      ..add(
        'cloudWatchLogOptions',
        cloudWatchLogOptions,
      );
    return helper.toString();
  }
}

class VpnTunnelLogOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VpnTunnelLogOptions> {
  const VpnTunnelLogOptionsEc2QuerySerializer() : super('VpnTunnelLogOptions');

  @override
  Iterable<Type> get types => const [
        VpnTunnelLogOptions,
        _$VpnTunnelLogOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnTunnelLogOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnTunnelLogOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cloudWatchLogOptions':
          result.cloudWatchLogOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CloudWatchLogOptions),
          ) as CloudWatchLogOptions));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VpnTunnelLogOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VpnTunnelLogOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpnTunnelLogOptions(:cloudWatchLogOptions) = object;
    if (cloudWatchLogOptions != null) {
      result$
        ..add(const _i2.XmlElementName('CloudWatchLogOptions'))
        ..add(serializers.serialize(
          cloudWatchLogOptions,
          specifiedType: const FullType(CloudWatchLogOptions),
        ));
    }
    return result$;
  }
}
