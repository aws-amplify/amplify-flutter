// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_bandwidth_gbps_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'network_bandwidth_gbps_request.g.dart';

/// The minimum and maximum amount of network bandwidth, in gigabits per second (Gbps).
///
/// Setting the minimum bandwidth does not guarantee that your instance will achieve the minimum bandwidth. Amazon EC2 will identify instance types that support the specified minimum bandwidth, but the actual bandwidth of your instance might go below the specified minimum at times. For more information, see [Available instance bandwidth](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-network-bandwidth.html#available-instance-bandwidth) in the _Amazon EC2 User Guide_.
abstract class NetworkBandwidthGbpsRequest
    with _i1.AWSEquatable<NetworkBandwidthGbpsRequest>
    implements
        Built<NetworkBandwidthGbpsRequest, NetworkBandwidthGbpsRequestBuilder> {
  /// The minimum and maximum amount of network bandwidth, in gigabits per second (Gbps).
  ///
  /// Setting the minimum bandwidth does not guarantee that your instance will achieve the minimum bandwidth. Amazon EC2 will identify instance types that support the specified minimum bandwidth, but the actual bandwidth of your instance might go below the specified minimum at times. For more information, see [Available instance bandwidth](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-network-bandwidth.html#available-instance-bandwidth) in the _Amazon EC2 User Guide_.
  factory NetworkBandwidthGbpsRequest({
    double? min,
    double? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$NetworkBandwidthGbpsRequest._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum amount of network bandwidth, in gigabits per second (Gbps).
  ///
  /// Setting the minimum bandwidth does not guarantee that your instance will achieve the minimum bandwidth. Amazon EC2 will identify instance types that support the specified minimum bandwidth, but the actual bandwidth of your instance might go below the specified minimum at times. For more information, see [Available instance bandwidth](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-network-bandwidth.html#available-instance-bandwidth) in the _Amazon EC2 User Guide_.
  factory NetworkBandwidthGbpsRequest.build(
          [void Function(NetworkBandwidthGbpsRequestBuilder) updates]) =
      _$NetworkBandwidthGbpsRequest;

  const NetworkBandwidthGbpsRequest._();

  static const List<_i2.SmithySerializer<NetworkBandwidthGbpsRequest>>
      serializers = [NetworkBandwidthGbpsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkBandwidthGbpsRequestBuilder b) {
    b
      ..min = 0
      ..max = 0;
  }

  /// The minimum amount of network bandwidth, in Gbps. To specify no minimum limit, omit this parameter.
  double get min;

  /// The maximum amount of network bandwidth, in Gbps. To specify no maximum limit, omit this parameter.
  double get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkBandwidthGbpsRequest')
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

class NetworkBandwidthGbpsRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkBandwidthGbpsRequest> {
  const NetworkBandwidthGbpsRequestEc2QuerySerializer()
      : super('NetworkBandwidthGbpsRequest');

  @override
  Iterable<Type> get types => const [
        NetworkBandwidthGbpsRequest,
        _$NetworkBandwidthGbpsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkBandwidthGbpsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkBandwidthGbpsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Min':
          result.min = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'Max':
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
    NetworkBandwidthGbpsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NetworkBandwidthGbpsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkBandwidthGbpsRequest(:min, :max) = object;
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
