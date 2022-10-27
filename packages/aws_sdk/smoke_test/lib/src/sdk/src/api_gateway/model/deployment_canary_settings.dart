// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.deployment_canary_settings; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'deployment_canary_settings.g.dart';

/// The input configuration for a canary deployment.
abstract class DeploymentCanarySettings
    with _i1.AWSEquatable<DeploymentCanarySettings>
    implements
        Built<DeploymentCanarySettings, DeploymentCanarySettingsBuilder> {
  /// The input configuration for a canary deployment.
  factory DeploymentCanarySettings({
    double? percentTraffic,
    Map<String, String>? stageVariableOverrides,
    bool? useStageCache,
  }) {
    return _$DeploymentCanarySettings._(
      percentTraffic: percentTraffic,
      stageVariableOverrides: stageVariableOverrides == null
          ? null
          : _i2.BuiltMap(stageVariableOverrides),
      useStageCache: useStageCache,
    );
  }

  /// The input configuration for a canary deployment.
  factory DeploymentCanarySettings.build(
          [void Function(DeploymentCanarySettingsBuilder) updates]) =
      _$DeploymentCanarySettings;

  const DeploymentCanarySettings._();

  static const List<_i3.SmithySerializer> serializers = [
    DeploymentCanarySettingsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeploymentCanarySettingsBuilder b) {}

  /// The percentage (0.0-100.0) of traffic routed to the canary deployment.
  double? get percentTraffic;

  /// A stage variable overrides used for the canary release deployment. They can override existing stage variables or add new stage variables for the canary release deployment. These stage variables are represented as a string-to-string map between stage variable names and their values.
  _i2.BuiltMap<String, String>? get stageVariableOverrides;

  /// A Boolean flag to indicate whether the canary release deployment uses the stage cache or not.
  bool? get useStageCache;
  @override
  List<Object?> get props => [
        percentTraffic,
        stageVariableOverrides,
        useStageCache,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeploymentCanarySettings');
    helper.add(
      'percentTraffic',
      percentTraffic,
    );
    helper.add(
      'stageVariableOverrides',
      stageVariableOverrides,
    );
    helper.add(
      'useStageCache',
      useStageCache,
    );
    return helper.toString();
  }
}

class DeploymentCanarySettingsRestJson1Serializer
    extends _i3.StructuredSmithySerializer<DeploymentCanarySettings> {
  const DeploymentCanarySettingsRestJson1Serializer()
      : super('DeploymentCanarySettings');

  @override
  Iterable<Type> get types => const [
        DeploymentCanarySettings,
        _$DeploymentCanarySettings,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeploymentCanarySettings deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeploymentCanarySettingsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'percentTraffic':
          if (value != null) {
            result.percentTraffic = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'stageVariableOverrides':
          if (value != null) {
            result.stageVariableOverrides.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i2.BuiltMap<String, String>));
          }
          break;
        case 'useStageCache':
          if (value != null) {
            result.useStageCache = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DeploymentCanarySettings);
    final result = <Object?>[];
    if (payload.percentTraffic != null) {
      result
        ..add('percentTraffic')
        ..add(serializers.serialize(
          payload.percentTraffic!,
          specifiedType: const FullType(double),
        ));
    }
    if (payload.stageVariableOverrides != null) {
      result
        ..add('stageVariableOverrides')
        ..add(serializers.serialize(
          payload.stageVariableOverrides!,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.useStageCache != null) {
      result
        ..add('useStageCache')
        ..add(serializers.serialize(
          payload.useStageCache!,
          specifiedType: const FullType(bool),
        ));
    }
    return result;
  }
}
