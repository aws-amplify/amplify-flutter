// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ptr_update_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ptr_update_status.g.dart';

/// The status of an updated pointer (PTR) record for an Elastic IP address.
abstract class PtrUpdateStatus
    with _i1.AWSEquatable<PtrUpdateStatus>
    implements Built<PtrUpdateStatus, PtrUpdateStatusBuilder> {
  /// The status of an updated pointer (PTR) record for an Elastic IP address.
  factory PtrUpdateStatus({
    String? value,
    String? status,
    String? reason,
  }) {
    return _$PtrUpdateStatus._(
      value: value,
      status: status,
      reason: reason,
    );
  }

  /// The status of an updated pointer (PTR) record for an Elastic IP address.
  factory PtrUpdateStatus.build(
      [void Function(PtrUpdateStatusBuilder) updates]) = _$PtrUpdateStatus;

  const PtrUpdateStatus._();

  static const List<_i2.SmithySerializer<PtrUpdateStatus>> serializers = [
    PtrUpdateStatusEc2QuerySerializer()
  ];

  /// The value for the PTR record update.
  String? get value;

  /// The status of the PTR record update.
  String? get status;

  /// The reason for the PTR record update.
  String? get reason;
  @override
  List<Object?> get props => [
        value,
        status,
        reason,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PtrUpdateStatus')
      ..add(
        'value',
        value,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'reason',
        reason,
      );
    return helper.toString();
  }
}

class PtrUpdateStatusEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PtrUpdateStatus> {
  const PtrUpdateStatusEc2QuerySerializer() : super('PtrUpdateStatus');

  @override
  Iterable<Type> get types => const [
        PtrUpdateStatus,
        _$PtrUpdateStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PtrUpdateStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PtrUpdateStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'reason':
          result.reason = (serializers.deserialize(
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
    PtrUpdateStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PtrUpdateStatusResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PtrUpdateStatus(:value, :status, :reason) = object;
    if (value != null) {
      result$
        ..add(const _i2.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(String),
        ));
    }
    if (reason != null) {
      result$
        ..add(const _i2.XmlElementName('Reason'))
        ..add(serializers.serialize(
          reason,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
