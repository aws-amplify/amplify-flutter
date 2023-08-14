// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_log_kinesis_data_firehose_destination_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'verified_access_log_kinesis_data_firehose_destination_options.g.dart';

/// Describes Amazon Kinesis Data Firehose logging options.
abstract class VerifiedAccessLogKinesisDataFirehoseDestinationOptions
    with
        _i1.AWSEquatable<VerifiedAccessLogKinesisDataFirehoseDestinationOptions>
    implements
        Built<VerifiedAccessLogKinesisDataFirehoseDestinationOptions,
            VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder> {
  /// Describes Amazon Kinesis Data Firehose logging options.
  factory VerifiedAccessLogKinesisDataFirehoseDestinationOptions({
    bool? enabled,
    String? deliveryStream,
  }) {
    enabled ??= false;
    return _$VerifiedAccessLogKinesisDataFirehoseDestinationOptions._(
      enabled: enabled,
      deliveryStream: deliveryStream,
    );
  }

  /// Describes Amazon Kinesis Data Firehose logging options.
  factory VerifiedAccessLogKinesisDataFirehoseDestinationOptions.build(
      [void Function(
              VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder)
          updates]) = _$VerifiedAccessLogKinesisDataFirehoseDestinationOptions;

  const VerifiedAccessLogKinesisDataFirehoseDestinationOptions._();

  static const List<
          _i2.SmithySerializer<
              VerifiedAccessLogKinesisDataFirehoseDestinationOptions>>
      serializers = [
    VerifiedAccessLogKinesisDataFirehoseDestinationOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether logging is enabled.
  bool get enabled;

  /// The ID of the delivery stream.
  String? get deliveryStream;
  @override
  List<Object?> get props => [
        enabled,
        deliveryStream,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'VerifiedAccessLogKinesisDataFirehoseDestinationOptions')
      ..add(
        'enabled',
        enabled,
      )
      ..add(
        'deliveryStream',
        deliveryStream,
      );
    return helper.toString();
  }
}

class VerifiedAccessLogKinesisDataFirehoseDestinationOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        VerifiedAccessLogKinesisDataFirehoseDestinationOptions> {
  const VerifiedAccessLogKinesisDataFirehoseDestinationOptionsEc2QuerySerializer()
      : super('VerifiedAccessLogKinesisDataFirehoseDestinationOptions');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessLogKinesisDataFirehoseDestinationOptions,
        _$VerifiedAccessLogKinesisDataFirehoseDestinationOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessLogKinesisDataFirehoseDestinationOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        VerifiedAccessLogKinesisDataFirehoseDestinationOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Enabled':
          result.enabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'DeliveryStream':
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
    VerifiedAccessLogKinesisDataFirehoseDestinationOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessLogKinesisDataFirehoseDestinationOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessLogKinesisDataFirehoseDestinationOptions(
      :enabled,
      :deliveryStream
    ) = object;
    result$
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
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
