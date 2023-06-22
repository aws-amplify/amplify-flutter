// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.delivery_channel_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/config_export_delivery_info.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/config_stream_delivery_info.dart'
    as _i3;

part 'delivery_channel_status.g.dart';

/// The status of a specified delivery channel.
///
/// Valid values: `Success` | `Failure`
abstract class DeliveryChannelStatus
    with _i1.AWSEquatable<DeliveryChannelStatus>
    implements Built<DeliveryChannelStatus, DeliveryChannelStatusBuilder> {
  /// The status of a specified delivery channel.
  ///
  /// Valid values: `Success` | `Failure`
  factory DeliveryChannelStatus({
    String? name,
    _i2.ConfigExportDeliveryInfo? configSnapshotDeliveryInfo,
    _i2.ConfigExportDeliveryInfo? configHistoryDeliveryInfo,
    _i3.ConfigStreamDeliveryInfo? configStreamDeliveryInfo,
  }) {
    return _$DeliveryChannelStatus._(
      name: name,
      configSnapshotDeliveryInfo: configSnapshotDeliveryInfo,
      configHistoryDeliveryInfo: configHistoryDeliveryInfo,
      configStreamDeliveryInfo: configStreamDeliveryInfo,
    );
  }

  /// The status of a specified delivery channel.
  ///
  /// Valid values: `Success` | `Failure`
  factory DeliveryChannelStatus.build(
          [void Function(DeliveryChannelStatusBuilder) updates]) =
      _$DeliveryChannelStatus;

  const DeliveryChannelStatus._();

  static const List<_i4.SmithySerializer<DeliveryChannelStatus>> serializers = [
    DeliveryChannelStatusAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeliveryChannelStatusBuilder b) {}

  /// The name of the delivery channel.
  String? get name;

  /// A list containing the status of the delivery of the snapshot to the specified Amazon S3 bucket.
  _i2.ConfigExportDeliveryInfo? get configSnapshotDeliveryInfo;

  /// A list that contains the status of the delivery of the configuration history to the specified Amazon S3 bucket.
  _i2.ConfigExportDeliveryInfo? get configHistoryDeliveryInfo;

  /// A list containing the status of the delivery of the configuration stream notification to the specified Amazon SNS topic.
  _i3.ConfigStreamDeliveryInfo? get configStreamDeliveryInfo;
  @override
  List<Object?> get props => [
        name,
        configSnapshotDeliveryInfo,
        configHistoryDeliveryInfo,
        configStreamDeliveryInfo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeliveryChannelStatus')
      ..add(
        'name',
        name,
      )
      ..add(
        'configSnapshotDeliveryInfo',
        configSnapshotDeliveryInfo,
      )
      ..add(
        'configHistoryDeliveryInfo',
        configHistoryDeliveryInfo,
      )
      ..add(
        'configStreamDeliveryInfo',
        configStreamDeliveryInfo,
      );
    return helper.toString();
  }
}

class DeliveryChannelStatusAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<DeliveryChannelStatus> {
  const DeliveryChannelStatusAwsJson11Serializer()
      : super('DeliveryChannelStatus');

  @override
  Iterable<Type> get types => const [
        DeliveryChannelStatus,
        _$DeliveryChannelStatus,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeliveryChannelStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryChannelStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'configSnapshotDeliveryInfo':
          result.configSnapshotDeliveryInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ConfigExportDeliveryInfo),
          ) as _i2.ConfigExportDeliveryInfo));
        case 'configHistoryDeliveryInfo':
          result.configHistoryDeliveryInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ConfigExportDeliveryInfo),
          ) as _i2.ConfigExportDeliveryInfo));
        case 'configStreamDeliveryInfo':
          result.configStreamDeliveryInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ConfigStreamDeliveryInfo),
          ) as _i3.ConfigStreamDeliveryInfo));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeliveryChannelStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeliveryChannelStatus(
      :name,
      :configSnapshotDeliveryInfo,
      :configHistoryDeliveryInfo,
      :configStreamDeliveryInfo
    ) = object;
    if (name != null) {
      result$
        ..add('name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (configSnapshotDeliveryInfo != null) {
      result$
        ..add('configSnapshotDeliveryInfo')
        ..add(serializers.serialize(
          configSnapshotDeliveryInfo,
          specifiedType: const FullType(_i2.ConfigExportDeliveryInfo),
        ));
    }
    if (configHistoryDeliveryInfo != null) {
      result$
        ..add('configHistoryDeliveryInfo')
        ..add(serializers.serialize(
          configHistoryDeliveryInfo,
          specifiedType: const FullType(_i2.ConfigExportDeliveryInfo),
        ));
    }
    if (configStreamDeliveryInfo != null) {
      result$
        ..add('configStreamDeliveryInfo')
        ..add(serializers.serialize(
          configStreamDeliveryInfo,
          specifiedType: const FullType(_i3.ConfigStreamDeliveryInfo),
        ));
    }
    return result$;
  }
}
