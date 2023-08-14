// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vgw_telemetry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/telemetry_status.dart';

part 'vgw_telemetry.g.dart';

/// Describes telemetry for a VPN tunnel.
abstract class VgwTelemetry
    with _i1.AWSEquatable<VgwTelemetry>
    implements Built<VgwTelemetry, VgwTelemetryBuilder> {
  /// Describes telemetry for a VPN tunnel.
  factory VgwTelemetry({
    int? acceptedRouteCount,
    DateTime? lastStatusChange,
    String? outsideIpAddress,
    TelemetryStatus? status,
    String? statusMessage,
    String? certificateArn,
  }) {
    acceptedRouteCount ??= 0;
    return _$VgwTelemetry._(
      acceptedRouteCount: acceptedRouteCount,
      lastStatusChange: lastStatusChange,
      outsideIpAddress: outsideIpAddress,
      status: status,
      statusMessage: statusMessage,
      certificateArn: certificateArn,
    );
  }

  /// Describes telemetry for a VPN tunnel.
  factory VgwTelemetry.build([void Function(VgwTelemetryBuilder) updates]) =
      _$VgwTelemetry;

  const VgwTelemetry._();

  static const List<_i2.SmithySerializer<VgwTelemetry>> serializers = [
    VgwTelemetryEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VgwTelemetryBuilder b) {
    b.acceptedRouteCount = 0;
  }

  /// The number of accepted routes.
  int get acceptedRouteCount;

  /// The date and time of the last change in status.
  DateTime? get lastStatusChange;

  /// The Internet-routable IP address of the virtual private gateway's outside interface.
  String? get outsideIpAddress;

  /// The status of the VPN tunnel.
  TelemetryStatus? get status;

  /// If an error occurs, a description of the error.
  String? get statusMessage;

  /// The Amazon Resource Name (ARN) of the VPN tunnel endpoint certificate.
  String? get certificateArn;
  @override
  List<Object?> get props => [
        acceptedRouteCount,
        lastStatusChange,
        outsideIpAddress,
        status,
        statusMessage,
        certificateArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VgwTelemetry')
      ..add(
        'acceptedRouteCount',
        acceptedRouteCount,
      )
      ..add(
        'lastStatusChange',
        lastStatusChange,
      )
      ..add(
        'outsideIpAddress',
        outsideIpAddress,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'statusMessage',
        statusMessage,
      )
      ..add(
        'certificateArn',
        certificateArn,
      );
    return helper.toString();
  }
}

class VgwTelemetryEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VgwTelemetry> {
  const VgwTelemetryEc2QuerySerializer() : super('VgwTelemetry');

  @override
  Iterable<Type> get types => const [
        VgwTelemetry,
        _$VgwTelemetry,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VgwTelemetry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VgwTelemetryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'acceptedRouteCount':
          result.acceptedRouteCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'lastStatusChange':
          result.lastStatusChange = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'outsideIpAddress':
          result.outsideIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(TelemetryStatus),
          ) as TelemetryStatus);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'certificateArn':
          result.certificateArn = (serializers.deserialize(
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
    VgwTelemetry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VgwTelemetryResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VgwTelemetry(
      :acceptedRouteCount,
      :lastStatusChange,
      :outsideIpAddress,
      :status,
      :statusMessage,
      :certificateArn
    ) = object;
    result$
      ..add(const _i2.XmlElementName('AcceptedRouteCount'))
      ..add(serializers.serialize(
        acceptedRouteCount,
        specifiedType: const FullType(int),
      ));
    if (lastStatusChange != null) {
      result$
        ..add(const _i2.XmlElementName('LastStatusChange'))
        ..add(serializers.serialize(
          lastStatusChange,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (outsideIpAddress != null) {
      result$
        ..add(const _i2.XmlElementName('OutsideIpAddress'))
        ..add(serializers.serialize(
          outsideIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(TelemetryStatus),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i2.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (certificateArn != null) {
      result$
        ..add(const _i2.XmlElementName('CertificateArn'))
        ..add(serializers.serialize(
          certificateArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
