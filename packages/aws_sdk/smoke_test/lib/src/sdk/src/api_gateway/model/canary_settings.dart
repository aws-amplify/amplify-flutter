// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.canary_settings; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'canary_settings.g.dart';

/// Configuration settings of a canary deployment.
abstract class CanarySettings
    with _i1.AWSEquatable<CanarySettings>
    implements Built<CanarySettings, CanarySettingsBuilder> {
  /// Configuration settings of a canary deployment.
  factory CanarySettings({
    double? percentTraffic,
    String? deploymentId,
    Map<String, String>? stageVariableOverrides,
    bool? useStageCache,
  }) {
    percentTraffic ??= 0;
    useStageCache ??= false;
    return _$CanarySettings._(
      percentTraffic: percentTraffic,
      deploymentId: deploymentId,
      stageVariableOverrides: stageVariableOverrides == null
          ? null
          : _i2.BuiltMap(stageVariableOverrides),
      useStageCache: useStageCache,
    );
  }

  /// Configuration settings of a canary deployment.
  factory CanarySettings.build([void Function(CanarySettingsBuilder) updates]) =
      _$CanarySettings;

  const CanarySettings._();

  static const List<_i3.SmithySerializer<CanarySettings>> serializers = [
    CanarySettingsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CanarySettingsBuilder b) {
    b.percentTraffic = 0;
    b.useStageCache = false;
  }

  /// The percent (0-100) of traffic diverted to a canary deployment.
  double get percentTraffic;

  /// The ID of the canary deployment.
  String? get deploymentId;

  /// Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary. These stage variables are represented as a string-to-string map between stage variable names and their values.
  _i2.BuiltMap<String, String>? get stageVariableOverrides;

  /// A Boolean flag to indicate whether the canary deployment uses the stage cache or not.
  bool get useStageCache;
  @override
  List<Object?> get props => [
        percentTraffic,
        deploymentId,
        stageVariableOverrides,
        useStageCache,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CanarySettings')
      ..add(
        'percentTraffic',
        percentTraffic,
      )
      ..add(
        'deploymentId',
        deploymentId,
      )
      ..add(
        'stageVariableOverrides',
        stageVariableOverrides,
      )
      ..add(
        'useStageCache',
        useStageCache,
      );
    return helper.toString();
  }
}

class CanarySettingsRestJson1Serializer
    extends _i3.StructuredSmithySerializer<CanarySettings> {
  const CanarySettingsRestJson1Serializer() : super('CanarySettings');

  @override
  Iterable<Type> get types => const [
        CanarySettings,
        _$CanarySettings,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CanarySettings deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CanarySettingsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'deploymentId':
          result.deploymentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'percentTraffic':
          result.percentTraffic = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'stageVariableOverrides':
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
        case 'useStageCache':
          result.useStageCache = (serializers.deserialize(
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
    CanarySettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CanarySettings(
      :deploymentId,
      :percentTraffic,
      :stageVariableOverrides,
      :useStageCache
    ) = object;
    result$.addAll([
      'percentTraffic',
      serializers.serialize(
        percentTraffic,
        specifiedType: const FullType(double),
      ),
      'useStageCache',
      serializers.serialize(
        useStageCache,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (deploymentId != null) {
      result$
        ..add('deploymentId')
        ..add(serializers.serialize(
          deploymentId,
          specifiedType: const FullType(String),
        ));
    }
    if (stageVariableOverrides != null) {
      result$
        ..add('stageVariableOverrides')
        ..add(serializers.serialize(
          stageVariableOverrides,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result$;
  }
}
