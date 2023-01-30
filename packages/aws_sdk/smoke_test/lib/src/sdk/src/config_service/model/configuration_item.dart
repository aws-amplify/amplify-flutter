// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.configuration_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/relationship.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i4;

part 'configuration_item.g.dart';

/// A list that contains detailed configurations of a specified resource.
abstract class ConfigurationItem
    with _i1.AWSEquatable<ConfigurationItem>
    implements Built<ConfigurationItem, ConfigurationItemBuilder> {
  /// A list that contains detailed configurations of a specified resource.
  factory ConfigurationItem({
    String? accountId,
    String? arn,
    String? availabilityZone,
    String? awsRegion,
    String? configuration,
    DateTime? configurationItemCaptureTime,
    String? configurationItemMd5Hash,
    _i2.ConfigurationItemStatus? configurationItemStatus,
    String? configurationStateId,
    List<String>? relatedEvents,
    List<_i3.Relationship>? relationships,
    DateTime? resourceCreationTime,
    String? resourceId,
    String? resourceName,
    _i4.ResourceType? resourceType,
    Map<String, String>? supplementaryConfiguration,
    Map<String, String>? tags,
    String? version,
  }) {
    return _$ConfigurationItem._(
      accountId: accountId,
      arn: arn,
      availabilityZone: availabilityZone,
      awsRegion: awsRegion,
      configuration: configuration,
      configurationItemCaptureTime: configurationItemCaptureTime,
      configurationItemMd5Hash: configurationItemMd5Hash,
      configurationItemStatus: configurationItemStatus,
      configurationStateId: configurationStateId,
      relatedEvents:
          relatedEvents == null ? null : _i5.BuiltList(relatedEvents),
      relationships:
          relationships == null ? null : _i5.BuiltList(relationships),
      resourceCreationTime: resourceCreationTime,
      resourceId: resourceId,
      resourceName: resourceName,
      resourceType: resourceType,
      supplementaryConfiguration: supplementaryConfiguration == null
          ? null
          : _i5.BuiltMap(supplementaryConfiguration),
      tags: tags == null ? null : _i5.BuiltMap(tags),
      version: version,
    );
  }

  /// A list that contains detailed configurations of a specified resource.
  factory ConfigurationItem.build(
      [void Function(ConfigurationItemBuilder) updates]) = _$ConfigurationItem;

  const ConfigurationItem._();

  static const List<_i6.SmithySerializer> serializers = [
    ConfigurationItemAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigurationItemBuilder b) {}

  /// The 12-digit Amazon Web Services account ID associated with the resource.
  String? get accountId;

  /// Amazon Resource Name (ARN) associated with the resource.
  String? get arn;

  /// The Availability Zone associated with the resource.
  String? get availabilityZone;

  /// The region where the resource resides.
  String? get awsRegion;

  /// The description of the resource configuration.
  String? get configuration;

  /// The time when the configuration recording was initiated.
  DateTime? get configurationItemCaptureTime;

  /// Unique MD5 hash that represents the configuration item's state.
  ///
  /// You can use MD5 hash to compare the states of two or more configuration items that are associated with the same resource.
  String? get configurationItemMd5Hash;

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

  /// A list of CloudTrail event IDs.
  ///
  /// A populated field indicates that the current configuration was initiated by the events recorded in the CloudTrail log. For more information about CloudTrail, see [What Is CloudTrail](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).
  ///
  /// An empty field indicates that the current configuration was not initiated by any event. As of Version 1.3, the relatedEvents field is empty. You can access the [LookupEvents API](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_LookupEvents.html) in the _CloudTrail API Reference_ to retrieve the events for the resource.
  _i5.BuiltList<String>? get relatedEvents;

  /// A list of related Amazon Web Services resources.
  _i5.BuiltList<_i3.Relationship>? get relationships;

  /// The time stamp when the resource was created.
  DateTime? get resourceCreationTime;

  /// The ID of the resource (for example, `sg-xxxxxx`).
  String? get resourceId;

  /// The custom name of the resource, if available.
  String? get resourceName;

  /// The type of Amazon Web Services resource.
  _i4.ResourceType? get resourceType;

  /// Configuration attributes that Config returns for certain resource types to supplement the information returned for the `configuration` parameter.
  _i5.BuiltMap<String, String>? get supplementaryConfiguration;

  /// A mapping of key value tags associated with the resource.
  _i5.BuiltMap<String, String>? get tags;

  /// The version number of the resource configuration.
  String? get version;
  @override
  List<Object?> get props => [
        accountId,
        arn,
        availabilityZone,
        awsRegion,
        configuration,
        configurationItemCaptureTime,
        configurationItemMd5Hash,
        configurationItemStatus,
        configurationStateId,
        relatedEvents,
        relationships,
        resourceCreationTime,
        resourceId,
        resourceName,
        resourceType,
        supplementaryConfiguration,
        tags,
        version,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigurationItem');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'awsRegion',
      awsRegion,
    );
    helper.add(
      'configuration',
      configuration,
    );
    helper.add(
      'configurationItemCaptureTime',
      configurationItemCaptureTime,
    );
    helper.add(
      'configurationItemMd5Hash',
      configurationItemMd5Hash,
    );
    helper.add(
      'configurationItemStatus',
      configurationItemStatus,
    );
    helper.add(
      'configurationStateId',
      configurationStateId,
    );
    helper.add(
      'relatedEvents',
      relatedEvents,
    );
    helper.add(
      'relationships',
      relationships,
    );
    helper.add(
      'resourceCreationTime',
      resourceCreationTime,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceName',
      resourceName,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'supplementaryConfiguration',
      supplementaryConfiguration,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'version',
      version,
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
      switch (key) {
        case 'accountId':
          if (value != null) {
            result.accountId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'awsRegion':
          if (value != null) {
            result.awsRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'configuration':
          if (value != null) {
            result.configuration = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'configurationItemCaptureTime':
          if (value != null) {
            result.configurationItemCaptureTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'configurationItemMD5Hash':
          if (value != null) {
            result.configurationItemMd5Hash = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'configurationItemStatus':
          if (value != null) {
            result.configurationItemStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ConfigurationItemStatus),
            ) as _i2.ConfigurationItemStatus);
          }
          break;
        case 'configurationStateId':
          if (value != null) {
            result.configurationStateId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'relatedEvents':
          if (value != null) {
            result.relatedEvents.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'relationships':
          if (value != null) {
            result.relationships.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.Relationship)],
              ),
            ) as _i5.BuiltList<_i3.Relationship>));
          }
          break;
        case 'resourceCreationTime':
          if (value != null) {
            result.resourceCreationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'resourceId':
          if (value != null) {
            result.resourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceName':
          if (value != null) {
            result.resourceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ResourceType),
            ) as _i4.ResourceType);
          }
          break;
        case 'supplementaryConfiguration':
          if (value != null) {
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
          break;
        case 'tags':
          if (value != null) {
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
          }
          break;
        case 'version':
          if (value != null) {
            result.version = (serializers.deserialize(
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
    final payload = (object as ConfigurationItem);
    final result = <Object?>[];
    if (payload.accountId != null) {
      result
        ..add('accountId')
        ..add(serializers.serialize(
          payload.accountId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.arn != null) {
      result
        ..add('arn')
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availabilityZone != null) {
      result
        ..add('availabilityZone')
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsRegion != null) {
      result
        ..add('awsRegion')
        ..add(serializers.serialize(
          payload.awsRegion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.configuration != null) {
      result
        ..add('configuration')
        ..add(serializers.serialize(
          payload.configuration!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.configurationItemCaptureTime != null) {
      result
        ..add('configurationItemCaptureTime')
        ..add(serializers.serialize(
          payload.configurationItemCaptureTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.configurationItemMd5Hash != null) {
      result
        ..add('configurationItemMD5Hash')
        ..add(serializers.serialize(
          payload.configurationItemMd5Hash!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.configurationItemStatus != null) {
      result
        ..add('configurationItemStatus')
        ..add(serializers.serialize(
          payload.configurationItemStatus!,
          specifiedType: const FullType(_i2.ConfigurationItemStatus),
        ));
    }
    if (payload.configurationStateId != null) {
      result
        ..add('configurationStateId')
        ..add(serializers.serialize(
          payload.configurationStateId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.relatedEvents != null) {
      result
        ..add('relatedEvents')
        ..add(serializers.serialize(
          payload.relatedEvents!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.relationships != null) {
      result
        ..add('relationships')
        ..add(serializers.serialize(
          payload.relationships!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i3.Relationship)],
          ),
        ));
    }
    if (payload.resourceCreationTime != null) {
      result
        ..add('resourceCreationTime')
        ..add(serializers.serialize(
          payload.resourceCreationTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.resourceId != null) {
      result
        ..add('resourceId')
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceName != null) {
      result
        ..add('resourceName')
        ..add(serializers.serialize(
          payload.resourceName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add('resourceType')
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType(_i4.ResourceType),
        ));
    }
    if (payload.supplementaryConfiguration != null) {
      result
        ..add('supplementaryConfiguration')
        ..add(serializers.serialize(
          payload.supplementaryConfiguration!,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(
          payload.version!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
