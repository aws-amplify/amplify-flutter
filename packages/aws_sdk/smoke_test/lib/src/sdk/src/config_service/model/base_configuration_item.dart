// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.base_configuration_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i3;

part 'base_configuration_item.g.dart';

/// The detailed configuration of a specified resource.
abstract class BaseConfigurationItem
    with _i1.AWSEquatable<BaseConfigurationItem>
    implements Built<BaseConfigurationItem, BaseConfigurationItemBuilder> {
  /// The detailed configuration of a specified resource.
  factory BaseConfigurationItem({
    String? accountId,
    String? arn,
    String? availabilityZone,
    String? awsRegion,
    String? configuration,
    DateTime? configurationItemCaptureTime,
    _i2.ConfigurationItemStatus? configurationItemStatus,
    String? configurationStateId,
    DateTime? resourceCreationTime,
    String? resourceId,
    String? resourceName,
    _i3.ResourceType? resourceType,
    Map<String, String>? supplementaryConfiguration,
    String? version,
  }) {
    return _$BaseConfigurationItem._(
      accountId: accountId,
      arn: arn,
      availabilityZone: availabilityZone,
      awsRegion: awsRegion,
      configuration: configuration,
      configurationItemCaptureTime: configurationItemCaptureTime,
      configurationItemStatus: configurationItemStatus,
      configurationStateId: configurationStateId,
      resourceCreationTime: resourceCreationTime,
      resourceId: resourceId,
      resourceName: resourceName,
      resourceType: resourceType,
      supplementaryConfiguration: supplementaryConfiguration == null
          ? null
          : _i4.BuiltMap(supplementaryConfiguration),
      version: version,
    );
  }

  /// The detailed configuration of a specified resource.
  factory BaseConfigurationItem.build(
          [void Function(BaseConfigurationItemBuilder) updates]) =
      _$BaseConfigurationItem;

  const BaseConfigurationItem._();

  static const List<_i5.SmithySerializer> serializers = [
    BaseConfigurationItemAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BaseConfigurationItemBuilder b) {}

  /// The 12-digit Amazon Web Services account ID associated with the resource.
  String? get accountId;

  /// The Amazon Resource Name (ARN) of the resource.
  String? get arn;

  /// The Availability Zone associated with the resource.
  String? get availabilityZone;

  /// The region where the resource resides.
  String? get awsRegion;

  /// The description of the resource configuration.
  String? get configuration;

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

  /// The time stamp when the resource was created.
  DateTime? get resourceCreationTime;

  /// The ID of the resource (for example., sg-xxxxxx).
  String? get resourceId;

  /// The custom name of the resource, if available.
  String? get resourceName;

  /// The type of Amazon Web Services resource.
  _i3.ResourceType? get resourceType;

  /// Configuration attributes that Config returns for certain resource types to supplement the information returned for the configuration parameter.
  _i4.BuiltMap<String, String>? get supplementaryConfiguration;

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
        configurationItemStatus,
        configurationStateId,
        resourceCreationTime,
        resourceId,
        resourceName,
        resourceType,
        supplementaryConfiguration,
        version,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BaseConfigurationItem');
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
      'configurationItemStatus',
      configurationItemStatus,
    );
    helper.add(
      'configurationStateId',
      configurationStateId,
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
      'version',
      version,
    );
    return helper.toString();
  }
}

class BaseConfigurationItemAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<BaseConfigurationItem> {
  const BaseConfigurationItemAwsJson11Serializer()
      : super('BaseConfigurationItem');

  @override
  Iterable<Type> get types => const [
        BaseConfigurationItem,
        _$BaseConfigurationItem,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  BaseConfigurationItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseConfigurationItemBuilder();
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
              specifiedType: const FullType(_i3.ResourceType),
            ) as _i3.ResourceType);
          }
          break;
        case 'supplementaryConfiguration':
          if (value != null) {
            result.supplementaryConfiguration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i4.BuiltMap<String, String>));
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
    final payload = (object as BaseConfigurationItem);
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
          specifiedType: const FullType(_i3.ResourceType),
        ));
    }
    if (payload.supplementaryConfiguration != null) {
      result
        ..add('supplementaryConfiguration')
        ..add(serializers.serialize(
          payload.supplementaryConfiguration!,
          specifiedType: const FullType(
            _i4.BuiltMap,
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
