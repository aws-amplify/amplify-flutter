// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.resource_evaluation_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_mode.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/time_window.dart'
    as _i3;

part 'resource_evaluation_filters.g.dart';

/// Returns details of a resource evaluation based on the selected filter.
abstract class ResourceEvaluationFilters
    with _i1.AWSEquatable<ResourceEvaluationFilters>
    implements
        Built<ResourceEvaluationFilters, ResourceEvaluationFiltersBuilder> {
  /// Returns details of a resource evaluation based on the selected filter.
  factory ResourceEvaluationFilters({
    _i2.EvaluationMode? evaluationMode,
    _i3.TimeWindow? timeWindow,
    String? evaluationContextIdentifier,
  }) {
    return _$ResourceEvaluationFilters._(
      evaluationMode: evaluationMode,
      timeWindow: timeWindow,
      evaluationContextIdentifier: evaluationContextIdentifier,
    );
  }

  /// Returns details of a resource evaluation based on the selected filter.
  factory ResourceEvaluationFilters.build(
          [void Function(ResourceEvaluationFiltersBuilder) updates]) =
      _$ResourceEvaluationFilters;

  const ResourceEvaluationFilters._();

  static const List<_i4.SmithySerializer> serializers = [
    ResourceEvaluationFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceEvaluationFiltersBuilder b) {}

  /// Filters all resource evaluations results based on an evaluation mode. the valid value for this API is `Proactive`.
  _i2.EvaluationMode? get evaluationMode;

  /// Returns a `TimeWindow` object.
  _i3.TimeWindow? get timeWindow;

  /// Filters evaluations for a given infrastructure deployment. For example: CFN Stack.
  String? get evaluationContextIdentifier;
  @override
  List<Object?> get props => [
        evaluationMode,
        timeWindow,
        evaluationContextIdentifier,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceEvaluationFilters');
    helper.add(
      'evaluationMode',
      evaluationMode,
    );
    helper.add(
      'timeWindow',
      timeWindow,
    );
    helper.add(
      'evaluationContextIdentifier',
      evaluationContextIdentifier,
    );
    return helper.toString();
  }
}

class ResourceEvaluationFiltersAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ResourceEvaluationFilters> {
  const ResourceEvaluationFiltersAwsJson11Serializer()
      : super('ResourceEvaluationFilters');

  @override
  Iterable<Type> get types => const [
        ResourceEvaluationFilters,
        _$ResourceEvaluationFilters,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceEvaluationFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceEvaluationFiltersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'EvaluationMode':
          if (value != null) {
            result.evaluationMode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.EvaluationMode),
            ) as _i2.EvaluationMode);
          }
          break;
        case 'TimeWindow':
          if (value != null) {
            result.timeWindow.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.TimeWindow),
            ) as _i3.TimeWindow));
          }
          break;
        case 'EvaluationContextIdentifier':
          if (value != null) {
            result.evaluationContextIdentifier = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ResourceEvaluationFilters);
    final result = <Object?>[];
    if (payload.evaluationMode != null) {
      result
        ..add('EvaluationMode')
        ..add(serializers.serialize(
          payload.evaluationMode!,
          specifiedType: const FullType(_i2.EvaluationMode),
        ));
    }
    if (payload.timeWindow != null) {
      result
        ..add('TimeWindow')
        ..add(serializers.serialize(
          payload.timeWindow!,
          specifiedType: const FullType(_i3.TimeWindow),
        ));
    }
    if (payload.evaluationContextIdentifier != null) {
      result
        ..add('EvaluationContextIdentifier')
        ..add(serializers.serialize(
          payload.evaluationContextIdentifier!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
