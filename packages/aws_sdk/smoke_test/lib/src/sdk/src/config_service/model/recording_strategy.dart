// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.recording_strategy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/recording_strategy_type.dart'
    as _i2;

part 'recording_strategy.g.dart';

/// Specifies the recording strategy of the configuration recorder.
abstract class RecordingStrategy
    with _i1.AWSEquatable<RecordingStrategy>
    implements Built<RecordingStrategy, RecordingStrategyBuilder> {
  /// Specifies the recording strategy of the configuration recorder.
  factory RecordingStrategy({_i2.RecordingStrategyType? useOnly}) {
    return _$RecordingStrategy._(useOnly: useOnly);
  }

  /// Specifies the recording strategy of the configuration recorder.
  factory RecordingStrategy.build(
      [void Function(RecordingStrategyBuilder) updates]) = _$RecordingStrategy;

  const RecordingStrategy._();

  static const List<_i3.SmithySerializer<RecordingStrategy>> serializers = [
    RecordingStrategyAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecordingStrategyBuilder b) {}

  /// The recording strategy for the configuration recorder.
  ///
  /// *   If you set this option to `ALL\_SUPPORTED\_RESOURCE_TYPES`, Config records configuration changes for all supported regional resource types. You also must set the `allSupported` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) to `true`.
  ///
  ///     When Config adds support for a new type of regional resource, Config automatically starts recording resources of that type. For a list of supported resource types, see [Supported Resource Types](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources) in the _Config developer guide_.
  ///
  /// *   If you set this option to `INCLUSION\_BY\_RESOURCE_TYPES`, Config records configuration changes for only the resource types that you specify in the `resourceTypes` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html).
  ///
  /// *   If you set this option to `EXCLUSION\_BY\_RESOURCE_TYPES`, Config records configuration changes for all supported resource types, except the resource types that you specify as exemptions to exclude from being recorded in the `resourceTypes` field of [ExclusionByResourceTypes](https://docs.aws.amazon.com/config/latest/APIReference/API_ExclusionByResourceTypes.html).
  ///
  ///
  /// The `recordingStrategy` field is optional when you set the `allSupported` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) to `true`.
  ///
  /// The `recordingStrategy` field is optional when you list resource types in the `resourceTypes` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html).
  ///
  /// The `recordingStrategy` field is required if you list resource types to exclude from recording in the `resourceTypes` field of [ExclusionByResourceTypes](https://docs.aws.amazon.com/config/latest/APIReference/API_ExclusionByResourceTypes.html).
  ///
  /// If you choose `EXCLUSION\_BY\_RESOURCE_TYPES` for the recording strategy, the `exclusionByResourceTypes` field will override other properties in the request.
  ///
  /// For example, even if you set `includeGlobalResourceTypes` to false, global resource types will still be automatically recorded in this option unless those resource types are specifically listed as exemptions in the `resourceTypes` field of `exclusionByResourceTypes`.
  ///
  /// By default, if you choose the `EXCLUSION\_BY\_RESOURCE_TYPES` recording strategy, when Config adds support for a new resource type in the Region where you set up the configuration recorder, including global resource types, Config starts recording resources of that type automatically.
  _i2.RecordingStrategyType? get useOnly;
  @override
  List<Object?> get props => [useOnly];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RecordingStrategy')
      ..add(
        'useOnly',
        useOnly,
      );
    return helper.toString();
  }
}

class RecordingStrategyAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<RecordingStrategy> {
  const RecordingStrategyAwsJson11Serializer() : super('RecordingStrategy');

  @override
  Iterable<Type> get types => const [
        RecordingStrategy,
        _$RecordingStrategy,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RecordingStrategy deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordingStrategyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'useOnly':
          result.useOnly = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RecordingStrategyType),
          ) as _i2.RecordingStrategyType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecordingStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RecordingStrategy(:useOnly) = object;
    if (useOnly != null) {
      result$
        ..add('useOnly')
        ..add(serializers.serialize(
          useOnly,
          specifiedType: const FullType(_i2.RecordingStrategyType),
        ));
    }
    return result$;
  }
}
