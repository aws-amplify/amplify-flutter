// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cloud_watch_log_options_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'cloud_watch_log_options_specification.g.dart';

/// Options for sending VPN tunnel logs to CloudWatch.
abstract class CloudWatchLogOptionsSpecification
    with
        _i1.AWSEquatable<CloudWatchLogOptionsSpecification>
    implements
        Built<CloudWatchLogOptionsSpecification,
            CloudWatchLogOptionsSpecificationBuilder> {
  /// Options for sending VPN tunnel logs to CloudWatch.
  factory CloudWatchLogOptionsSpecification({
    bool? logEnabled,
    String? logGroupArn,
    String? logOutputFormat,
  }) {
    logEnabled ??= false;
    return _$CloudWatchLogOptionsSpecification._(
      logEnabled: logEnabled,
      logGroupArn: logGroupArn,
      logOutputFormat: logOutputFormat,
    );
  }

  /// Options for sending VPN tunnel logs to CloudWatch.
  factory CloudWatchLogOptionsSpecification.build(
          [void Function(CloudWatchLogOptionsSpecificationBuilder) updates]) =
      _$CloudWatchLogOptionsSpecification;

  const CloudWatchLogOptionsSpecification._();

  static const List<_i2.SmithySerializer<CloudWatchLogOptionsSpecification>>
      serializers = [CloudWatchLogOptionsSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CloudWatchLogOptionsSpecificationBuilder b) {
    b.logEnabled = false;
  }

  /// Enable or disable VPN tunnel logging feature. Default value is `False`.
  ///
  /// Valid values: `True` | `False`
  bool get logEnabled;

  /// The Amazon Resource Name (ARN) of the CloudWatch log group to send logs to.
  String? get logGroupArn;

  /// Set log format. Default format is `json`.
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
    final helper =
        newBuiltValueToStringHelper('CloudWatchLogOptionsSpecification')
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

class CloudWatchLogOptionsSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CloudWatchLogOptionsSpecification> {
  const CloudWatchLogOptionsSpecificationEc2QuerySerializer()
      : super('CloudWatchLogOptionsSpecification');

  @override
  Iterable<Type> get types => const [
        CloudWatchLogOptionsSpecification,
        _$CloudWatchLogOptionsSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CloudWatchLogOptionsSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CloudWatchLogOptionsSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LogEnabled':
          result.logEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'LogGroupArn':
          result.logGroupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LogOutputFormat':
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
    CloudWatchLogOptionsSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CloudWatchLogOptionsSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CloudWatchLogOptionsSpecification(
      :logEnabled,
      :logGroupArn,
      :logOutputFormat
    ) = object;
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
