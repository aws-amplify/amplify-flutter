// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_log_s3_destination_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'verified_access_log_s3_destination_options.g.dart';

/// Options for Amazon S3 as a logging destination.
abstract class VerifiedAccessLogS3DestinationOptions
    with
        _i1.AWSEquatable<VerifiedAccessLogS3DestinationOptions>
    implements
        Built<VerifiedAccessLogS3DestinationOptions,
            VerifiedAccessLogS3DestinationOptionsBuilder> {
  /// Options for Amazon S3 as a logging destination.
  factory VerifiedAccessLogS3DestinationOptions({
    bool? enabled,
    String? bucketName,
    String? prefix,
    String? bucketOwner,
  }) {
    enabled ??= false;
    return _$VerifiedAccessLogS3DestinationOptions._(
      enabled: enabled,
      bucketName: bucketName,
      prefix: prefix,
      bucketOwner: bucketOwner,
    );
  }

  /// Options for Amazon S3 as a logging destination.
  factory VerifiedAccessLogS3DestinationOptions.build(
      [void Function(VerifiedAccessLogS3DestinationOptionsBuilder)
          updates]) = _$VerifiedAccessLogS3DestinationOptions;

  const VerifiedAccessLogS3DestinationOptions._();

  static const List<_i2.SmithySerializer<VerifiedAccessLogS3DestinationOptions>>
      serializers = [VerifiedAccessLogS3DestinationOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VerifiedAccessLogS3DestinationOptionsBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether logging is enabled.
  bool get enabled;

  /// The bucket name.
  String? get bucketName;

  /// The bucket prefix.
  String? get prefix;

  /// The ID of the Amazon Web Services account that owns the Amazon S3 bucket.
  String? get bucketOwner;
  @override
  List<Object?> get props => [
        enabled,
        bucketName,
        prefix,
        bucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('VerifiedAccessLogS3DestinationOptions')
          ..add(
            'enabled',
            enabled,
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

class VerifiedAccessLogS3DestinationOptionsEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<VerifiedAccessLogS3DestinationOptions> {
  const VerifiedAccessLogS3DestinationOptionsEc2QuerySerializer()
      : super('VerifiedAccessLogS3DestinationOptions');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessLogS3DestinationOptions,
        _$VerifiedAccessLogS3DestinationOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessLogS3DestinationOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessLogS3DestinationOptionsBuilder();
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
        case 'BucketName':
          result.bucketName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BucketOwner':
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
    VerifiedAccessLogS3DestinationOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessLogS3DestinationOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessLogS3DestinationOptions(
      :enabled,
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
