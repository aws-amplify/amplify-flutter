// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_log_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_cloud_watch_logs_destination_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_kinesis_data_firehose_destination_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_s3_destination_options.dart';

part 'verified_access_log_options.g.dart';

/// Options for Verified Access logs.
abstract class VerifiedAccessLogOptions
    with _i1.AWSEquatable<VerifiedAccessLogOptions>
    implements
        Built<VerifiedAccessLogOptions, VerifiedAccessLogOptionsBuilder> {
  /// Options for Verified Access logs.
  factory VerifiedAccessLogOptions({
    VerifiedAccessLogS3DestinationOptions? s3,
    VerifiedAccessLogCloudWatchLogsDestinationOptions? cloudWatchLogs,
    VerifiedAccessLogKinesisDataFirehoseDestinationOptions? kinesisDataFirehose,
    String? logVersion,
    bool? includeTrustContext,
  }) {
    includeTrustContext ??= false;
    return _$VerifiedAccessLogOptions._(
      s3: s3,
      cloudWatchLogs: cloudWatchLogs,
      kinesisDataFirehose: kinesisDataFirehose,
      logVersion: logVersion,
      includeTrustContext: includeTrustContext,
    );
  }

  /// Options for Verified Access logs.
  factory VerifiedAccessLogOptions.build(
          [void Function(VerifiedAccessLogOptionsBuilder) updates]) =
      _$VerifiedAccessLogOptions;

  const VerifiedAccessLogOptions._();

  static const List<_i2.SmithySerializer<VerifiedAccessLogOptions>>
      serializers = [VerifiedAccessLogOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VerifiedAccessLogOptionsBuilder b) {
    b.includeTrustContext = false;
  }

  /// Sends Verified Access logs to Amazon S3.
  VerifiedAccessLogS3DestinationOptions? get s3;

  /// Sends Verified Access logs to CloudWatch Logs.
  VerifiedAccessLogCloudWatchLogsDestinationOptions? get cloudWatchLogs;

  /// Sends Verified Access logs to Kinesis.
  VerifiedAccessLogKinesisDataFirehoseDestinationOptions?
      get kinesisDataFirehose;

  /// The logging version to use.
  ///
  /// Valid values: `ocsf-0.1` | `ocsf-1.0.0-rc.2`
  String? get logVersion;

  /// Include trust data sent by trust providers into the logs.
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
    final helper = newBuiltValueToStringHelper('VerifiedAccessLogOptions')
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

class VerifiedAccessLogOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VerifiedAccessLogOptions> {
  const VerifiedAccessLogOptionsEc2QuerySerializer()
      : super('VerifiedAccessLogOptions');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessLogOptions,
        _$VerifiedAccessLogOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessLogOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessLogOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'S3':
          result.s3.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(VerifiedAccessLogS3DestinationOptions),
          ) as VerifiedAccessLogS3DestinationOptions));
        case 'CloudWatchLogs':
          result.cloudWatchLogs.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
                VerifiedAccessLogCloudWatchLogsDestinationOptions),
          ) as VerifiedAccessLogCloudWatchLogsDestinationOptions));
        case 'KinesisDataFirehose':
          result.kinesisDataFirehose.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
                VerifiedAccessLogKinesisDataFirehoseDestinationOptions),
          ) as VerifiedAccessLogKinesisDataFirehoseDestinationOptions));
        case 'LogVersion':
          result.logVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IncludeTrustContext':
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
    VerifiedAccessLogOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessLogOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessLogOptions(
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
          specifiedType: const FullType(VerifiedAccessLogS3DestinationOptions),
        ));
    }
    if (cloudWatchLogs != null) {
      result$
        ..add(const _i2.XmlElementName('CloudWatchLogs'))
        ..add(serializers.serialize(
          cloudWatchLogs,
          specifiedType:
              const FullType(VerifiedAccessLogCloudWatchLogsDestinationOptions),
        ));
    }
    if (kinesisDataFirehose != null) {
      result$
        ..add(const _i2.XmlElementName('KinesisDataFirehose'))
        ..add(serializers.serialize(
          kinesisDataFirehose,
          specifiedType: const FullType(
              VerifiedAccessLogKinesisDataFirehoseDestinationOptions),
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
