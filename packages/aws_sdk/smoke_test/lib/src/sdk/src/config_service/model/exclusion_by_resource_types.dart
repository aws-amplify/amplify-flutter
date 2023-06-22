// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.exclusion_by_resource_types; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i2;

part 'exclusion_by_resource_types.g.dart';

/// Specifies whether the configuration recorder excludes resource types from being recorded. Use the `resourceTypes` field to enter a comma-separated list of resource types to exclude as exemptions.
abstract class ExclusionByResourceTypes
    with _i1.AWSEquatable<ExclusionByResourceTypes>
    implements
        Built<ExclusionByResourceTypes, ExclusionByResourceTypesBuilder> {
  /// Specifies whether the configuration recorder excludes resource types from being recorded. Use the `resourceTypes` field to enter a comma-separated list of resource types to exclude as exemptions.
  factory ExclusionByResourceTypes({List<_i2.ResourceType>? resourceTypes}) {
    return _$ExclusionByResourceTypes._(
        resourceTypes:
            resourceTypes == null ? null : _i3.BuiltList(resourceTypes));
  }

  /// Specifies whether the configuration recorder excludes resource types from being recorded. Use the `resourceTypes` field to enter a comma-separated list of resource types to exclude as exemptions.
  factory ExclusionByResourceTypes.build(
          [void Function(ExclusionByResourceTypesBuilder) updates]) =
      _$ExclusionByResourceTypes;

  const ExclusionByResourceTypes._();

  static const List<_i4.SmithySerializer<ExclusionByResourceTypes>>
      serializers = [ExclusionByResourceTypesAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExclusionByResourceTypesBuilder b) {}

  /// A comma-separated list of resource types to exclude from recording by the configuration recorder.
  _i3.BuiltList<_i2.ResourceType>? get resourceTypes;
  @override
  List<Object?> get props => [resourceTypes];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExclusionByResourceTypes')
      ..add(
        'resourceTypes',
        resourceTypes,
      );
    return helper.toString();
  }
}

class ExclusionByResourceTypesAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ExclusionByResourceTypes> {
  const ExclusionByResourceTypesAwsJson11Serializer()
      : super('ExclusionByResourceTypes');

  @override
  Iterable<Type> get types => const [
        ExclusionByResourceTypes,
        _$ExclusionByResourceTypes,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ExclusionByResourceTypes deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExclusionByResourceTypesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'resourceTypes':
          result.resourceTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ResourceType)],
            ),
          ) as _i3.BuiltList<_i2.ResourceType>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ExclusionByResourceTypes object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ExclusionByResourceTypes(:resourceTypes) = object;
    if (resourceTypes != null) {
      result$
        ..add('resourceTypes')
        ..add(serializers.serialize(
          resourceTypes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ResourceType)],
          ),
        ));
    }
    return result$;
  }
}
