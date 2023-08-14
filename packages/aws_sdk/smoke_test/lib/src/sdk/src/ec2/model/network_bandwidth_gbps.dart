// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_bandwidth_gbps; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'network_bandwidth_gbps.g.dart';

/// The minimum and maximum amount of network bandwidth, in gigabits per second (Gbps).
///
/// Setting the minimum bandwidth does not guarantee that your instance will achieve the minimum bandwidth. Amazon EC2 will identify instance types that support the specified minimum bandwidth, but the actual bandwidth of your instance might go below the specified minimum at times. For more information, see [Available instance bandwidth](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-network-bandwidth.html#available-instance-bandwidth) in the _Amazon EC2 User Guide_.
abstract class NetworkBandwidthGbps
    with _i1.AWSEquatable<NetworkBandwidthGbps>
    implements Built<NetworkBandwidthGbps, NetworkBandwidthGbpsBuilder> {
  /// The minimum and maximum amount of network bandwidth, in gigabits per second (Gbps).
  ///
  /// Setting the minimum bandwidth does not guarantee that your instance will achieve the minimum bandwidth. Amazon EC2 will identify instance types that support the specified minimum bandwidth, but the actual bandwidth of your instance might go below the specified minimum at times. For more information, see [Available instance bandwidth](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-network-bandwidth.html#available-instance-bandwidth) in the _Amazon EC2 User Guide_.
  factory NetworkBandwidthGbps({
    double? min,
    double? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$NetworkBandwidthGbps._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum amount of network bandwidth, in gigabits per second (Gbps).
  ///
  /// Setting the minimum bandwidth does not guarantee that your instance will achieve the minimum bandwidth. Amazon EC2 will identify instance types that support the specified minimum bandwidth, but the actual bandwidth of your instance might go below the specified minimum at times. For more information, see [Available instance bandwidth](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-network-bandwidth.html#available-instance-bandwidth) in the _Amazon EC2 User Guide_.
  factory NetworkBandwidthGbps.build(
          [void Function(NetworkBandwidthGbpsBuilder) updates]) =
      _$NetworkBandwidthGbps;

  const NetworkBandwidthGbps._();

  static const List<_i2.SmithySerializer<NetworkBandwidthGbps>> serializers = [
    NetworkBandwidthGbpsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkBandwidthGbpsBuilder b) {
    b
      ..min = 0
      ..max = 0;
  }

  /// The minimum amount of network bandwidth, in Gbps. If this parameter is not specified, there is no minimum limit.
  double get min;

  /// The maximum amount of network bandwidth, in Gbps. If this parameter is not specified, there is no maximum limit.
  double get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkBandwidthGbps')
      ..add(
        'min',
        min,
      )
      ..add(
        'max',
        max,
      );
    return helper.toString();
  }
}

class NetworkBandwidthGbpsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkBandwidthGbps> {
  const NetworkBandwidthGbpsEc2QuerySerializer()
      : super('NetworkBandwidthGbps');

  @override
  Iterable<Type> get types => const [
        NetworkBandwidthGbps,
        _$NetworkBandwidthGbps,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkBandwidthGbps deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkBandwidthGbpsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'min':
          result.min = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'max':
          result.max = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NetworkBandwidthGbps object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NetworkBandwidthGbpsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkBandwidthGbps(:min, :max) = object;
    result$
      ..add(const _i2.XmlElementName('Min'))
      ..add(serializers.serialize(
        min,
        specifiedType: const FullType(double),
      ));
    result$
      ..add(const _i2.XmlElementName('Max'))
      ..add(serializers.serialize(
        max,
        specifiedType: const FullType(double),
      ));
    return result$;
  }
}
