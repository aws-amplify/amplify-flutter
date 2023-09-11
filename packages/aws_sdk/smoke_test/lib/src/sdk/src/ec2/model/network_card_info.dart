// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_card_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'network_card_info.g.dart';

/// Describes the network card support of the instance type.
abstract class NetworkCardInfo
    with _i1.AWSEquatable<NetworkCardInfo>
    implements Built<NetworkCardInfo, NetworkCardInfoBuilder> {
  /// Describes the network card support of the instance type.
  factory NetworkCardInfo({
    int? networkCardIndex,
    String? networkPerformance,
    int? maximumNetworkInterfaces,
    double? baselineBandwidthInGbps,
    double? peakBandwidthInGbps,
  }) {
    return _$NetworkCardInfo._(
      networkCardIndex: networkCardIndex,
      networkPerformance: networkPerformance,
      maximumNetworkInterfaces: maximumNetworkInterfaces,
      baselineBandwidthInGbps: baselineBandwidthInGbps,
      peakBandwidthInGbps: peakBandwidthInGbps,
    );
  }

  /// Describes the network card support of the instance type.
  factory NetworkCardInfo.build(
      [void Function(NetworkCardInfoBuilder) updates]) = _$NetworkCardInfo;

  const NetworkCardInfo._();

  static const List<_i2.SmithySerializer<NetworkCardInfo>> serializers = [
    NetworkCardInfoEc2QuerySerializer()
  ];

  /// The index of the network card.
  int? get networkCardIndex;

  /// The network performance of the network card.
  String? get networkPerformance;

  /// The maximum number of network interfaces for the network card.
  int? get maximumNetworkInterfaces;

  /// The baseline network performance of the network card, in Gbps.
  double? get baselineBandwidthInGbps;

  /// The peak (burst) network performance of the network card, in Gbps.
  double? get peakBandwidthInGbps;
  @override
  List<Object?> get props => [
        networkCardIndex,
        networkPerformance,
        maximumNetworkInterfaces,
        baselineBandwidthInGbps,
        peakBandwidthInGbps,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkCardInfo')
      ..add(
        'networkCardIndex',
        networkCardIndex,
      )
      ..add(
        'networkPerformance',
        networkPerformance,
      )
      ..add(
        'maximumNetworkInterfaces',
        maximumNetworkInterfaces,
      )
      ..add(
        'baselineBandwidthInGbps',
        baselineBandwidthInGbps,
      )
      ..add(
        'peakBandwidthInGbps',
        peakBandwidthInGbps,
      );
    return helper.toString();
  }
}

class NetworkCardInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkCardInfo> {
  const NetworkCardInfoEc2QuerySerializer() : super('NetworkCardInfo');

  @override
  Iterable<Type> get types => const [
        NetworkCardInfo,
        _$NetworkCardInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkCardInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkCardInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkCardIndex':
          result.networkCardIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'networkPerformance':
          result.networkPerformance = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'maximumNetworkInterfaces':
          result.maximumNetworkInterfaces = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'baselineBandwidthInGbps':
          result.baselineBandwidthInGbps = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'peakBandwidthInGbps':
          result.peakBandwidthInGbps = (serializers.deserialize(
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
    NetworkCardInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NetworkCardInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkCardInfo(
      :networkCardIndex,
      :networkPerformance,
      :maximumNetworkInterfaces,
      :baselineBandwidthInGbps,
      :peakBandwidthInGbps
    ) = object;
    if (networkCardIndex != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkCardIndex'))
        ..add(serializers.serialize(
          networkCardIndex,
          specifiedType: const FullType(int),
        ));
    }
    if (networkPerformance != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkPerformance'))
        ..add(serializers.serialize(
          networkPerformance,
          specifiedType: const FullType(String),
        ));
    }
    if (maximumNetworkInterfaces != null) {
      result$
        ..add(const _i2.XmlElementName('MaximumNetworkInterfaces'))
        ..add(serializers.serialize(
          maximumNetworkInterfaces,
          specifiedType: const FullType(int),
        ));
    }
    if (baselineBandwidthInGbps != null) {
      result$
        ..add(const _i2.XmlElementName('BaselineBandwidthInGbps'))
        ..add(serializers.serialize(
          baselineBandwidthInGbps,
          specifiedType: const FullType(double),
        ));
    }
    if (peakBandwidthInGbps != null) {
      result$
        ..add(const _i2.XmlElementName('PeakBandwidthInGbps'))
        ..add(serializers.serialize(
          peakBandwidthInGbps,
          specifiedType: const FullType(double),
        ));
    }
    return result$;
  }
}
