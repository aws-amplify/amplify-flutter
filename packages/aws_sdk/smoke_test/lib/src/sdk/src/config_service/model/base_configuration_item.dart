// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? version,
    String? accountId,
    DateTime? configurationItemCaptureTime,
    _i2.ConfigurationItemStatus? configurationItemStatus,
    String? configurationStateId,
    String? arn,
    _i3.ResourceType? resourceType,
    String? resourceId,
    String? resourceName,
    String? awsRegion,
    String? availabilityZone,
    DateTime? resourceCreationTime,
    String? configuration,
    Map<String, String>? supplementaryConfiguration,
  }) {
    return _$BaseConfigurationItem._(
      version: version,
      accountId: accountId,
      configurationItemCaptureTime: configurationItemCaptureTime,
      configurationItemStatus: configurationItemStatus,
      configurationStateId: configurationStateId,
      arn: arn,
      resourceType: resourceType,
      resourceId: resourceId,
      resourceName: resourceName,
      awsRegion: awsRegion,
      availabilityZone: availabilityZone,
      resourceCreationTime: resourceCreationTime,
      configuration: configuration,
      supplementaryConfiguration: supplementaryConfiguration == null
          ? null
          : _i4.BuiltMap(supplementaryConfiguration),
    );
  }

  /// The detailed configuration of a specified resource.
  factory BaseConfigurationItem.build(
          [void Function(BaseConfigurationItemBuilder) updates]) =
      _$BaseConfigurationItem;

  const BaseConfigurationItem._();

  static const List<_i5.SmithySerializer<BaseConfigurationItem>> serializers = [
    BaseConfigurationItemAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BaseConfigurationItemBuilder b) {}

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

  /// The Amazon Resource Name (ARN) of the resource.
  String? get arn;

  /// The type of Amazon Web Services resource.
  _i3.ResourceType? get resourceType;

  /// The ID of the resource (for example., sg-xxxxxx).
  String? get resourceId;

  /// The custom name of the resource, if available.
  String? get resourceName;

  /// The region where the resource resides.
  String? get awsRegion;

  /// The Availability Zone associated with the resource.
  String? get availabilityZone;

  /// The time stamp when the resource was created.
  DateTime? get resourceCreationTime;

  /// The description of the resource configuration.
  String? get configuration;

  /// Configuration attributes that Config returns for certain resource types to supplement the information returned for the configuration parameter.
  _i4.BuiltMap<String, String>? get supplementaryConfiguration;
  @override
  List<Object?> get props => [
        version,
        accountId,
        configurationItemCaptureTime,
        configurationItemStatus,
        configurationStateId,
        arn,
        resourceType,
        resourceId,
        resourceName,
        awsRegion,
        availabilityZone,
        resourceCreationTime,
        configuration,
        supplementaryConfiguration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BaseConfigurationItem')
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
        case 'configuration':
          result.configuration = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'supplementaryConfiguration':
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
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BaseConfigurationItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final BaseConfigurationItem(
      :version,
      :accountId,
      :configurationItemCaptureTime,
      :configurationItemStatus,
      :configurationStateId,
      :arn,
      :resourceType,
      :resourceId,
      :resourceName,
      :awsRegion,
      :availabilityZone,
      :resourceCreationTime,
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
            _i4.BuiltMap,
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
