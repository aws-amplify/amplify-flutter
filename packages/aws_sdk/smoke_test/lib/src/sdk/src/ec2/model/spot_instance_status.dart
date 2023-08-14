// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_instance_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'spot_instance_status.g.dart';

/// Describes the status of a Spot Instance request.
abstract class SpotInstanceStatus
    with _i1.AWSEquatable<SpotInstanceStatus>
    implements Built<SpotInstanceStatus, SpotInstanceStatusBuilder> {
  /// Describes the status of a Spot Instance request.
  factory SpotInstanceStatus({
    String? code,
    String? message,
    DateTime? updateTime,
  }) {
    return _$SpotInstanceStatus._(
      code: code,
      message: message,
      updateTime: updateTime,
    );
  }

  /// Describes the status of a Spot Instance request.
  factory SpotInstanceStatus.build(
          [void Function(SpotInstanceStatusBuilder) updates]) =
      _$SpotInstanceStatus;

  const SpotInstanceStatus._();

  static const List<_i2.SmithySerializer<SpotInstanceStatus>> serializers = [
    SpotInstanceStatusEc2QuerySerializer()
  ];

  /// The status code. For a list of status codes, see [Spot request status codes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-request-status.html#spot-instance-request-status-understand) in the _Amazon EC2 User Guide for Linux Instances_.
  String? get code;

  /// The description for the status code.
  String? get message;

  /// The date and time of the most recent status update, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get updateTime;
  @override
  List<Object?> get props => [
        code,
        message,
        updateTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotInstanceStatus')
      ..add(
        'code',
        code,
      )
      ..add(
        'message',
        message,
      )
      ..add(
        'updateTime',
        updateTime,
      );
    return helper.toString();
  }
}

class SpotInstanceStatusEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SpotInstanceStatus> {
  const SpotInstanceStatusEc2QuerySerializer() : super('SpotInstanceStatus');

  @override
  Iterable<Type> get types => const [
        SpotInstanceStatus,
        _$SpotInstanceStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotInstanceStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotInstanceStatusBuilder();
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
        case 'updateTime':
          result.updateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SpotInstanceStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SpotInstanceStatusResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SpotInstanceStatus(:code, :message, :updateTime) = object;
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
    if (updateTime != null) {
      result$
        ..add(const _i2.XmlElementName('UpdateTime'))
        ..add(serializers.serialize(
          updateTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
