// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cloud_watch_log_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'cloud_watch_log_options.g.dart';

/// Options for sending VPN tunnel logs to CloudWatch.
abstract class CloudWatchLogOptions
    with _i1.AWSEquatable<CloudWatchLogOptions>
    implements Built<CloudWatchLogOptions, CloudWatchLogOptionsBuilder> {
  /// Options for sending VPN tunnel logs to CloudWatch.
  factory CloudWatchLogOptions({
    bool? logEnabled,
    String? logGroupArn,
    String? logOutputFormat,
  }) {
    logEnabled ??= false;
    return _$CloudWatchLogOptions._(
      logEnabled: logEnabled,
      logGroupArn: logGroupArn,
      logOutputFormat: logOutputFormat,
    );
  }

  /// Options for sending VPN tunnel logs to CloudWatch.
  factory CloudWatchLogOptions.build(
          [void Function(CloudWatchLogOptionsBuilder) updates]) =
      _$CloudWatchLogOptions;

  const CloudWatchLogOptions._();

  static const List<_i2.SmithySerializer<CloudWatchLogOptions>> serializers = [
    CloudWatchLogOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CloudWatchLogOptionsBuilder b) {
    b.logEnabled = false;
  }

  /// Status of VPN tunnel logging feature. Default value is `False`.
  ///
  /// Valid values: `True` | `False`
  bool get logEnabled;

  /// The Amazon Resource Name (ARN) of the CloudWatch log group to send logs to.
  String? get logGroupArn;

  /// Configured log format. Default format is `json`.
  ///
  /// Valid values: `json` | `text`
  String? get logOutputFormat;
  @override
  List<Object?> get props => [
        logEnabled,
        logGroupArn,
        logOutputFormat,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CloudWatchLogOptions')
      ..add(
        'logEnabled',
        logEnabled,
      )
      ..add(
        'logGroupArn',
        logGroupArn,
      )
      ..add(
        'logOutputFormat',
        logOutputFormat,
      );
    return helper.toString();
  }
}

class CloudWatchLogOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CloudWatchLogOptions> {
  const CloudWatchLogOptionsEc2QuerySerializer()
      : super('CloudWatchLogOptions');

  @override
  Iterable<Type> get types => const [
        CloudWatchLogOptions,
        _$CloudWatchLogOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CloudWatchLogOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CloudWatchLogOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'logEnabled':
          result.logEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'logGroupArn':
          result.logGroupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'logOutputFormat':
          result.logOutputFormat = (serializers.deserialize(
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
    CloudWatchLogOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CloudWatchLogOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CloudWatchLogOptions(:logEnabled, :logGroupArn, :logOutputFormat) =
        object;
    result$
      ..add(const _i2.XmlElementName('LogEnabled'))
      ..add(serializers.serialize(
        logEnabled,
        specifiedType: const FullType(bool),
      ));
    if (logGroupArn != null) {
      result$
        ..add(const _i2.XmlElementName('LogGroupArn'))
        ..add(serializers.serialize(
          logGroupArn,
          specifiedType: const FullType(String),
        ));
    }
    if (logOutputFormat != null) {
      result$
        ..add(const _i2.XmlElementName('LogOutputFormat'))
        ..add(serializers.serialize(
          logOutputFormat,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
