// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_status_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/status_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/status_type.dart';

part 'instance_status_details.g.dart';

/// Describes the instance status.
abstract class InstanceStatusDetails
    with _i1.AWSEquatable<InstanceStatusDetails>
    implements Built<InstanceStatusDetails, InstanceStatusDetailsBuilder> {
  /// Describes the instance status.
  factory InstanceStatusDetails({
    DateTime? impairedSince,
    StatusName? name,
    StatusType? status,
  }) {
    return _$InstanceStatusDetails._(
      impairedSince: impairedSince,
      name: name,
      status: status,
    );
  }

  /// Describes the instance status.
  factory InstanceStatusDetails.build(
          [void Function(InstanceStatusDetailsBuilder) updates]) =
      _$InstanceStatusDetails;

  const InstanceStatusDetails._();

  static const List<_i2.SmithySerializer<InstanceStatusDetails>> serializers = [
    InstanceStatusDetailsEc2QuerySerializer()
  ];

  /// The time when a status check failed. For an instance that was launched and impaired, this is the time when the instance was launched.
  DateTime? get impairedSince;

  /// The type of instance status.
  StatusName? get name;

  /// The status.
  StatusType? get status;
  @override
  List<Object?> get props => [
        impairedSince,
        name,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceStatusDetails')
      ..add(
        'impairedSince',
        impairedSince,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class InstanceStatusDetailsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceStatusDetails> {
  const InstanceStatusDetailsEc2QuerySerializer()
      : super('InstanceStatusDetails');

  @override
  Iterable<Type> get types => const [
        InstanceStatusDetails,
        _$InstanceStatusDetails,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceStatusDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceStatusDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'impairedSince':
          result.impairedSince = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(StatusName),
          ) as StatusName);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(StatusType),
          ) as StatusType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceStatusDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceStatusDetailsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceStatusDetails(:impairedSince, :name, :status) = object;
    if (impairedSince != null) {
      result$
        ..add(const _i2.XmlElementName('ImpairedSince'))
        ..add(serializers.serialize(
          impairedSince,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType.nullable(StatusName),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(StatusType),
        ));
    }
    return result$;
  }
}
