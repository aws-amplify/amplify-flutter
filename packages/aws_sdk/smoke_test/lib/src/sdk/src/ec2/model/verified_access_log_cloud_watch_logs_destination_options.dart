// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_log_cloud_watch_logs_destination_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'verified_access_log_cloud_watch_logs_destination_options.g.dart';

/// Options for CloudWatch Logs as a logging destination.
abstract class VerifiedAccessLogCloudWatchLogsDestinationOptions
    with
        _i1.AWSEquatable<VerifiedAccessLogCloudWatchLogsDestinationOptions>
    implements
        Built<VerifiedAccessLogCloudWatchLogsDestinationOptions,
            VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder> {
  /// Options for CloudWatch Logs as a logging destination.
  factory VerifiedAccessLogCloudWatchLogsDestinationOptions({
    bool? enabled,
    String? logGroup,
  }) {
    enabled ??= false;
    return _$VerifiedAccessLogCloudWatchLogsDestinationOptions._(
      enabled: enabled,
      logGroup: logGroup,
    );
  }

  /// Options for CloudWatch Logs as a logging destination.
  factory VerifiedAccessLogCloudWatchLogsDestinationOptions.build(
      [void Function(VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder)
          updates]) = _$VerifiedAccessLogCloudWatchLogsDestinationOptions;

  const VerifiedAccessLogCloudWatchLogsDestinationOptions._();

  static const List<
          _i2
          .SmithySerializer<VerifiedAccessLogCloudWatchLogsDestinationOptions>>
      serializers = [
    VerifiedAccessLogCloudWatchLogsDestinationOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether logging is enabled.
  bool get enabled;

  /// The ID of the CloudWatch Logs log group.
  String? get logGroup;
  @override
  List<Object?> get props => [
        enabled,
        logGroup,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'VerifiedAccessLogCloudWatchLogsDestinationOptions')
      ..add(
        'enabled',
        enabled,
      )
      ..add(
        'logGroup',
        logGroup,
      );
    return helper.toString();
  }
}

class VerifiedAccessLogCloudWatchLogsDestinationOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        VerifiedAccessLogCloudWatchLogsDestinationOptions> {
  const VerifiedAccessLogCloudWatchLogsDestinationOptionsEc2QuerySerializer()
      : super('VerifiedAccessLogCloudWatchLogsDestinationOptions');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessLogCloudWatchLogsDestinationOptions,
        _$VerifiedAccessLogCloudWatchLogsDestinationOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessLogCloudWatchLogsDestinationOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessLogCloudWatchLogsDestinationOptionsBuilder();
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
        case 'LogGroup':
          result.logGroup = (serializers.deserialize(
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
    VerifiedAccessLogCloudWatchLogsDestinationOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessLogCloudWatchLogsDestinationOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessLogCloudWatchLogsDestinationOptions(
      :enabled,
      :logGroup
    ) = object;
    result$
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
    if (logGroup != null) {
      result$
        ..add(const _i2.XmlElementName('LogGroup'))
        ..add(serializers.serialize(
          logGroup,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
