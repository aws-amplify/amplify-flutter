// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ena_srd_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ena_srd_udp_specification.dart';

part 'ena_srd_specification.g.dart';

/// ENA Express uses Amazon Web Services Scalable Reliable Datagram (SRD) technology to increase the maximum bandwidth used per stream and minimize tail latency of network traffic between EC2 instances. With ENA Express, you can communicate between two EC2 instances in the same subnet within the same account, or in different accounts. Both sending and receiving instances must have ENA Express enabled.
///
/// To improve the reliability of network packet delivery, ENA Express reorders network packets on the receiving end by default. However, some UDP-based applications are designed to handle network packets that are out of order to reduce the overhead for packet delivery at the network layer. When ENA Express is enabled, you can specify whether UDP network traffic uses it.
abstract class EnaSrdSpecification
    with _i1.AWSEquatable<EnaSrdSpecification>
    implements Built<EnaSrdSpecification, EnaSrdSpecificationBuilder> {
  /// ENA Express uses Amazon Web Services Scalable Reliable Datagram (SRD) technology to increase the maximum bandwidth used per stream and minimize tail latency of network traffic between EC2 instances. With ENA Express, you can communicate between two EC2 instances in the same subnet within the same account, or in different accounts. Both sending and receiving instances must have ENA Express enabled.
  ///
  /// To improve the reliability of network packet delivery, ENA Express reorders network packets on the receiving end by default. However, some UDP-based applications are designed to handle network packets that are out of order to reduce the overhead for packet delivery at the network layer. When ENA Express is enabled, you can specify whether UDP network traffic uses it.
  factory EnaSrdSpecification({
    bool? enaSrdEnabled,
    EnaSrdUdpSpecification? enaSrdUdpSpecification,
  }) {
    enaSrdEnabled ??= false;
    return _$EnaSrdSpecification._(
      enaSrdEnabled: enaSrdEnabled,
      enaSrdUdpSpecification: enaSrdUdpSpecification,
    );
  }

  /// ENA Express uses Amazon Web Services Scalable Reliable Datagram (SRD) technology to increase the maximum bandwidth used per stream and minimize tail latency of network traffic between EC2 instances. With ENA Express, you can communicate between two EC2 instances in the same subnet within the same account, or in different accounts. Both sending and receiving instances must have ENA Express enabled.
  ///
  /// To improve the reliability of network packet delivery, ENA Express reorders network packets on the receiving end by default. However, some UDP-based applications are designed to handle network packets that are out of order to reduce the overhead for packet delivery at the network layer. When ENA Express is enabled, you can specify whether UDP network traffic uses it.
  factory EnaSrdSpecification.build(
          [void Function(EnaSrdSpecificationBuilder) updates]) =
      _$EnaSrdSpecification;

  const EnaSrdSpecification._();

  static const List<_i2.SmithySerializer<EnaSrdSpecification>> serializers = [
    EnaSrdSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnaSrdSpecificationBuilder b) {
    b.enaSrdEnabled = false;
  }

  /// Indicates whether ENA Express is enabled for the network interface.
  bool get enaSrdEnabled;

  /// Configures ENA Express for UDP network traffic.
  EnaSrdUdpSpecification? get enaSrdUdpSpecification;
  @override
  List<Object?> get props => [
        enaSrdEnabled,
        enaSrdUdpSpecification,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnaSrdSpecification')
      ..add(
        'enaSrdEnabled',
        enaSrdEnabled,
      )
      ..add(
        'enaSrdUdpSpecification',
        enaSrdUdpSpecification,
      );
    return helper.toString();
  }
}

class EnaSrdSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<EnaSrdSpecification> {
  const EnaSrdSpecificationEc2QuerySerializer() : super('EnaSrdSpecification');

  @override
  Iterable<Type> get types => const [
        EnaSrdSpecification,
        _$EnaSrdSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnaSrdSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnaSrdSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EnaSrdEnabled':
          result.enaSrdEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'EnaSrdUdpSpecification':
          result.enaSrdUdpSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EnaSrdUdpSpecification),
          ) as EnaSrdUdpSpecification));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EnaSrdSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EnaSrdSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnaSrdSpecification(:enaSrdEnabled, :enaSrdUdpSpecification) = object;
    result$
      ..add(const _i2.XmlElementName('EnaSrdEnabled'))
      ..add(serializers.serialize(
        enaSrdEnabled,
        specifiedType: const FullType(bool),
      ));
    if (enaSrdUdpSpecification != null) {
      result$
        ..add(const _i2.XmlElementName('EnaSrdUdpSpecification'))
        ..add(serializers.serialize(
          enaSrdUdpSpecification,
          specifiedType: const FullType(EnaSrdUdpSpecification),
        ));
    }
    return result$;
  }
}
