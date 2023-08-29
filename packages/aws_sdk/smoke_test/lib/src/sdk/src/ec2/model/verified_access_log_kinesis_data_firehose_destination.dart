// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_log_kinesis_data_firehose_destination; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_delivery_status.dart';

part 'verified_access_log_kinesis_data_firehose_destination.g.dart';

/// Options for Kinesis as a logging destination.
abstract class VerifiedAccessLogKinesisDataFirehoseDestination
    with
        _i1.AWSEquatable<VerifiedAccessLogKinesisDataFirehoseDestination>
    implements
        Built<VerifiedAccessLogKinesisDataFirehoseDestination,
            VerifiedAccessLogKinesisDataFirehoseDestinationBuilder> {
  /// Options for Kinesis as a logging destination.
  factory VerifiedAccessLogKinesisDataFirehoseDestination({
    bool? enabled,
    VerifiedAccessLogDeliveryStatus? deliveryStatus,
    String? deliveryStream,
  }) {
    enabled ??= false;
    return _$VerifiedAccessLogKinesisDataFirehoseDestination._(
      enabled: enabled,
      deliveryStatus: deliveryStatus,
      deliveryStream: deliveryStream,
    );
  }

  /// Options for Kinesis as a logging destination.
  factory VerifiedAccessLogKinesisDataFirehoseDestination.build(
      [void Function(VerifiedAccessLogKinesisDataFirehoseDestinationBuilder)
          updates]) = _$VerifiedAccessLogKinesisDataFirehoseDestination;

  const VerifiedAccessLogKinesisDataFirehoseDestination._();

  static const List<
          _i2.SmithySerializer<VerifiedAccessLogKinesisDataFirehoseDestination>>
      serializers = [
    VerifiedAccessLogKinesisDataFirehoseDestinationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VerifiedAccessLogKinesisDataFirehoseDestinationBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether logging is enabled.
  bool get enabled;

  /// The delivery status.
  VerifiedAccessLogDeliveryStatus? get deliveryStatus;

  /// The ID of the delivery stream.
  String? get deliveryStream;
  @override
  List<Object?> get props => [
        enabled,
        deliveryStatus,
        deliveryStream,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'VerifiedAccessLogKinesisDataFirehoseDestination')
      ..add(
        'enabled',
        enabled,
      )
      ..add(
        'deliveryStatus',
        deliveryStatus,
      )
      ..add(
        'deliveryStream',
        deliveryStream,
      );
    return helper.toString();
  }
}

class VerifiedAccessLogKinesisDataFirehoseDestinationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        VerifiedAccessLogKinesisDataFirehoseDestination> {
  const VerifiedAccessLogKinesisDataFirehoseDestinationEc2QuerySerializer()
      : super('VerifiedAccessLogKinesisDataFirehoseDestination');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessLogKinesisDataFirehoseDestination,
        _$VerifiedAccessLogKinesisDataFirehoseDestination,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessLogKinesisDataFirehoseDestination deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessLogKinesisDataFirehoseDestinationBuilder();
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
        case 'deliveryStream':
          result.deliveryStream = (serializers.deserialize(
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
    VerifiedAccessLogKinesisDataFirehoseDestination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessLogKinesisDataFirehoseDestinationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessLogKinesisDataFirehoseDestination(
      :enabled,
      :deliveryStatus,
      :deliveryStream
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
    if (deliveryStream != null) {
      result$
        ..add(const _i2.XmlElementName('DeliveryStream'))
        ..add(serializers.serialize(
          deliveryStream,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
