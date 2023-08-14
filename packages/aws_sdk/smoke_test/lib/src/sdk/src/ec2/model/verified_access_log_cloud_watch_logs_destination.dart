// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_log_cloud_watch_logs_destination; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_delivery_status.dart';

part 'verified_access_log_cloud_watch_logs_destination.g.dart';

/// Options for CloudWatch Logs as a logging destination.
abstract class VerifiedAccessLogCloudWatchLogsDestination
    with
        _i1.AWSEquatable<VerifiedAccessLogCloudWatchLogsDestination>
    implements
        Built<VerifiedAccessLogCloudWatchLogsDestination,
            VerifiedAccessLogCloudWatchLogsDestinationBuilder> {
  /// Options for CloudWatch Logs as a logging destination.
  factory VerifiedAccessLogCloudWatchLogsDestination({
    bool? enabled,
    VerifiedAccessLogDeliveryStatus? deliveryStatus,
    String? logGroup,
  }) {
    enabled ??= false;
    return _$VerifiedAccessLogCloudWatchLogsDestination._(
      enabled: enabled,
      deliveryStatus: deliveryStatus,
      logGroup: logGroup,
    );
  }

  /// Options for CloudWatch Logs as a logging destination.
  factory VerifiedAccessLogCloudWatchLogsDestination.build(
      [void Function(VerifiedAccessLogCloudWatchLogsDestinationBuilder)
          updates]) = _$VerifiedAccessLogCloudWatchLogsDestination;

  const VerifiedAccessLogCloudWatchLogsDestination._();

  static const List<
          _i2.SmithySerializer<VerifiedAccessLogCloudWatchLogsDestination>>
      serializers = [
    VerifiedAccessLogCloudWatchLogsDestinationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VerifiedAccessLogCloudWatchLogsDestinationBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether logging is enabled.
  bool get enabled;

  /// The delivery status for access logs.
  VerifiedAccessLogDeliveryStatus? get deliveryStatus;

  /// The ID of the CloudWatch Logs log group.
  String? get logGroup;
  @override
  List<Object?> get props => [
        enabled,
        deliveryStatus,
        logGroup,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'VerifiedAccessLogCloudWatchLogsDestination')
      ..add(
        'enabled',
        enabled,
      )
      ..add(
        'deliveryStatus',
        deliveryStatus,
      )
      ..add(
        'logGroup',
        logGroup,
      );
    return helper.toString();
  }
}

class VerifiedAccessLogCloudWatchLogsDestinationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<VerifiedAccessLogCloudWatchLogsDestination> {
  const VerifiedAccessLogCloudWatchLogsDestinationEc2QuerySerializer()
      : super('VerifiedAccessLogCloudWatchLogsDestination');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessLogCloudWatchLogsDestination,
        _$VerifiedAccessLogCloudWatchLogsDestination,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessLogCloudWatchLogsDestination deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessLogCloudWatchLogsDestinationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'enabled':
          result.enabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'deliveryStatus':
          result.deliveryStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessLogDeliveryStatus),
          ) as VerifiedAccessLogDeliveryStatus));
        case 'logGroup':
          result.logGroup = (serializers.deserialize(
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
    VerifiedAccessLogCloudWatchLogsDestination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessLogCloudWatchLogsDestinationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessLogCloudWatchLogsDestination(
      :enabled,
      :deliveryStatus,
      :logGroup
    ) = object;
    result$
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
    if (deliveryStatus != null) {
      result$
        ..add(const _i2.XmlElementName('DeliveryStatus'))
        ..add(serializers.serialize(
          deliveryStatus,
          specifiedType: const FullType(VerifiedAccessLogDeliveryStatus),
        ));
    }
    if (logGroup != null) {
      result$
        ..add(const _i2.XmlElementName('LogGroup'))
        ..add(serializers.serialize(
          logGroup,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
