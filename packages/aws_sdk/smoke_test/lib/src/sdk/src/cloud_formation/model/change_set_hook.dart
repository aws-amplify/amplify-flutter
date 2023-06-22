// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.change_set_hook; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hook_target_details.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_failure_mode.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/hook_invocation_point.dart'
    as _i2;

part 'change_set_hook.g.dart';

/// Specifies the resource, the hook, and the hook version to be invoked.
abstract class ChangeSetHook
    with _i1.AWSEquatable<ChangeSetHook>
    implements Built<ChangeSetHook, ChangeSetHookBuilder> {
  /// Specifies the resource, the hook, and the hook version to be invoked.
  factory ChangeSetHook({
    _i2.HookInvocationPoint? invocationPoint,
    _i3.HookFailureMode? failureMode,
    String? typeName,
    String? typeVersionId,
    String? typeConfigurationVersionId,
    _i4.ChangeSetHookTargetDetails? targetDetails,
  }) {
    return _$ChangeSetHook._(
      invocationPoint: invocationPoint,
      failureMode: failureMode,
      typeName: typeName,
      typeVersionId: typeVersionId,
      typeConfigurationVersionId: typeConfigurationVersionId,
      targetDetails: targetDetails,
    );
  }

  /// Specifies the resource, the hook, and the hook version to be invoked.
  factory ChangeSetHook.build([void Function(ChangeSetHookBuilder) updates]) =
      _$ChangeSetHook;

  const ChangeSetHook._();

  static const List<_i5.SmithySerializer<ChangeSetHook>> serializers = [
    ChangeSetHookAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ChangeSetHookBuilder b) {}

  /// Specifies the points in provisioning logic where a hook is invoked.
  _i2.HookInvocationPoint? get invocationPoint;

  /// Specify the hook failure mode for non-compliant resources in the followings ways.
  ///
  /// *   `FAIL` Stops provisioning resources.
  ///
  /// *   `WARN` Allows provisioning to continue with a warning message.
  _i3.HookFailureMode? get failureMode;

  /// The unique name for your hook. Specifies a three-part namespace for your hook, with a recommended pattern of `Organization::Service::Hook`.
  ///
  /// The following organization namespaces are reserved and can't be used in your hook type names:
  ///
  /// *   `Alexa`
  ///
  /// *   `AMZN`
  ///
  /// *   `Amazon`
  ///
  /// *   `ASK`
  ///
  /// *   `AWS`
  ///
  /// *   `Custom`
  ///
  /// *   `Dev`
  String? get typeName;

  /// The version ID of the type specified.
  String? get typeVersionId;

  /// The version ID of the type configuration.
  String? get typeConfigurationVersionId;

  /// Specifies details about the target that the hook will run against.
  _i4.ChangeSetHookTargetDetails? get targetDetails;
  @override
  List<Object?> get props => [
        invocationPoint,
        failureMode,
        typeName,
        typeVersionId,
        typeConfigurationVersionId,
        targetDetails,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ChangeSetHook')
      ..add(
        'invocationPoint',
        invocationPoint,
      )
      ..add(
        'failureMode',
        failureMode,
      )
      ..add(
        'typeName',
        typeName,
      )
      ..add(
        'typeVersionId',
        typeVersionId,
      )
      ..add(
        'typeConfigurationVersionId',
        typeConfigurationVersionId,
      )
      ..add(
        'targetDetails',
        targetDetails,
      );
    return helper.toString();
  }
}

class ChangeSetHookAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<ChangeSetHook> {
  const ChangeSetHookAwsQuerySerializer() : super('ChangeSetHook');

  @override
  Iterable<Type> get types => const [
        ChangeSetHook,
        _$ChangeSetHook,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ChangeSetHook deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangeSetHookBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InvocationPoint':
          result.invocationPoint = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.HookInvocationPoint),
          ) as _i2.HookInvocationPoint);
        case 'FailureMode':
          result.failureMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.HookFailureMode),
          ) as _i3.HookFailureMode);
        case 'TypeName':
          result.typeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeVersionId':
          result.typeVersionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeConfigurationVersionId':
          result.typeConfigurationVersionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TargetDetails':
          result.targetDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ChangeSetHookTargetDetails),
          ) as _i4.ChangeSetHookTargetDetails));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ChangeSetHook object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'ChangeSetHookResponse',
        _i5.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ChangeSetHook(
      :invocationPoint,
      :failureMode,
      :typeName,
      :typeVersionId,
      :typeConfigurationVersionId,
      :targetDetails
    ) = object;
    if (invocationPoint != null) {
      result$
        ..add(const _i5.XmlElementName('InvocationPoint'))
        ..add(serializers.serialize(
          invocationPoint,
          specifiedType: const FullType.nullable(_i2.HookInvocationPoint),
        ));
    }
    if (failureMode != null) {
      result$
        ..add(const _i5.XmlElementName('FailureMode'))
        ..add(serializers.serialize(
          failureMode,
          specifiedType: const FullType.nullable(_i3.HookFailureMode),
        ));
    }
    if (typeName != null) {
      result$
        ..add(const _i5.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          typeName,
          specifiedType: const FullType(String),
        ));
    }
    if (typeVersionId != null) {
      result$
        ..add(const _i5.XmlElementName('TypeVersionId'))
        ..add(serializers.serialize(
          typeVersionId,
          specifiedType: const FullType(String),
        ));
    }
    if (typeConfigurationVersionId != null) {
      result$
        ..add(const _i5.XmlElementName('TypeConfigurationVersionId'))
        ..add(serializers.serialize(
          typeConfigurationVersionId,
          specifiedType: const FullType(String),
        ));
    }
    if (targetDetails != null) {
      result$
        ..add(const _i5.XmlElementName('TargetDetails'))
        ..add(serializers.serialize(
          targetDetails,
          specifiedType: const FullType(_i4.ChangeSetHookTargetDetails),
        ));
    }
    return result$;
  }
}
