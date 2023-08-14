// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.attachment_ena_srd_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_ena_srd_udp_specification.dart';

part 'attachment_ena_srd_specification.g.dart';

/// Describes the ENA Express configuration for the network interface that's attached to the instance.
abstract class AttachmentEnaSrdSpecification
    with
        _i1.AWSEquatable<AttachmentEnaSrdSpecification>
    implements
        Built<AttachmentEnaSrdSpecification,
            AttachmentEnaSrdSpecificationBuilder> {
  /// Describes the ENA Express configuration for the network interface that's attached to the instance.
  factory AttachmentEnaSrdSpecification({
    bool? enaSrdEnabled,
    AttachmentEnaSrdUdpSpecification? enaSrdUdpSpecification,
  }) {
    enaSrdEnabled ??= false;
    return _$AttachmentEnaSrdSpecification._(
      enaSrdEnabled: enaSrdEnabled,
      enaSrdUdpSpecification: enaSrdUdpSpecification,
    );
  }

  /// Describes the ENA Express configuration for the network interface that's attached to the instance.
  factory AttachmentEnaSrdSpecification.build(
          [void Function(AttachmentEnaSrdSpecificationBuilder) updates]) =
      _$AttachmentEnaSrdSpecification;

  const AttachmentEnaSrdSpecification._();

  static const List<_i2.SmithySerializer<AttachmentEnaSrdSpecification>>
      serializers = [AttachmentEnaSrdSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttachmentEnaSrdSpecificationBuilder b) {
    b.enaSrdEnabled = false;
  }

  /// Indicates whether ENA Express is enabled for the network interface that's attached to the instance.
  bool get enaSrdEnabled;

  /// ENA Express configuration for UDP network traffic.
  AttachmentEnaSrdUdpSpecification? get enaSrdUdpSpecification;
  @override
  List<Object?> get props => [
        enaSrdEnabled,
        enaSrdUdpSpecification,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachmentEnaSrdSpecification')
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

class AttachmentEnaSrdSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AttachmentEnaSrdSpecification> {
  const AttachmentEnaSrdSpecificationEc2QuerySerializer()
      : super('AttachmentEnaSrdSpecification');

  @override
  Iterable<Type> get types => const [
        AttachmentEnaSrdSpecification,
        _$AttachmentEnaSrdSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AttachmentEnaSrdSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachmentEnaSrdSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'enaSrdEnabled':
          result.enaSrdEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'enaSrdUdpSpecification':
          result.enaSrdUdpSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttachmentEnaSrdUdpSpecification),
          ) as AttachmentEnaSrdUdpSpecification));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AttachmentEnaSrdSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AttachmentEnaSrdSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AttachmentEnaSrdSpecification(
      :enaSrdEnabled,
      :enaSrdUdpSpecification
    ) = object;
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
          specifiedType: const FullType(AttachmentEnaSrdUdpSpecification),
        ));
    }
    return result$;
  }
}
