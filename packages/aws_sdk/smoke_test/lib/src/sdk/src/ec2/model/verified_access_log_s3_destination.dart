// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_log_s3_destination; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_delivery_status.dart';

part 'verified_access_log_s3_destination.g.dart';

/// Options for Amazon S3 as a logging destination.
abstract class VerifiedAccessLogS3Destination
    with
        _i1.AWSEquatable<VerifiedAccessLogS3Destination>
    implements
        Built<VerifiedAccessLogS3Destination,
            VerifiedAccessLogS3DestinationBuilder> {
  /// Options for Amazon S3 as a logging destination.
  factory VerifiedAccessLogS3Destination({
    bool? enabled,
    VerifiedAccessLogDeliveryStatus? deliveryStatus,
    String? bucketName,
    String? prefix,
    String? bucketOwner,
  }) {
    enabled ??= false;
    return _$VerifiedAccessLogS3Destination._(
      enabled: enabled,
      deliveryStatus: deliveryStatus,
      bucketName: bucketName,
      prefix: prefix,
      bucketOwner: bucketOwner,
    );
  }

  /// Options for Amazon S3 as a logging destination.
  factory VerifiedAccessLogS3Destination.build(
          [void Function(VerifiedAccessLogS3DestinationBuilder) updates]) =
      _$VerifiedAccessLogS3Destination;

  const VerifiedAccessLogS3Destination._();

  static const List<_i2.SmithySerializer<VerifiedAccessLogS3Destination>>
      serializers = [VerifiedAccessLogS3DestinationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VerifiedAccessLogS3DestinationBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether logging is enabled.
  bool get enabled;

  /// The delivery status.
  VerifiedAccessLogDeliveryStatus? get deliveryStatus;

  /// The bucket name.
  String? get bucketName;

  /// The bucket prefix.
  String? get prefix;

  /// The Amazon Web Services account number that owns the bucket.
  String? get bucketOwner;
  @override
  List<Object?> get props => [
        enabled,
        deliveryStatus,
        bucketName,
        prefix,
        bucketOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifiedAccessLogS3Destination')
      ..add(
        'enabled',
        enabled,
      )
      ..add(
        'deliveryStatus',
        deliveryStatus,
      )
      ..add(
        'bucketName',
        bucketName,
      )
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'bucketOwner',
        bucketOwner,
      );
    return helper.toString();
  }
}

class VerifiedAccessLogS3DestinationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VerifiedAccessLogS3Destination> {
  const VerifiedAccessLogS3DestinationEc2QuerySerializer()
      : super('VerifiedAccessLogS3Destination');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessLogS3Destination,
        _$VerifiedAccessLogS3Destination,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessLogS3Destination deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessLogS3DestinationBuilder();
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
        case 'bucketName':
          result.bucketName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'bucketOwner':
          result.bucketOwner = (serializers.deserialize(
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
    VerifiedAccessLogS3Destination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessLogS3DestinationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessLogS3Destination(
      :enabled,
      :deliveryStatus,
      :bucketName,
      :prefix,
      :bucketOwner
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
    if (bucketName != null) {
      result$
        ..add(const _i2.XmlElementName('BucketName'))
        ..add(serializers.serialize(
          bucketName,
          specifiedType: const FullType(String),
        ));
    }
    if (prefix != null) {
      result$
        ..add(const _i2.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    if (bucketOwner != null) {
      result$
        ..add(const _i2.XmlElementName('BucketOwner'))
        ..add(serializers.serialize(
          bucketOwner,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
