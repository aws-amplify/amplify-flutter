// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_logging_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_config.dart' as _i2;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_amplify_logging_constraints.dart'
    as _i4;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_logging_cloud_watch_config.dart'
    as _i5;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_logging_remote_config.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class AWSLoggingConfig extends _i1.SmithyUnion<AWSLoggingConfig> {
  const AWSLoggingConfig._();

  factory AWSLoggingConfig.cloudWatch({
    required String logGroupName,
    required String region,
    bool? enable,
    _i2.LocalStorageSize? localStoreMaxSize,
    Duration? flushInterval,
    _i3.AWSLoggingRemoteConfig? defaultRemoteConfiguration,
    _i4.AWSAmplifyLoggingConstraints? loggingConstraints,
  }) =>
      AWSLoggingConfigCloudWatch$(_i5.AWSLoggingCloudWatchConfig(
        logGroupName: logGroupName,
        region: region,
        enable: enable,
        localStoreMaxSize: localStoreMaxSize,
        flushInterval: flushInterval,
        defaultRemoteConfiguration: defaultRemoteConfiguration,
        loggingConstraints: loggingConstraints,
      ));

  const factory AWSLoggingConfig.sdkUnknown(
    String name,
    Object value,
  ) = AWSLoggingConfigSdkUnknown$;

  static const List<_i1.SmithySerializer<AWSLoggingConfig>> serializers = [
    AWSLoggingConfigSerializer()
  ];

  _i5.AWSLoggingCloudWatchConfig? get cloudWatch => null;
  @override
  Object get value => (cloudWatch)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AWSLoggingConfig');
    if (cloudWatch != null) {
      helper.add(
        r'cloudWatch',
        cloudWatch,
      );
    }
    return helper.toString();
  }
}

final class AWSLoggingConfigCloudWatch$ extends AWSLoggingConfig {
  const AWSLoggingConfigCloudWatch$(this.cloudWatch) : super._();

  @override
  final _i5.AWSLoggingCloudWatchConfig cloudWatch;

  @override
  String get name => 'cloudWatch';
}

final class AWSLoggingConfigSdkUnknown$ extends AWSLoggingConfig {
  const AWSLoggingConfigSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class AWSLoggingConfigSerializer
    extends _i1.StructuredSmithySerializer<AWSLoggingConfig> {
  const AWSLoggingConfigSerializer() : super('AWSLoggingConfig');

  @override
  Iterable<Type> get types => const [
        AWSLoggingConfig,
        AWSLoggingConfigCloudWatch$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSLoggingConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'cloudWatch':
        return AWSLoggingConfigCloudWatch$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i5.AWSLoggingCloudWatchConfig),
        ) as _i5.AWSLoggingCloudWatchConfig));
    }
    return AWSLoggingConfig.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSLoggingConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        AWSLoggingConfigCloudWatch$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i5.AWSLoggingCloudWatchConfig),
          ),
        AWSLoggingConfigSdkUnknown$(:final value) => value,
      },
    ];
  }
}
