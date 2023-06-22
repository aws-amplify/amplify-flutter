// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.recording_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/exclusion_by_resource_types.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/recording_strategy.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i2;

part 'recording_group.g.dart';

/// Specifies which resource types Config records for configuration changes. In the recording group, you specify whether you want to record all supported resource types or to include or exclude specific types of resources.
///
/// By default, Config records configuration changes for all supported types of _Regional resources_ that Config discovers in the Amazon Web Services Region in which it is running. Regional resources are tied to a Region and can be used only in that Region. Examples of Regional resources are Amazon EC2 instances and Amazon EBS volumes.
///
/// You can also have Config record supported types of _global resources_. Global resources are not tied to a specific Region and can be used in all Regions. The global resource types that Config supports include IAM users, groups, roles, and customer managed policies.
///
/// Global resource types onboarded to Config recording after February 2022 will be recorded only in the service's home Region for the commercial partition and Amazon Web Services GovCloud (US-West) for the Amazon Web Services GovCloud (US) partition. You can view the Configuration Items for these new global resource types only in their home Region and Amazon Web Services GovCloud (US-West).
///
/// If you don't want Config to record all resources, you can specify which types of resources Config records with the `resourceTypes` parameter.
///
/// For a list of supported resource types, see [Supported Resource Types](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources) in the _Config developer guide_.
///
/// For more information and a table of the Home Regions for Global Resource Types Onboarded after February 2022, see [Selecting Which Resources Config Records](https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html) in the _Config developer guide_.
abstract class RecordingGroup
    with _i1.AWSEquatable<RecordingGroup>
    implements Built<RecordingGroup, RecordingGroupBuilder> {
  /// Specifies which resource types Config records for configuration changes. In the recording group, you specify whether you want to record all supported resource types or to include or exclude specific types of resources.
  ///
  /// By default, Config records configuration changes for all supported types of _Regional resources_ that Config discovers in the Amazon Web Services Region in which it is running. Regional resources are tied to a Region and can be used only in that Region. Examples of Regional resources are Amazon EC2 instances and Amazon EBS volumes.
  ///
  /// You can also have Config record supported types of _global resources_. Global resources are not tied to a specific Region and can be used in all Regions. The global resource types that Config supports include IAM users, groups, roles, and customer managed policies.
  ///
  /// Global resource types onboarded to Config recording after February 2022 will be recorded only in the service's home Region for the commercial partition and Amazon Web Services GovCloud (US-West) for the Amazon Web Services GovCloud (US) partition. You can view the Configuration Items for these new global resource types only in their home Region and Amazon Web Services GovCloud (US-West).
  ///
  /// If you don't want Config to record all resources, you can specify which types of resources Config records with the `resourceTypes` parameter.
  ///
  /// For a list of supported resource types, see [Supported Resource Types](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources) in the _Config developer guide_.
  ///
  /// For more information and a table of the Home Regions for Global Resource Types Onboarded after February 2022, see [Selecting Which Resources Config Records](https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html) in the _Config developer guide_.
  factory RecordingGroup({
    bool? allSupported,
    bool? includeGlobalResourceTypes,
    List<_i2.ResourceType>? resourceTypes,
    _i3.ExclusionByResourceTypes? exclusionByResourceTypes,
    _i4.RecordingStrategy? recordingStrategy,
  }) {
    allSupported ??= false;
    includeGlobalResourceTypes ??= false;
    return _$RecordingGroup._(
      allSupported: allSupported,
      includeGlobalResourceTypes: includeGlobalResourceTypes,
      resourceTypes:
          resourceTypes == null ? null : _i5.BuiltList(resourceTypes),
      exclusionByResourceTypes: exclusionByResourceTypes,
      recordingStrategy: recordingStrategy,
    );
  }

  /// Specifies which resource types Config records for configuration changes. In the recording group, you specify whether you want to record all supported resource types or to include or exclude specific types of resources.
  ///
  /// By default, Config records configuration changes for all supported types of _Regional resources_ that Config discovers in the Amazon Web Services Region in which it is running. Regional resources are tied to a Region and can be used only in that Region. Examples of Regional resources are Amazon EC2 instances and Amazon EBS volumes.
  ///
  /// You can also have Config record supported types of _global resources_. Global resources are not tied to a specific Region and can be used in all Regions. The global resource types that Config supports include IAM users, groups, roles, and customer managed policies.
  ///
  /// Global resource types onboarded to Config recording after February 2022 will be recorded only in the service's home Region for the commercial partition and Amazon Web Services GovCloud (US-West) for the Amazon Web Services GovCloud (US) partition. You can view the Configuration Items for these new global resource types only in their home Region and Amazon Web Services GovCloud (US-West).
  ///
  /// If you don't want Config to record all resources, you can specify which types of resources Config records with the `resourceTypes` parameter.
  ///
  /// For a list of supported resource types, see [Supported Resource Types](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources) in the _Config developer guide_.
  ///
  /// For more information and a table of the Home Regions for Global Resource Types Onboarded after February 2022, see [Selecting Which Resources Config Records](https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html) in the _Config developer guide_.
  factory RecordingGroup.build([void Function(RecordingGroupBuilder) updates]) =
      _$RecordingGroup;

  const RecordingGroup._();

  static const List<_i6.SmithySerializer<RecordingGroup>> serializers = [
    RecordingGroupAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecordingGroupBuilder b) {
    b.allSupported = false;
    b.includeGlobalResourceTypes = false;
  }

  /// Specifies whether Config records configuration changes for all supported regional resource types.
  ///
  /// If you set this field to `true`, when Config adds support for a new type of regional resource, Config starts recording resources of that type automatically.
  ///
  /// If you set this field to `true`, you cannot enumerate specific resource types to record in the `resourceTypes` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html), or to exclude in the `resourceTypes` field of [ExclusionByResourceTypes](https://docs.aws.amazon.com/config/latest/APIReference/API_ExclusionByResourceTypes.html).
  bool get allSupported;

  /// Specifies whether Config records configuration changes for all supported global resources.
  ///
  /// Before you set this field to `true`, set the `allSupported` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) to `true`. Optionally, you can set the `useOnly` field of [RecordingStrategy](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html) to `ALL\_SUPPORTED\_RESOURCE_TYPES`.
  ///
  /// If you set this field to `true`, when Config adds support for a new type of global resource in the Region where you set up the configuration recorder, Config starts recording resources of that type automatically.
  ///
  /// If you set this field to `false` but list global resource types in the `resourceTypes` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html), Config will still record configuration changes for those specified resource types _regardless_ of if you set the `includeGlobalResourceTypes` field to false.
  ///
  /// If you do not want to record configuration changes to global resource types, make sure to not list them in the `resourceTypes` field in addition to setting the `includeGlobalResourceTypes` field to false.
  bool get includeGlobalResourceTypes;

  /// A comma-separated list that specifies which resource types Config records.
  ///
  /// Optionally, you can set the `useOnly` field of [RecordingStrategy](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html) to `INCLUSION\_BY\_RESOURCE_TYPES`.
  ///
  /// To record all configuration changes, set the `allSupported` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) to `true`, and either omit this field or don't specify any resource types in this field. If you set the `allSupported` field to `false` and specify values for `resourceTypes`, when Config adds support for a new type of resource, it will not record resources of that type unless you manually add that type to your recording group.
  ///
  /// For a list of valid `resourceTypes` values, see the **Resource Type Value** column in [Supported Amazon Web Services resource Types](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources) in the _Config developer guide_.
  ///
  /// **Region Availability**
  ///
  /// Before specifying a resource type for Config to track, check [Resource Coverage by Region Availability](https://docs.aws.amazon.com/config/latest/developerguide/what-is-resource-config-coverage.html) to see if the resource type is supported in the Amazon Web Services Region where you set up Config. If a resource type is supported by Config in at least one Region, you can enable the recording of that resource type in all Regions supported by Config, even if the specified resource type is not supported in the Amazon Web Services Region where you set up Config.
  _i5.BuiltList<_i2.ResourceType>? get resourceTypes;

  /// An object that specifies how Config excludes resource types from being recorded by the configuration recorder.
  ///
  /// To use this option, you must set the `useOnly` field of [RecordingStrategy](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html) to `EXCLUSION\_BY\_RESOURCE_TYPES`.
  _i3.ExclusionByResourceTypes? get exclusionByResourceTypes;

  /// An object that specifies the recording strategy for the configuration recorder.
  ///
  /// *   If you set the `useOnly` field of [RecordingStrategy](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html) to `ALL\_SUPPORTED\_RESOURCE_TYPES`, Config records configuration changes for all supported regional resource types. You also must set the `allSupported` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html) to `true`. When Config adds support for a new type of regional resource, Config automatically starts recording resources of that type.
  ///
  /// *   If you set the `useOnly` field of [RecordingStrategy](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html) to `INCLUSION\_BY\_RESOURCE_TYPES`, Config records configuration changes for only the resource types you specify in the `resourceTypes` field of [RecordingGroup](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html).
  ///
  /// *   If you set the `useOnly` field of [RecordingStrategy](https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html) to `EXCLUSION\_BY\_RESOURCE_TYPES`, Config records configuration changes for all supported resource types except the resource types that you specify as exemptions to exclude from being recorded in the `resourceTypes` field of [ExclusionByResourceTypes](https://docs.aws.amazon.com/config/latest/APIReference/API_ExclusionByResourceTypes.html).
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
  _i4.RecordingStrategy? get recordingStrategy;
  @override
  List<Object?> get props => [
        allSupported,
        includeGlobalResourceTypes,
        resourceTypes,
        exclusionByResourceTypes,
        recordingStrategy,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RecordingGroup')
      ..add(
        'allSupported',
        allSupported,
      )
      ..add(
        'includeGlobalResourceTypes',
        includeGlobalResourceTypes,
      )
      ..add(
        'resourceTypes',
        resourceTypes,
      )
      ..add(
        'exclusionByResourceTypes',
        exclusionByResourceTypes,
      )
      ..add(
        'recordingStrategy',
        recordingStrategy,
      );
    return helper.toString();
  }
}

class RecordingGroupAwsJson11Serializer
    extends _i6.StructuredSmithySerializer<RecordingGroup> {
  const RecordingGroupAwsJson11Serializer() : super('RecordingGroup');

  @override
  Iterable<Type> get types => const [
        RecordingGroup,
        _$RecordingGroup,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'allSupported':
          result.allSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'includeGlobalResourceTypes':
          result.includeGlobalResourceTypes = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'resourceTypes':
          result.resourceTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i2.ResourceType)],
            ),
          ) as _i5.BuiltList<_i2.ResourceType>));
        case 'exclusionByResourceTypes':
          result.exclusionByResourceTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ExclusionByResourceTypes),
          ) as _i3.ExclusionByResourceTypes));
        case 'recordingStrategy':
          result.recordingStrategy.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.RecordingStrategy),
          ) as _i4.RecordingStrategy));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecordingGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RecordingGroup(
      :allSupported,
      :includeGlobalResourceTypes,
      :resourceTypes,
      :exclusionByResourceTypes,
      :recordingStrategy
    ) = object;
    result$.addAll([
      'allSupported',
      serializers.serialize(
        allSupported,
        specifiedType: const FullType(bool),
      ),
      'includeGlobalResourceTypes',
      serializers.serialize(
        includeGlobalResourceTypes,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (resourceTypes != null) {
      result$
        ..add('resourceTypes')
        ..add(serializers.serialize(
          resourceTypes,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i2.ResourceType)],
          ),
        ));
    }
    if (exclusionByResourceTypes != null) {
      result$
        ..add('exclusionByResourceTypes')
        ..add(serializers.serialize(
          exclusionByResourceTypes,
          specifiedType: const FullType(_i3.ExclusionByResourceTypes),
        ));
    }
    if (recordingStrategy != null) {
      result$
        ..add('recordingStrategy')
        ..add(serializers.serialize(
          recordingStrategy,
          specifiedType: const FullType(_i4.RecordingStrategy),
        ));
    }
    return result$;
  }
}
