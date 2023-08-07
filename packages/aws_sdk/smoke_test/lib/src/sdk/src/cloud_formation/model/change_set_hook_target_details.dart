// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.change_set_hook_target_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hook_resource_target_details.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_target_type.dart';

part 'change_set_hook_target_details.g.dart';

/// Specifies target details for an activated hook.
abstract class ChangeSetHookTargetDetails
    with _i1.AWSEquatable<ChangeSetHookTargetDetails>
    implements
        Built<ChangeSetHookTargetDetails, ChangeSetHookTargetDetailsBuilder> {
  /// Specifies target details for an activated hook.
  factory ChangeSetHookTargetDetails({
    HookTargetType? targetType,
    ChangeSetHookResourceTargetDetails? resourceTargetDetails,
  }) {
    return _$ChangeSetHookTargetDetails._(
      targetType: targetType,
      resourceTargetDetails: resourceTargetDetails,
    );
  }

  /// Specifies target details for an activated hook.
  factory ChangeSetHookTargetDetails.build(
          [void Function(ChangeSetHookTargetDetailsBuilder) updates]) =
      _$ChangeSetHookTargetDetails;

  const ChangeSetHookTargetDetails._();

  static const List<_i2.SmithySerializer<ChangeSetHookTargetDetails>>
      serializers = [ChangeSetHookTargetDetailsAwsQuerySerializer()];

  /// The name of the type.
  HookTargetType? get targetType;

  /// Required if `TargetType` is `RESOURCE`.
  ChangeSetHookResourceTargetDetails? get resourceTargetDetails;
  @override
  List<Object?> get props => [
        targetType,
        resourceTargetDetails,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ChangeSetHookTargetDetails')
      ..add(
        'targetType',
        targetType,
      )
      ..add(
        'resourceTargetDetails',
        resourceTargetDetails,
      );
    return helper.toString();
  }
}

class ChangeSetHookTargetDetailsAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ChangeSetHookTargetDetails> {
  const ChangeSetHookTargetDetailsAwsQuerySerializer()
      : super('ChangeSetHookTargetDetails');

  @override
  Iterable<Type> get types => const [
        ChangeSetHookTargetDetails,
        _$ChangeSetHookTargetDetails,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ChangeSetHookTargetDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangeSetHookTargetDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TargetType':
          result.targetType = (serializers.deserialize(
            value,
            specifiedType: const FullType(HookTargetType),
          ) as HookTargetType);
        case 'ResourceTargetDetails':
          result.resourceTargetDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ChangeSetHookResourceTargetDetails),
          ) as ChangeSetHookResourceTargetDetails));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ChangeSetHookTargetDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ChangeSetHookTargetDetailsResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ChangeSetHookTargetDetails(:targetType, :resourceTargetDetails) =
        object;
    if (targetType != null) {
      result$
        ..add(const _i2.XmlElementName('TargetType'))
        ..add(serializers.serialize(
          targetType,
          specifiedType: const FullType.nullable(HookTargetType),
        ));
    }
    if (resourceTargetDetails != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceTargetDetails'))
        ..add(serializers.serialize(
          resourceTargetDetails,
          specifiedType: const FullType(ChangeSetHookResourceTargetDetails),
        ));
    }
    return result$;
  }
}
