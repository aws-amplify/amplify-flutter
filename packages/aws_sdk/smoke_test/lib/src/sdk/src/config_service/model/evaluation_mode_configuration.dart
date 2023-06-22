// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.evaluation_mode_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_mode.dart'
    as _i2;

part 'evaluation_mode_configuration.g.dart';

/// The configuration object for Config rule evaluation mode. The Supported valid values are Detective or Proactive.
abstract class EvaluationModeConfiguration
    with _i1.AWSEquatable<EvaluationModeConfiguration>
    implements
        Built<EvaluationModeConfiguration, EvaluationModeConfigurationBuilder> {
  /// The configuration object for Config rule evaluation mode. The Supported valid values are Detective or Proactive.
  factory EvaluationModeConfiguration({_i2.EvaluationMode? mode}) {
    return _$EvaluationModeConfiguration._(mode: mode);
  }

  /// The configuration object for Config rule evaluation mode. The Supported valid values are Detective or Proactive.
  factory EvaluationModeConfiguration.build(
          [void Function(EvaluationModeConfigurationBuilder) updates]) =
      _$EvaluationModeConfiguration;

  const EvaluationModeConfiguration._();

  static const List<_i3.SmithySerializer<EvaluationModeConfiguration>>
      serializers = [EvaluationModeConfigurationAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EvaluationModeConfigurationBuilder b) {}

  /// The mode of an evaluation. The valid values are Detective or Proactive.
  _i2.EvaluationMode? get mode;
  @override
  List<Object?> get props => [mode];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EvaluationModeConfiguration')
      ..add(
        'mode',
        mode,
      );
    return helper.toString();
  }
}

class EvaluationModeConfigurationAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<EvaluationModeConfiguration> {
  const EvaluationModeConfigurationAwsJson11Serializer()
      : super('EvaluationModeConfiguration');

  @override
  Iterable<Type> get types => const [
        EvaluationModeConfiguration,
        _$EvaluationModeConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  EvaluationModeConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvaluationModeConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Mode':
          result.mode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EvaluationMode),
          ) as _i2.EvaluationMode);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EvaluationModeConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EvaluationModeConfiguration(:mode) = object;
    if (mode != null) {
      result$
        ..add('Mode')
        ..add(serializers.serialize(
          mode,
          specifiedType: const FullType(_i2.EvaluationMode),
        ));
    }
    return result$;
  }
}
