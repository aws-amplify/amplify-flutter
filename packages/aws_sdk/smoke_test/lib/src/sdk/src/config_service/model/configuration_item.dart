// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.configuration_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/relationship.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i3;

part 'configuration_item.g.dart';

/// A list that contains detailed configurations of a specified resource.
abstract class ConfigurationItem
    with _i1.AWSEquatable<ConfigurationItem>
    implements Built<ConfigurationItem, ConfigurationItemBuilder> {
  /// A list that contains detailed configurations of a specified resource.
  factory ConfigurationItem({
    String? version,
    String? accountId,
    DateTime? configurationItemCaptureTime,
    _i2.ConfigurationItemStatus? configurationItemStatus,
    String? configurationStateId,
    String? configurationItemMd5Hash,
    String? arn,
    _i3.ResourceType? resourceType,
    String? resourceId,
    String? resourceName,
    String? awsRegion,
    String? availabilityZone,
    DateTime? resourceCreationTime,
    Map<String, String>? tags,
    List<String>? relatedEvents,
    List<_i4.Relationship>? relationships,
    String? configuration,
    Map<String, String>? supplementaryConfiguration,
  }) {
    return _$ConfigurationItem._(
      version: version,
      accountId: accountId,
      configurationItemCaptureTime: configurationItemCaptureTime,
      configurationItemStatus: configurationItemStatus,
      configurationStateId: configurationStateId,
      configurationItemMd5Hash: configurationItemMd5Hash,
      arn: arn,
      resourceType: resourceType,
      resourceId: resourceId,
      resourceName: resourceName,
      awsRegion: awsRegion,
      availabilityZone: availabilityZone,
      resourceCreationTime: resourceCreationTime,
      tags: tags == null ? null : _i5.BuiltMap(tags),
      relatedEvents:
          relatedEvents == null ? null : _i5.BuiltList(relatedEvents),
      relationships:
          relationships == null ? null : _i5.BuiltList(relationships),
      configuration: configuration,
      supplementaryConfiguration: supplementaryConfiguration == null
          ? null
          : _i5.BuiltMap(supplementaryConfiguration),
    );
  }

  /// A list that contains detailed configurations of a specified resource.
  factory ConfigurationItem.build(
      [void Function(ConfigurationItemBuilder) updates]) = _$ConfigurationItem;

  const ConfigurationItem._();

  static const List<_i6.SmithySerializer<ConfigurationItem>> serializers = [
    ConfigurationItemAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigurationItemBuilder b) {}

  /// The version number of the resource configuration.
  String? get version;

  /// The 12-digit Amazon Web Services account ID associated with the resource.
  String? get accountId;

  /// The time when the configuration recording was initiated.
  DateTime? get configurationItemCaptureTime;

  /// The configuration item status. The valid values are:
  ///
  /// *   OK – The resource configuration has been updated
  ///
  /// *   ResourceDiscovered – The resource was newly discovered
  ///
  /// *   ResourceNotRecorded – The resource was discovered but its configuration was not recorded since the recorder excludes the recording of resources of this type
  ///
  /// *   ResourceDeleted – The resource was deleted
  ///
  /// *   ResourceDeletedNotRecorded – The resource was deleted but its configuration was not recorded since the recorder excludes the recording of resources of this type
  ///
  ///
  /// The CIs do not incur any cost.
  _i2.ConfigurationItemStatus? get configurationItemStatus;

  /// An identifier that indicates the ordering of the configuration items of a resource.
  String? get configurationStateId;

  /// Unique MD5 hash that represents the configuration item's state.
  ///
  /// You can use MD5 hash to compare the states of two or more configuration items that are associated with the same resource.
  String? get configurationItemMd5Hash;

  /// Amazon Resource Name (ARN) associated with the resource.
  String? get arn;

  /// The type of Amazon Web Services resource.
  _i3.ResourceType? get resourceType;

  /// The ID of the resource (for example, `sg-xxxxxx`).
  String? get resourceId;

  /// The custom name of the resource, if available.
  String? get resourceName;

  /// The region where the resource resides.
  String? get awsRegion;

  /// The Availability Zone associated with the resource.
  String? get availabilityZone;

  /// The time stamp when the resource was created.
  DateTime? get resourceCreationTime;

  /// A mapping of key value tags associated with the resource.
  _i5.BuiltMap<String, String>? get tags;

  /// A list of CloudTrail event IDs.
  ///
  /// A populated field indicates that the current configuration was initiated by the events recorded in the CloudTrail log. For more information about CloudTrail, see [What Is CloudTrail](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).
  ///
  /// An empty field indicates that the current configuration was not initiated by any event. As of Version 1.3, the relatedEvents field is empty. You can access the [LookupEvents API](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_LookupEvents.html) in the _CloudTrail API Reference_ to retrieve the events for the resource.
  _i5.BuiltList<String>? get relatedEvents;

  /// A list of related Amazon Web Services resources.
  _i5.BuiltList<_i4.Relationship>? get relationships;

  /// The description of the resource configuration.
  String? get configuration;

  /// Configuration attributes that Config returns for certain resource types to supplement the information returned for the `configuration` parameter.
  _i5.BuiltMap<String, String>? get supplementaryConfiguration;
  @override
  List<Object?> get props => [
        version,
        accountId,
        configurationItemCaptureTime,
        configurationItemStatus,
        configurationStateId,
        configurationItemMd5Hash,
        arn,
        resourceType,
        resourceId,
        resourceName,
        awsRegion,
        availabilityZone,
        resourceCreationTime,
        tags,
        relatedEvents,
        relationships,
        configuration,
        supplementaryConfiguration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigurationItem')
      ..add(
        'version',
        version,
      )
      ..add(
        'accountId',
        accountId,
      )
      ..add(
        'configurationItemCaptureTime',
        configurationItemCaptureTime,
      )
      ..add(
        'configurationItemStatus',
        configurationItemStatus,
      )
      ..add(
        'configurationStateId',
        configurationStateId,
      )
      ..add(
        'configurationItemMd5Hash',
        configurationItemMd5Hash,
      )
      ..add(
        'arn',
        arn,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceName',
        resourceName,
      )
      ..add(
        'awsRegion',
        awsRegion,
      )
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'resourceCreationTime',
        resourceCreationTime,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'relatedEvents',
        relatedEvents,
      )
      ..add(
        'relationships',
        relationships,
      )
      ..add(
        'configuration',
        configuration,
      )
      ..add(
        'supplementaryConfiguration',
        supplementaryConfiguration,
      );
    return helper.toString();
  }
}

class ConfigurationItemAwsJson11Serializer
    extends _i6.StructuredSmithySerializer<ConfigurationItem> {
  const ConfigurationItemAwsJson11Serializer() : super('ConfigurationItem');

  @override
  Iterable<Type> get types => const [
        ConfigurationItem,
        _$ConfigurationItem,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfigurationItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigurationItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'version':
          result.version = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'accountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'configurationItemCaptureTime':
          result.configurationItemCaptureTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'configurationItemStatus':
          result.configurationItemStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ConfigurationItemStatus),
          ) as _i2.ConfigurationItemStatus);
        case 'configurationStateId':
          result.configurationStateId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'configurationItemMD5Hash':
          result.configurationItemMd5Hash = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ResourceType),
          ) as _i3.ResourceType);
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceName':
          result.resourceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'awsRegion':
          result.awsRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceCreationTime':
          result.resourceCreationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i5.BuiltMap<String, String>));
        case 'relatedEvents':
          result.relatedEvents.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'relationships':
          result.relationships.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.Relationship)],
            ),
          ) as _i5.BuiltList<_i4.Relationship>));
        case 'configuration':
          result.configuration = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'supplementaryConfiguration':
          result.supplementaryConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i5.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConfigurationItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfigurationItem(
      :version,
      :accountId,
      :configurationItemCaptureTime,
      :configurationItemStatus,
      :configurationStateId,
      :configurationItemMd5Hash,
      :arn,
      :resourceType,
      :resourceId,
      :resourceName,
      :awsRegion,
      :availabilityZone,
      :resourceCreationTime,
      :tags,
      :relatedEvents,
      :relationships,
      :configuration,
      :supplementaryConfiguration
    ) = object;
    if (version != null) {
      result$
        ..add('version')
        ..add(serializers.serialize(
          version,
          specifiedType: const FullType(String),
        ));
    }
    if (accountId != null) {
      result$
        ..add('accountId')
        ..add(serializers.serialize(
          accountId,
          specifiedType: const FullType(String),
        ));
    }
    if (configurationItemCaptureTime != null) {
      result$
        ..add('configurationItemCaptureTime')
        ..add(serializers.serialize(
          configurationItemCaptureTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (configurationItemStatus != null) {
      result$
        ..add('configurationItemStatus')
        ..add(serializers.serialize(
          configurationItemStatus,
          specifiedType: const FullType(_i2.ConfigurationItemStatus),
        ));
    }
    if (configurationStateId != null) {
      result$
        ..add('configurationStateId')
        ..add(serializers.serialize(
          configurationStateId,
          specifiedType: const FullType(String),
        ));
    }
    if (configurationItemMd5Hash != null) {
      result$
        ..add('configurationItemMD5Hash')
        ..add(serializers.serialize(
          configurationItemMd5Hash,
          specifiedType: const FullType(String),
        ));
    }
    if (arn != null) {
      result$
        ..add('arn')
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add('resourceType')
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(_i3.ResourceType),
        ));
    }
    if (resourceId != null) {
      result$
        ..add('resourceId')
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceName != null) {
      result$
        ..add('resourceName')
        ..add(serializers.serialize(
          resourceName,
          specifiedType: const FullType(String),
        ));
    }
    if (awsRegion != null) {
      result$
        ..add('awsRegion')
        ..add(serializers.serialize(
          awsRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZone != null) {
      result$
        ..add('availabilityZone')
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceCreationTime != null) {
      result$
        ..add('resourceCreationTime')
        ..add(serializers.serialize(
          resourceCreationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (tags != null) {
      result$
        ..add('tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (relatedEvents != null) {
      result$
        ..add('relatedEvents')
        ..add(serializers.serialize(
          relatedEvents,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (relationships != null) {
      result$
        ..add('relationships')
        ..add(serializers.serialize(
          relationships,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i4.Relationship)],
          ),
        ));
    }
    if (configuration != null) {
      result$
        ..add('configuration')
        ..add(serializers.serialize(
          configuration,
          specifiedType: const FullType(String),
        ));
    }
    if (supplementaryConfiguration != null) {
      result$
        ..add('supplementaryConfiguration')
        ..add(serializers.serialize(
          supplementaryConfiguration,
          specifiedType: const FullType(
            _i5.BuiltMap,
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
