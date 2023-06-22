// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.logging_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'logging_config.g.dart';

/// Contains logging configuration information for an extension.
abstract class LoggingConfig
    with _i1.AWSEquatable<LoggingConfig>
    implements Built<LoggingConfig, LoggingConfigBuilder> {
  /// Contains logging configuration information for an extension.
  factory LoggingConfig({
    required String logRoleArn,
    required String logGroupName,
  }) {
    return _$LoggingConfig._(
      logRoleArn: logRoleArn,
      logGroupName: logGroupName,
    );
  }

  /// Contains logging configuration information for an extension.
  factory LoggingConfig.build([void Function(LoggingConfigBuilder) updates]) =
      _$LoggingConfig;

  const LoggingConfig._();

  static const List<_i2.SmithySerializer<LoggingConfig>> serializers = [
    LoggingConfigAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LoggingConfigBuilder b) {}

  /// The Amazon Resource Name (ARN) of the role that CloudFormation should assume when sending log entries to CloudWatch Logs.
  String get logRoleArn;

  /// The Amazon CloudWatch Logs group to which CloudFormation sends error logging information when invoking the extension's handlers.
  String get logGroupName;
  @override
  List<Object?> get props => [
        logRoleArn,
        logGroupName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LoggingConfig')
      ..add(
        'logRoleArn',
        logRoleArn,
      )
      ..add(
        'logGroupName',
        logGroupName,
      );
    return helper.toString();
  }
}

class LoggingConfigAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<LoggingConfig> {
  const LoggingConfigAwsQuerySerializer() : super('LoggingConfig');

  @override
  Iterable<Type> get types => const [
        LoggingConfig,
        _$LoggingConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  LoggingConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoggingConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LogRoleArn':
          result.logRoleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LogGroupName':
          result.logGroupName = (serializers.deserialize(
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
    LoggingConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LoggingConfigResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final LoggingConfig(:logRoleArn, :logGroupName) = object;
    result$
      ..add(const _i2.XmlElementName('LogRoleArn'))
      ..add(serializers.serialize(
        logRoleArn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('LogGroupName'))
      ..add(serializers.serialize(
        logGroupName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
