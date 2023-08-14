// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ena_srd_udp_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ena_srd_udp_specification.g.dart';

/// ENA Express is compatible with both TCP and UDP transport protocols. When it’s enabled, TCP traffic automatically uses it. However, some UDP-based applications are designed to handle network packets that are out of order, without a need for retransmission, such as live video broadcasting or other near-real-time applications. For UDP traffic, you can specify whether to use ENA Express, based on your application environment needs.
abstract class EnaSrdUdpSpecification
    with _i1.AWSEquatable<EnaSrdUdpSpecification>
    implements Built<EnaSrdUdpSpecification, EnaSrdUdpSpecificationBuilder> {
  /// ENA Express is compatible with both TCP and UDP transport protocols. When it’s enabled, TCP traffic automatically uses it. However, some UDP-based applications are designed to handle network packets that are out of order, without a need for retransmission, such as live video broadcasting or other near-real-time applications. For UDP traffic, you can specify whether to use ENA Express, based on your application environment needs.
  factory EnaSrdUdpSpecification({bool? enaSrdUdpEnabled}) {
    enaSrdUdpEnabled ??= false;
    return _$EnaSrdUdpSpecification._(enaSrdUdpEnabled: enaSrdUdpEnabled);
  }

  /// ENA Express is compatible with both TCP and UDP transport protocols. When it’s enabled, TCP traffic automatically uses it. However, some UDP-based applications are designed to handle network packets that are out of order, without a need for retransmission, such as live video broadcasting or other near-real-time applications. For UDP traffic, you can specify whether to use ENA Express, based on your application environment needs.
  factory EnaSrdUdpSpecification.build(
          [void Function(EnaSrdUdpSpecificationBuilder) updates]) =
      _$EnaSrdUdpSpecification;

  const EnaSrdUdpSpecification._();

  static const List<_i2.SmithySerializer<EnaSrdUdpSpecification>> serializers =
      [EnaSrdUdpSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnaSrdUdpSpecificationBuilder b) {
    b.enaSrdUdpEnabled = false;
  }

  /// Indicates whether UDP traffic uses ENA Express. To specify this setting, you must first enable ENA Express.
  bool get enaSrdUdpEnabled;
  @override
  List<Object?> get props => [enaSrdUdpEnabled];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnaSrdUdpSpecification')
      ..add(
        'enaSrdUdpEnabled',
        enaSrdUdpEnabled,
      );
    return helper.toString();
  }
}

class EnaSrdUdpSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<EnaSrdUdpSpecification> {
  const EnaSrdUdpSpecificationEc2QuerySerializer()
      : super('EnaSrdUdpSpecification');

  @override
  Iterable<Type> get types => const [
        EnaSrdUdpSpecification,
        _$EnaSrdUdpSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnaSrdUdpSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnaSrdUdpSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EnaSrdUdpEnabled':
          result.enaSrdUdpEnabled = (serializers.deserialize(
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
    EnaSrdUdpSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EnaSrdUdpSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnaSrdUdpSpecification(:enaSrdUdpEnabled) = object;
    result$
      ..add(const _i2.XmlElementName('EnaSrdUdpEnabled'))
      ..add(serializers.serialize(
        enaSrdUdpEnabled,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
