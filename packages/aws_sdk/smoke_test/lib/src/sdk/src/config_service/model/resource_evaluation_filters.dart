// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i4.SmithySerializer<ResourceEvaluationFilters>>
      serializers = [ResourceEvaluationFiltersAwsJson11Serializer()];

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
    final helper = newBuiltValueToStringHelper('ResourceEvaluationFilters')
      ..add(
        'evaluationMode',
        evaluationMode,
      )
      ..add(
        'timeWindow',
        timeWindow,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EvaluationMode':
          result.evaluationMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EvaluationMode),
          ) as _i2.EvaluationMode);
        case 'TimeWindow':
          result.timeWindow.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.TimeWindow),
          ) as _i3.TimeWindow));
        case 'EvaluationContextIdentifier':
          result.evaluationContextIdentifier = (serializers.deserialize(
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
    ResourceEvaluationFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResourceEvaluationFilters(
      :evaluationMode,
      :timeWindow,
      :evaluationContextIdentifier
    ) = object;
    if (evaluationMode != null) {
      result$
        ..add('EvaluationMode')
        ..add(serializers.serialize(
          evaluationMode,
          specifiedType: const FullType(_i2.EvaluationMode),
        ));
    }
    if (timeWindow != null) {
      result$
        ..add('TimeWindow')
        ..add(serializers.serialize(
          timeWindow,
          specifiedType: const FullType(_i3.TimeWindow),
        ));
    }
    if (evaluationContextIdentifier != null) {
      result$
        ..add('EvaluationContextIdentifier')
        ..add(serializers.serialize(
          evaluationContextIdentifier,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
