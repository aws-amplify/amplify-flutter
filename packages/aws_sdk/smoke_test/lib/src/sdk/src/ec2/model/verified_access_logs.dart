// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_logs; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_cloud_watch_logs_destination.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_kinesis_data_firehose_destination.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_s3_destination.dart';

part 'verified_access_logs.g.dart';

/// Describes the options for Verified Access logs.
abstract class VerifiedAccessLogs
    with _i1.AWSEquatable<VerifiedAccessLogs>
    implements Built<VerifiedAccessLogs, VerifiedAccessLogsBuilder> {
  /// Describes the options for Verified Access logs.
  factory VerifiedAccessLogs({
    VerifiedAccessLogS3Destination? s3,
    VerifiedAccessLogCloudWatchLogsDestination? cloudWatchLogs,
    VerifiedAccessLogKinesisDataFirehoseDestination? kinesisDataFirehose,
    String? logVersion,
    bool? includeTrustContext,
  }) {
    includeTrustContext ??= false;
    return _$VerifiedAccessLogs._(
      s3: s3,
      cloudWatchLogs: cloudWatchLogs,
      kinesisDataFirehose: kinesisDataFirehose,
      logVersion: logVersion,
      includeTrustContext: includeTrustContext,
    );
  }

  /// Describes the options for Verified Access logs.
  factory VerifiedAccessLogs.build(
          [void Function(VerifiedAccessLogsBuilder) updates]) =
      _$VerifiedAccessLogs;

  const VerifiedAccessLogs._();

  static const List<_i2.SmithySerializer<VerifiedAccessLogs>> serializers = [
    VerifiedAccessLogsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VerifiedAccessLogsBuilder b) {
    b.includeTrustContext = false;
  }

  /// Amazon S3 logging options.
  VerifiedAccessLogS3Destination? get s3;

  /// CloudWatch Logs logging destination.
  VerifiedAccessLogCloudWatchLogsDestination? get cloudWatchLogs;

  /// Kinesis logging destination.
  VerifiedAccessLogKinesisDataFirehoseDestination? get kinesisDataFirehose;

  /// Describes current setting for the logging version.
  String? get logVersion;

  /// Describes current setting for including trust data into the logs.
  bool get includeTrustContext;
  @override
  List<Object?> get props => [
        s3,
        cloudWatchLogs,
        kinesisDataFirehose,
        logVersion,
        includeTrustContext,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifiedAccessLogs')
      ..add(
        's3',
        s3,
      )
      ..add(
        'cloudWatchLogs',
        cloudWatchLogs,
      )
      ..add(
        'kinesisDataFirehose',
        kinesisDataFirehose,
      )
      ..add(
        'logVersion',
        logVersion,
      )
      ..add(
        'includeTrustContext',
        includeTrustContext,
      );
    return helper.toString();
  }
}

class VerifiedAccessLogsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VerifiedAccessLogs> {
  const VerifiedAccessLogsEc2QuerySerializer() : super('VerifiedAccessLogs');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessLogs,
        _$VerifiedAccessLogs,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessLogs deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessLogsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 's3':
          result.s3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessLogS3Destination),
          ) as VerifiedAccessLogS3Destination));
        case 'cloudWatchLogs':
          result.cloudWatchLogs.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(VerifiedAccessLogCloudWatchLogsDestination),
          ) as VerifiedAccessLogCloudWatchLogsDestination));
        case 'kinesisDataFirehose':
          result.kinesisDataFirehose.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(VerifiedAccessLogKinesisDataFirehoseDestination),
          ) as VerifiedAccessLogKinesisDataFirehoseDestination));
        case 'logVersion':
          result.logVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'includeTrustContext':
          result.includeTrustContext = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VerifiedAccessLogs object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessLogsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessLogs(
      :s3,
      :cloudWatchLogs,
      :kinesisDataFirehose,
      :logVersion,
      :includeTrustContext
    ) = object;
    if (s3 != null) {
      result$
        ..add(const _i2.XmlElementName('S3'))
        ..add(serializers.serialize(
          s3,
          specifiedType: const FullType(VerifiedAccessLogS3Destination),
        ));
    }
    if (cloudWatchLogs != null) {
      result$
        ..add(const _i2.XmlElementName('CloudWatchLogs'))
        ..add(serializers.serialize(
          cloudWatchLogs,
          specifiedType:
              const FullType(VerifiedAccessLogCloudWatchLogsDestination),
        ));
    }
    if (kinesisDataFirehose != null) {
      result$
        ..add(const _i2.XmlElementName('KinesisDataFirehose'))
        ..add(serializers.serialize(
          kinesisDataFirehose,
          specifiedType:
              const FullType(VerifiedAccessLogKinesisDataFirehoseDestination),
        ));
    }
    if (logVersion != null) {
      result$
        ..add(const _i2.XmlElementName('LogVersion'))
        ..add(serializers.serialize(
          logVersion,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('IncludeTrustContext'))
      ..add(serializers.serialize(
        includeTrustContext,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
