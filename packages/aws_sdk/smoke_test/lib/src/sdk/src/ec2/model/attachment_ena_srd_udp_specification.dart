// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.attachment_ena_srd_udp_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'attachment_ena_srd_udp_specification.g.dart';

/// Describes the ENA Express configuration for UDP traffic on the network interface that's attached to the instance.
abstract class AttachmentEnaSrdUdpSpecification
    with
        _i1.AWSEquatable<AttachmentEnaSrdUdpSpecification>
    implements
        Built<AttachmentEnaSrdUdpSpecification,
            AttachmentEnaSrdUdpSpecificationBuilder> {
  /// Describes the ENA Express configuration for UDP traffic on the network interface that's attached to the instance.
  factory AttachmentEnaSrdUdpSpecification({bool? enaSrdUdpEnabled}) {
    enaSrdUdpEnabled ??= false;
    return _$AttachmentEnaSrdUdpSpecification._(
        enaSrdUdpEnabled: enaSrdUdpEnabled);
  }

  /// Describes the ENA Express configuration for UDP traffic on the network interface that's attached to the instance.
  factory AttachmentEnaSrdUdpSpecification.build(
          [void Function(AttachmentEnaSrdUdpSpecificationBuilder) updates]) =
      _$AttachmentEnaSrdUdpSpecification;

  const AttachmentEnaSrdUdpSpecification._();

  static const List<_i2.SmithySerializer<AttachmentEnaSrdUdpSpecification>>
      serializers = [AttachmentEnaSrdUdpSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttachmentEnaSrdUdpSpecificationBuilder b) {
    b.enaSrdUdpEnabled = false;
  }

  /// Indicates whether UDP traffic to and from the instance uses ENA Express. To specify this setting, you must first enable ENA Express.
  bool get enaSrdUdpEnabled;
  @override
  List<Object?> get props => [enaSrdUdpEnabled];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AttachmentEnaSrdUdpSpecification')
          ..add(
            'enaSrdUdpEnabled',
            enaSrdUdpEnabled,
          );
    return helper.toString();
  }
}

class AttachmentEnaSrdUdpSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AttachmentEnaSrdUdpSpecification> {
  const AttachmentEnaSrdUdpSpecificationEc2QuerySerializer()
      : super('AttachmentEnaSrdUdpSpecification');

  @override
  Iterable<Type> get types => const [
        AttachmentEnaSrdUdpSpecification,
        _$AttachmentEnaSrdUdpSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AttachmentEnaSrdUdpSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachmentEnaSrdUdpSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'enaSrdUdpEnabled':
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
    AttachmentEnaSrdUdpSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AttachmentEnaSrdUdpSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AttachmentEnaSrdUdpSpecification(:enaSrdUdpEnabled) = object;
    result$
      ..add(const _i2.XmlElementName('EnaSrdUdpEnabled'))
      ..add(serializers.serialize(
        enaSrdUdpEnabled,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
