// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.recording_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i2;

part 'recording_group.g.dart';

/// Specifies which Amazon Web Services resource types Config records for configuration changes. In the recording group, you specify whether you want to record all supported resource types or only specific types of resources.
///
/// By default, Config records the configuration changes for all supported types of _regional resources_ that Config discovers in the region in which it is running. Regional resources are tied to a region and can be used only in that region. Examples of regional resources are EC2 instances and EBS volumes.
///
/// You can also have Config record supported types of _global resources_. Global resources are not tied to a specific region and can be used in all regions. The global resource types that Config supports include IAM users, groups, roles, and customer managed policies.
///
/// Global resource types onboarded to Config recording after February 2022 will only be recorded in the service's home region for the commercial partition and Amazon Web Services GovCloud (US) West for the GovCloud partition. You can view the Configuration Items for these new global resource types only in their home region and Amazon Web Services GovCloud (US) West.
///
/// Supported global resource types onboarded before February 2022 such as `AWS::IAM::Group`, `AWS::IAM::Policy`, `AWS::IAM::Role`, `AWS::IAM::User` remain unchanged, and they will continue to deliver Configuration Items in all supported regions in Config. The change will only affect new global resource types onboarded after February 2022.
///
/// To record global resource types onboarded after February 2022, enable All Supported Resource Types in the home region of the global resource type you want to record.
///
/// If you don't want Config to record all resources, you can specify which types of resources it will record with the `resourceTypes` parameter.
///
/// For a list of supported resource types, see [Supported Resource Types](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).
///
/// For more information and a table of the Home Regions for Global Resource Types Onboarded after February 2022, see [Selecting Which Resources Config Records](https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html).
abstract class RecordingGroup
    with _i1.AWSEquatable<RecordingGroup>
    implements Built<RecordingGroup, RecordingGroupBuilder> {
  /// Specifies which Amazon Web Services resource types Config records for configuration changes. In the recording group, you specify whether you want to record all supported resource types or only specific types of resources.
  ///
  /// By default, Config records the configuration changes for all supported types of _regional resources_ that Config discovers in the region in which it is running. Regional resources are tied to a region and can be used only in that region. Examples of regional resources are EC2 instances and EBS volumes.
  ///
  /// You can also have Config record supported types of _global resources_. Global resources are not tied to a specific region and can be used in all regions. The global resource types that Config supports include IAM users, groups, roles, and customer managed policies.
  ///
  /// Global resource types onboarded to Config recording after February 2022 will only be recorded in the service's home region for the commercial partition and Amazon Web Services GovCloud (US) West for the GovCloud partition. You can view the Configuration Items for these new global resource types only in their home region and Amazon Web Services GovCloud (US) West.
  ///
  /// Supported global resource types onboarded before February 2022 such as `AWS::IAM::Group`, `AWS::IAM::Policy`, `AWS::IAM::Role`, `AWS::IAM::User` remain unchanged, and they will continue to deliver Configuration Items in all supported regions in Config. The change will only affect new global resource types onboarded after February 2022.
  ///
  /// To record global resource types onboarded after February 2022, enable All Supported Resource Types in the home region of the global resource type you want to record.
  ///
  /// If you don't want Config to record all resources, you can specify which types of resources it will record with the `resourceTypes` parameter.
  ///
  /// For a list of supported resource types, see [Supported Resource Types](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).
  ///
  /// For more information and a table of the Home Regions for Global Resource Types Onboarded after February 2022, see [Selecting Which Resources Config Records](https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html).
  factory RecordingGroup({
    bool? allSupported,
    bool? includeGlobalResourceTypes,
    List<_i2.ResourceType>? resourceTypes,
  }) {
    allSupported ??= false;
    includeGlobalResourceTypes ??= false;
    return _$RecordingGroup._(
      allSupported: allSupported,
      includeGlobalResourceTypes: includeGlobalResourceTypes,
      resourceTypes:
          resourceTypes == null ? null : _i3.BuiltList(resourceTypes),
    );
  }

  /// Specifies which Amazon Web Services resource types Config records for configuration changes. In the recording group, you specify whether you want to record all supported resource types or only specific types of resources.
  ///
  /// By default, Config records the configuration changes for all supported types of _regional resources_ that Config discovers in the region in which it is running. Regional resources are tied to a region and can be used only in that region. Examples of regional resources are EC2 instances and EBS volumes.
  ///
  /// You can also have Config record supported types of _global resources_. Global resources are not tied to a specific region and can be used in all regions. The global resource types that Config supports include IAM users, groups, roles, and customer managed policies.
  ///
  /// Global resource types onboarded to Config recording after February 2022 will only be recorded in the service's home region for the commercial partition and Amazon Web Services GovCloud (US) West for the GovCloud partition. You can view the Configuration Items for these new global resource types only in their home region and Amazon Web Services GovCloud (US) West.
  ///
  /// Supported global resource types onboarded before February 2022 such as `AWS::IAM::Group`, `AWS::IAM::Policy`, `AWS::IAM::Role`, `AWS::IAM::User` remain unchanged, and they will continue to deliver Configuration Items in all supported regions in Config. The change will only affect new global resource types onboarded after February 2022.
  ///
  /// To record global resource types onboarded after February 2022, enable All Supported Resource Types in the home region of the global resource type you want to record.
  ///
  /// If you don't want Config to record all resources, you can specify which types of resources it will record with the `resourceTypes` parameter.
  ///
  /// For a list of supported resource types, see [Supported Resource Types](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).
  ///
  /// For more information and a table of the Home Regions for Global Resource Types Onboarded after February 2022, see [Selecting Which Resources Config Records](https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html).
  factory RecordingGroup.build([void Function(RecordingGroupBuilder) updates]) =
      _$RecordingGroup;

  const RecordingGroup._();

  static const List<_i4.SmithySerializer> serializers = [
    RecordingGroupAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecordingGroupBuilder b) {
    b.allSupported = false;
    b.includeGlobalResourceTypes = false;
  }

  /// Specifies whether Config records configuration changes for every supported type of regional resource.
  ///
  /// If you set this option to `true`, when Config adds support for a new type of regional resource, it starts recording resources of that type automatically.
  ///
  /// If you set this option to `true`, you cannot enumerate a list of `resourceTypes`.
  bool get allSupported;

  /// Specifies whether Config includes all supported types of global resources (for example, IAM resources) with the resources that it records.
  ///
  /// Before you can set this option to `true`, you must set the `allSupported` option to `true`.
  ///
  /// If you set this option to `true`, when Config adds support for a new type of global resource, it starts recording resources of that type automatically.
  ///
  /// The configuration details for any global resource are the same in all regions. To prevent duplicate configuration items, you should consider customizing Config in only one region to record global resources.
  bool get includeGlobalResourceTypes;

  /// A comma-separated list that specifies the types of Amazon Web Services resources for which Config records configuration changes (for example, `AWS::EC2::Instance` or `AWS::CloudTrail::Trail`).
  ///
  /// To record all configuration changes, you must set the `allSupported` option to `true`.
  ///
  /// If you set the `AllSupported` option to false and populate the `ResourceTypes` option with values, when Config adds support for a new type of resource, it will not record resources of that type unless you manually add that type to your recording group.
  ///
  /// For a list of valid `resourceTypes` values, see the **resourceType Value** column in [Supported Amazon Web Services resource Types](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).
  _i3.BuiltList<_i2.ResourceType>? get resourceTypes;
  @override
  List<Object?> get props => [
        allSupported,
        includeGlobalResourceTypes,
        resourceTypes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RecordingGroup');
    helper.add(
      'allSupported',
      allSupported,
    );
    helper.add(
      'includeGlobalResourceTypes',
      includeGlobalResourceTypes,
    );
    helper.add(
      'resourceTypes',
      resourceTypes,
    );
    return helper.toString();
  }
}

class RecordingGroupAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<RecordingGroup> {
  const RecordingGroupAwsJson11Serializer() : super('RecordingGroup');

  @override
  Iterable<Type> get types => const [
        RecordingGroup,
        _$RecordingGroup,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RecordingGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordingGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'allSupported':
          result.allSupported = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'includeGlobalResourceTypes':
          result.includeGlobalResourceTypes = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'resourceTypes':
          if (value != null) {
            result.resourceTypes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ResourceType)],
              ),
            ) as _i3.BuiltList<_i2.ResourceType>));
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
    final payload = (object as RecordingGroup);
    final result = <Object?>[
      'allSupported',
      serializers.serialize(
        payload.allSupported,
        specifiedType: const FullType(bool),
      ),
      'includeGlobalResourceTypes',
      serializers.serialize(
        payload.includeGlobalResourceTypes,
        specifiedType: const FullType(bool),
      ),
    ];
    if (payload.resourceTypes != null) {
      result
        ..add('resourceTypes')
        ..add(serializers.serialize(
          payload.resourceTypes!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ResourceType)],
          ),
        ));
    }
    return result;
  }
}
