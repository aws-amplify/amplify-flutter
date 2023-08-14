// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.peering_attachment_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'peering_attachment_status.g.dart';

/// The status of the transit gateway peering attachment.
abstract class PeeringAttachmentStatus
    with _i1.AWSEquatable<PeeringAttachmentStatus>
    implements Built<PeeringAttachmentStatus, PeeringAttachmentStatusBuilder> {
  /// The status of the transit gateway peering attachment.
  factory PeeringAttachmentStatus({
    String? code,
    String? message,
  }) {
    return _$PeeringAttachmentStatus._(
      code: code,
      message: message,
    );
  }

  /// The status of the transit gateway peering attachment.
  factory PeeringAttachmentStatus.build(
          [void Function(PeeringAttachmentStatusBuilder) updates]) =
      _$PeeringAttachmentStatus;

  const PeeringAttachmentStatus._();

  static const List<_i2.SmithySerializer<PeeringAttachmentStatus>> serializers =
      [PeeringAttachmentStatusEc2QuerySerializer()];

  /// The status code.
  String? get code;

  /// The status message, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PeeringAttachmentStatus')
      ..add(
        'code',
        code,
      )
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class PeeringAttachmentStatusEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PeeringAttachmentStatus> {
  const PeeringAttachmentStatusEc2QuerySerializer()
      : super('PeeringAttachmentStatus');

  @override
  Iterable<Type> get types => const [
        PeeringAttachmentStatus,
        _$PeeringAttachmentStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PeeringAttachmentStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PeeringAttachmentStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PeeringAttachmentStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PeeringAttachmentStatusResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PeeringAttachmentStatus(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(String),
        ));
    }
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
