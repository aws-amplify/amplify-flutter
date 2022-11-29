// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    _i2.ConfigExportDeliveryInfo? configHistoryDeliveryInfo,
    _i2.ConfigExportDeliveryInfo? configSnapshotDeliveryInfo,
    _i3.ConfigStreamDeliveryInfo? configStreamDeliveryInfo,
    String? name,
  }) {
    return _$DeliveryChannelStatus._(
      configHistoryDeliveryInfo: configHistoryDeliveryInfo,
      configSnapshotDeliveryInfo: configSnapshotDeliveryInfo,
      configStreamDeliveryInfo: configStreamDeliveryInfo,
      name: name,
    );
  }

  /// The status of a specified delivery channel.
  ///
  /// Valid values: `Success` | `Failure`
  factory DeliveryChannelStatus.build(
          [void Function(DeliveryChannelStatusBuilder) updates]) =
      _$DeliveryChannelStatus;

  const DeliveryChannelStatus._();

  static const List<_i4.SmithySerializer> serializers = [
    DeliveryChannelStatusAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeliveryChannelStatusBuilder b) {}

  /// A list that contains the status of the delivery of the configuration history to the specified Amazon S3 bucket.
  _i2.ConfigExportDeliveryInfo? get configHistoryDeliveryInfo;

  /// A list containing the status of the delivery of the snapshot to the specified Amazon S3 bucket.
  _i2.ConfigExportDeliveryInfo? get configSnapshotDeliveryInfo;

  /// A list containing the status of the delivery of the configuration stream notification to the specified Amazon SNS topic.
  _i3.ConfigStreamDeliveryInfo? get configStreamDeliveryInfo;

  /// The name of the delivery channel.
  String? get name;
  @override
  List<Object?> get props => [
        configHistoryDeliveryInfo,
        configSnapshotDeliveryInfo,
        configStreamDeliveryInfo,
        name,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeliveryChannelStatus');
    helper.add(
      'configHistoryDeliveryInfo',
      configHistoryDeliveryInfo,
    );
    helper.add(
      'configSnapshotDeliveryInfo',
      configSnapshotDeliveryInfo,
    );
    helper.add(
      'configStreamDeliveryInfo',
      configStreamDeliveryInfo,
    );
    helper.add(
      'name',
      name,
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
      switch (key) {
        case 'configHistoryDeliveryInfo':
          if (value != null) {
            result.configHistoryDeliveryInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ConfigExportDeliveryInfo),
            ) as _i2.ConfigExportDeliveryInfo));
          }
          break;
        case 'configSnapshotDeliveryInfo':
          if (value != null) {
            result.configSnapshotDeliveryInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ConfigExportDeliveryInfo),
            ) as _i2.ConfigExportDeliveryInfo));
          }
          break;
        case 'configStreamDeliveryInfo':
          if (value != null) {
            result.configStreamDeliveryInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ConfigStreamDeliveryInfo),
            ) as _i3.ConfigStreamDeliveryInfo));
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DeliveryChannelStatus);
    final result = <Object?>[];
    if (payload.configHistoryDeliveryInfo != null) {
      result
        ..add('configHistoryDeliveryInfo')
        ..add(serializers.serialize(
          payload.configHistoryDeliveryInfo!,
          specifiedType: const FullType(_i2.ConfigExportDeliveryInfo),
        ));
    }
    if (payload.configSnapshotDeliveryInfo != null) {
      result
        ..add('configSnapshotDeliveryInfo')
        ..add(serializers.serialize(
          payload.configSnapshotDeliveryInfo!,
          specifiedType: const FullType(_i2.ConfigExportDeliveryInfo),
        ));
    }
    if (payload.configStreamDeliveryInfo != null) {
      result
        ..add('configStreamDeliveryInfo')
        ..add(serializers.serialize(
          payload.configStreamDeliveryInfo!,
          specifiedType: const FullType(_i3.ConfigStreamDeliveryInfo),
        ));
    }
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
