// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.provisioned_bandwidth; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'provisioned_bandwidth.g.dart';

/// Reserved. If you need to sustain traffic greater than the [documented limits](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html), contact us through the [Support Center](https://console.aws.amazon.com/support/home?).
abstract class ProvisionedBandwidth
    with _i1.AWSEquatable<ProvisionedBandwidth>
    implements Built<ProvisionedBandwidth, ProvisionedBandwidthBuilder> {
  /// Reserved. If you need to sustain traffic greater than the [documented limits](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html), contact us through the [Support Center](https://console.aws.amazon.com/support/home?).
  factory ProvisionedBandwidth({
    DateTime? provisionTime,
    String? provisioned,
    DateTime? requestTime,
    String? requested,
    String? status,
  }) {
    return _$ProvisionedBandwidth._(
      provisionTime: provisionTime,
      provisioned: provisioned,
      requestTime: requestTime,
      requested: requested,
      status: status,
    );
  }

  /// Reserved. If you need to sustain traffic greater than the [documented limits](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html), contact us through the [Support Center](https://console.aws.amazon.com/support/home?).
  factory ProvisionedBandwidth.build(
          [void Function(ProvisionedBandwidthBuilder) updates]) =
      _$ProvisionedBandwidth;

  const ProvisionedBandwidth._();

  static const List<_i2.SmithySerializer<ProvisionedBandwidth>> serializers = [
    ProvisionedBandwidthEc2QuerySerializer()
  ];

  /// Reserved. If you need to sustain traffic greater than the [documented limits](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html), contact us through the [Support Center](https://console.aws.amazon.com/support/home?).
  DateTime? get provisionTime;

  /// Reserved. If you need to sustain traffic greater than the [documented limits](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html), contact us through the [Support Center](https://console.aws.amazon.com/support/home?).
  String? get provisioned;

  /// Reserved. If you need to sustain traffic greater than the [documented limits](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html), contact us through the [Support Center](https://console.aws.amazon.com/support/home?).
  DateTime? get requestTime;

  /// Reserved. If you need to sustain traffic greater than the [documented limits](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html), contact us through the [Support Center](https://console.aws.amazon.com/support/home?).
  String? get requested;

  /// Reserved. If you need to sustain traffic greater than the [documented limits](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html), contact us through the [Support Center](https://console.aws.amazon.com/support/home?).
  String? get status;
  @override
  List<Object?> get props => [
        provisionTime,
        provisioned,
        requestTime,
        requested,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProvisionedBandwidth')
      ..add(
        'provisionTime',
        provisionTime,
      )
      ..add(
        'provisioned',
        provisioned,
      )
      ..add(
        'requestTime',
        requestTime,
      )
      ..add(
        'requested',
        requested,
      )
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class ProvisionedBandwidthEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ProvisionedBandwidth> {
  const ProvisionedBandwidthEc2QuerySerializer()
      : super('ProvisionedBandwidth');

  @override
  Iterable<Type> get types => const [
        ProvisionedBandwidth,
        _$ProvisionedBandwidth,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProvisionedBandwidth deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionedBandwidthBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'provisionTime':
          result.provisionTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'provisioned':
          result.provisioned = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'requestTime':
          result.requestTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'requested':
          result.requested = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status = (serializers.deserialize(
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
    ProvisionedBandwidth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ProvisionedBandwidthResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ProvisionedBandwidth(
      :provisionTime,
      :provisioned,
      :requestTime,
      :requested,
      :status
    ) = object;
    if (provisionTime != null) {
      result$
        ..add(const _i2.XmlElementName('ProvisionTime'))
        ..add(serializers.serialize(
          provisionTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (provisioned != null) {
      result$
        ..add(const _i2.XmlElementName('Provisioned'))
        ..add(serializers.serialize(
          provisioned,
          specifiedType: const FullType(String),
        ));
    }
    if (requestTime != null) {
      result$
        ..add(const _i2.XmlElementName('RequestTime'))
        ..add(serializers.serialize(
          requestTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (requested != null) {
      result$
        ..add(const _i2.XmlElementName('Requested'))
        ..add(serializers.serialize(
          requested,
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
    return result$;
  }
}
