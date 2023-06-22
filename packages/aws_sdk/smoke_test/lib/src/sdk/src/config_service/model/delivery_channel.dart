// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.delivery_channel; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/config_snapshot_delivery_properties.dart'
    as _i2;

part 'delivery_channel.g.dart';

/// The channel through which Config delivers notifications and updated configuration states.
abstract class DeliveryChannel
    with _i1.AWSEquatable<DeliveryChannel>
    implements Built<DeliveryChannel, DeliveryChannelBuilder> {
  /// The channel through which Config delivers notifications and updated configuration states.
  factory DeliveryChannel({
    String? name,
    String? s3BucketName,
    String? s3KeyPrefix,
    String? s3KmsKeyArn,
    String? snsTopicArn,
    _i2.ConfigSnapshotDeliveryProperties? configSnapshotDeliveryProperties,
  }) {
    return _$DeliveryChannel._(
      name: name,
      s3BucketName: s3BucketName,
      s3KeyPrefix: s3KeyPrefix,
      s3KmsKeyArn: s3KmsKeyArn,
      snsTopicArn: snsTopicArn,
      configSnapshotDeliveryProperties: configSnapshotDeliveryProperties,
    );
  }

  /// The channel through which Config delivers notifications and updated configuration states.
  factory DeliveryChannel.build(
      [void Function(DeliveryChannelBuilder) updates]) = _$DeliveryChannel;

  const DeliveryChannel._();

  static const List<_i3.SmithySerializer<DeliveryChannel>> serializers = [
    DeliveryChannelAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeliveryChannelBuilder b) {}

  /// The name of the delivery channel. By default, Config assigns the name "default" when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.
  String? get name;

  /// The name of the Amazon S3 bucket to which Config delivers configuration snapshots and configuration history files.
  ///
  /// If you specify a bucket that belongs to another Amazon Web Services account, that bucket must have policies that grant access permissions to Config. For more information, see [Permissions for the Amazon S3 Bucket](https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html) in the _Config Developer Guide_.
  String? get s3BucketName;

  /// The prefix for the specified Amazon S3 bucket.
  String? get s3KeyPrefix;

  /// The Amazon Resource Name (ARN) of the Key Management Service (KMS ) KMS key (KMS key) used to encrypt objects delivered by Config. Must belong to the same Region as the destination S3 bucket.
  String? get s3KmsKeyArn;

  /// The Amazon Resource Name (ARN) of the Amazon SNS topic to which Config sends notifications about configuration changes.
  ///
  /// If you choose a topic from another account, the topic must have policies that grant access permissions to Config. For more information, see [Permissions for the Amazon SNS Topic](https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html) in the _Config Developer Guide_.
  String? get snsTopicArn;

  /// The options for how often Config delivers configuration snapshots to the Amazon S3 bucket.
  _i2.ConfigSnapshotDeliveryProperties? get configSnapshotDeliveryProperties;
  @override
  List<Object?> get props => [
        name,
        s3BucketName,
        s3KeyPrefix,
        s3KmsKeyArn,
        snsTopicArn,
        configSnapshotDeliveryProperties,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeliveryChannel')
      ..add(
        'name',
        name,
      )
      ..add(
        's3BucketName',
        s3BucketName,
      )
      ..add(
        's3KeyPrefix',
        s3KeyPrefix,
      )
      ..add(
        's3KmsKeyArn',
        s3KmsKeyArn,
      )
      ..add(
        'snsTopicArn',
        snsTopicArn,
      )
      ..add(
        'configSnapshotDeliveryProperties',
        configSnapshotDeliveryProperties,
      );
    return helper.toString();
  }
}

class DeliveryChannelAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<DeliveryChannel> {
  const DeliveryChannelAwsJson11Serializer() : super('DeliveryChannel');

  @override
  Iterable<Type> get types => const [
        DeliveryChannel,
        _$DeliveryChannel,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeliveryChannel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryChannelBuilder();
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
        case 's3BucketName':
          result.s3BucketName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 's3KeyPrefix':
          result.s3KeyPrefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 's3KmsKeyArn':
          result.s3KmsKeyArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'snsTopicARN':
          result.snsTopicArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'configSnapshotDeliveryProperties':
          result.configSnapshotDeliveryProperties
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ConfigSnapshotDeliveryProperties),
          ) as _i2.ConfigSnapshotDeliveryProperties));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeliveryChannel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeliveryChannel(
      :name,
      :s3BucketName,
      :s3KeyPrefix,
      :s3KmsKeyArn,
      :snsTopicArn,
      :configSnapshotDeliveryProperties
    ) = object;
    if (name != null) {
      result$
        ..add('name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (s3BucketName != null) {
      result$
        ..add('s3BucketName')
        ..add(serializers.serialize(
          s3BucketName,
          specifiedType: const FullType(String),
        ));
    }
    if (s3KeyPrefix != null) {
      result$
        ..add('s3KeyPrefix')
        ..add(serializers.serialize(
          s3KeyPrefix,
          specifiedType: const FullType(String),
        ));
    }
    if (s3KmsKeyArn != null) {
      result$
        ..add('s3KmsKeyArn')
        ..add(serializers.serialize(
          s3KmsKeyArn,
          specifiedType: const FullType(String),
        ));
    }
    if (snsTopicArn != null) {
      result$
        ..add('snsTopicARN')
        ..add(serializers.serialize(
          snsTopicArn,
          specifiedType: const FullType(String),
        ));
    }
    if (configSnapshotDeliveryProperties != null) {
      result$
        ..add('configSnapshotDeliveryProperties')
        ..add(serializers.serialize(
          configSnapshotDeliveryProperties,
          specifiedType: const FullType(_i2.ConfigSnapshotDeliveryProperties),
        ));
    }
    return result$;
  }
}
