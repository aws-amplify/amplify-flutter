// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.describe_type_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i10;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deprecated_status.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/logging_config.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/provisioning_type.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/required_activated_type.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_tests_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/visibility.dart'
    as _i8;

part 'describe_type_output.g.dart';

abstract class DescribeTypeOutput
    with _i1.AWSEquatable<DescribeTypeOutput>
    implements Built<DescribeTypeOutput, DescribeTypeOutputBuilder> {
  factory DescribeTypeOutput({
    String? arn,
    _i2.RegistryType? type,
    String? typeName,
    String? defaultVersionId,
    bool? isDefaultVersion,
    _i3.TypeTestsStatus? typeTestsStatus,
    String? typeTestsStatusDescription,
    String? description,
    String? schema,
    _i4.ProvisioningType? provisioningType,
    _i5.DeprecatedStatus? deprecatedStatus,
    _i6.LoggingConfig? loggingConfig,
    List<_i7.RequiredActivatedType>? requiredActivatedTypes,
    String? executionRoleArn,
    _i8.Visibility? visibility,
    String? sourceUrl,
    String? documentationUrl,
    DateTime? lastUpdated,
    DateTime? timeCreated,
    String? configurationSchema,
    String? publisherId,
    String? originalTypeName,
    String? originalTypeArn,
    String? publicVersionNumber,
    String? latestPublicVersion,
    bool? isActivated,
    bool? autoUpdate,
  }) {
    return _$DescribeTypeOutput._(
      arn: arn,
      type: type,
      typeName: typeName,
      defaultVersionId: defaultVersionId,
      isDefaultVersion: isDefaultVersion,
      typeTestsStatus: typeTestsStatus,
      typeTestsStatusDescription: typeTestsStatusDescription,
      description: description,
      schema: schema,
      provisioningType: provisioningType,
      deprecatedStatus: deprecatedStatus,
      loggingConfig: loggingConfig,
      requiredActivatedTypes: requiredActivatedTypes == null
          ? null
          : _i9.BuiltList(requiredActivatedTypes),
      executionRoleArn: executionRoleArn,
      visibility: visibility,
      sourceUrl: sourceUrl,
      documentationUrl: documentationUrl,
      lastUpdated: lastUpdated,
      timeCreated: timeCreated,
      configurationSchema: configurationSchema,
      publisherId: publisherId,
      originalTypeName: originalTypeName,
      originalTypeArn: originalTypeArn,
      publicVersionNumber: publicVersionNumber,
      latestPublicVersion: latestPublicVersion,
      isActivated: isActivated,
      autoUpdate: autoUpdate,
    );
  }

  factory DescribeTypeOutput.build(
          [void Function(DescribeTypeOutputBuilder) updates]) =
      _$DescribeTypeOutput;

  const DescribeTypeOutput._();

  /// Constructs a [DescribeTypeOutput] from a [payload] and [response].
  factory DescribeTypeOutput.fromResponse(
    DescribeTypeOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i10.SmithySerializer> serializers = [
    DescribeTypeOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTypeOutputBuilder b) {}

  /// The Amazon Resource Name (ARN) of the extension.
  String? get arn;

  /// The kind of extension.
  _i2.RegistryType? get type;

  /// The name of the extension.
  ///
  /// If the extension is a public third-party type you have activated with a type name alias, CloudFormation returns the type name alias. For more information, see [ActivateType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html).
  String? get typeName;

  /// The ID of the default version of the extension. The default version is used when the extension version isn't specified.
  ///
  /// This applies only to private extensions you have registered in your account. For public extensions, both those provided by Amazon Web Services and published by third parties, CloudFormation returns `null`. For more information, see [RegisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).
  ///
  /// To set the default version of an extension, use `SetTypeDefaultVersion` .
  String? get defaultVersionId;

  /// Whether the specified extension version is set as the default version.
  ///
  /// This applies only to private extensions you have registered in your account, and extensions published by Amazon Web Services. For public third-party extensions, whether they are activated in your account, CloudFormation returns `null`.
  bool? get isDefaultVersion;

  /// The contract test status of the registered extension version. To return the extension test status of a specific extension version, you must specify `VersionId`.
  ///
  /// This applies only to registered private extension versions. CloudFormation doesn't return this information for public extensions, whether they are activated in your account.
  ///
  /// *   `PASSED`: The extension has passed all its contract tests.
  ///
  ///     An extension must have a test status of `PASSED` before it can be published. For more information, see [Publishing extensions to make them available for public use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html) in the _CloudFormation Command Line Interface User Guide_.
  ///
  /// *   `FAILED`: The extension has failed one or more contract tests.
  ///
  /// *   `IN_PROGRESS`: Contract tests are currently being performed on the extension.
  ///
  /// *   `NOT_TESTED`: Contract tests haven't been performed on the extension.
  _i3.TypeTestsStatus? get typeTestsStatus;

  /// The description of the test status. To return the extension test status of a specific extension version, you must specify `VersionId`.
  ///
  /// This applies only to registered private extension versions. CloudFormation doesn't return this information for public extensions, whether they are activated in your account.
  String? get typeTestsStatusDescription;

  /// The description of the extension.
  String? get description;

  /// The schema that defines the extension.
  ///
  /// For more information about extension schemas, see [Resource Provider Schema](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html) in the _CloudFormation CLI User Guide_.
  String? get schema;

  /// For resource type extensions, the provisioning behavior of the resource type. CloudFormation determines the provisioning type during registration, based on the types of handlers in the schema handler package submitted.
  ///
  /// Valid values include:
  ///
  /// *   `FULLY_MUTABLE`: The resource type includes an update handler to process updates to the type during stack update operations.
  ///
  /// *   `IMMUTABLE`: The resource type doesn't include an update handler, so the type can't be updated and must instead be replaced during stack update operations.
  ///
  /// *   `NON_PROVISIONABLE`: The resource type doesn't include all the following handlers, and therefore can't actually be provisioned.
  ///
  ///     *   create
  ///
  ///     *   read
  ///
  ///     *   delete
  _i4.ProvisioningType? get provisioningType;

  /// The deprecation status of the extension version.
  ///
  /// Valid values include:
  ///
  /// *   `LIVE`: The extension is activated or registered and can be used in CloudFormation operations, dependent on its provisioning behavior and visibility scope.
  ///
  /// *   `DEPRECATED`: The extension has been deactivated or deregistered and can no longer be used in CloudFormation operations.
  ///
  ///
  /// For public third-party extensions, CloudFormation returns `null`.
  _i5.DeprecatedStatus? get deprecatedStatus;

  /// Contains logging configuration information for private extensions. This applies only to private extensions you have registered in your account. For public extensions, both those provided by Amazon Web Services and published by third parties, CloudFormation returns `null`. For more information, see [RegisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).
  _i6.LoggingConfig? get loggingConfig;

  /// For extensions that are modules, the public third-party extensions that must be activated in your account in order for the module itself to be activated.
  _i9.BuiltList<_i7.RequiredActivatedType>? get requiredActivatedTypes;

  /// The Amazon Resource Name (ARN) of the IAM execution role used to register the extension. This applies only to private extensions you have registered in your account. For more information, see [RegisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).
  ///
  /// If the registered extension calls any Amazon Web Services APIs, you must create an _[IAM execution role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html)_ that includes the necessary permissions to call those Amazon Web Services APIs, and provision that execution role in your account. CloudFormation then assumes that execution role to provide your extension with the appropriate credentials.
  String? get executionRoleArn;

  /// The scope at which the extension is visible and usable in CloudFormation operations.
  ///
  /// Valid values include:
  ///
  /// *   `PRIVATE`: The extension is only visible and usable within the account in which it is registered. CloudFormation marks any extensions you register as `PRIVATE`.
  ///
  /// *   `PUBLIC`: The extension is publicly visible and usable within any Amazon Web Services account.
  _i8.Visibility? get visibility;

  /// The URL of the source code for the extension.
  String? get sourceUrl;

  /// The URL of a page providing detailed documentation for this extension.
  String? get documentationUrl;

  /// When the specified extension version was registered. This applies only to:
  ///
  /// *   Private extensions you have registered in your account. For more information, see [RegisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).
  ///
  /// *   Public extensions you have activated in your account with auto-update specified. For more information, see [ActivateType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html).
  DateTime? get lastUpdated;

  /// When the specified private extension version was registered or activated in your account.
  DateTime? get timeCreated;

  /// A JSON string that represent the current configuration data for the extension in this account and region.
  ///
  /// To set the configuration data for an extension, use [SetTypeConfiguration](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html). For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
  String? get configurationSchema;

  /// The publisher ID of the extension publisher.
  ///
  /// This applies only to public third-party extensions. For private registered extensions, and extensions provided by Amazon Web Services, CloudFormation returns `null`.
  String? get publisherId;

  /// For public extensions that have been activated for this account and region, the type name of the public extension.
  ///
  /// If you specified a `TypeNameAlias` when enabling the extension in this account and region, CloudFormation treats that alias as the extension's type name within the account and region, not the type name of the public extension. For more information, see [Specifying aliases to refer to extensions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-alias) in the _CloudFormation User Guide_.
  String? get originalTypeName;

  /// For public extensions that have been activated for this account and region, the Amazon Resource Name (ARN) of the public extension.
  String? get originalTypeArn;

  /// The version number of a public third-party extension.
  ///
  /// This applies only if you specify a public extension you have activated in your account, or specify a public extension without specifying a version. For all other extensions, CloudFormation returns `null`.
  String? get publicVersionNumber;

  /// The latest version of a public extension _that is available_ for use.
  ///
  /// This only applies if you specify a public extension, and you don't specify a version. For all other requests, CloudFormation returns `null`.
  String? get latestPublicVersion;

  /// Whether the extension is activated in the account and region.
  ///
  /// This only applies to public third-party extensions. For all other extensions, CloudFormation returns `null`.
  bool? get isActivated;

  /// Whether CloudFormation automatically updates the extension in this account and region when a new _minor_ version is published by the extension publisher. Major versions released by the publisher must be manually updated. For more information, see [Activating public extensions for use in your account](AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable) in the _CloudFormation User Guide_.
  bool? get autoUpdate;
  @override
  List<Object?> get props => [
        arn,
        type,
        typeName,
        defaultVersionId,
        isDefaultVersion,
        typeTestsStatus,
        typeTestsStatusDescription,
        description,
        schema,
        provisioningType,
        deprecatedStatus,
        loggingConfig,
        requiredActivatedTypes,
        executionRoleArn,
        visibility,
        sourceUrl,
        documentationUrl,
        lastUpdated,
        timeCreated,
        configurationSchema,
        publisherId,
        originalTypeName,
        originalTypeArn,
        publicVersionNumber,
        latestPublicVersion,
        isActivated,
        autoUpdate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTypeOutput');
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'typeName',
      typeName,
    );
    helper.add(
      'defaultVersionId',
      defaultVersionId,
    );
    helper.add(
      'isDefaultVersion',
      isDefaultVersion,
    );
    helper.add(
      'typeTestsStatus',
      typeTestsStatus,
    );
    helper.add(
      'typeTestsStatusDescription',
      typeTestsStatusDescription,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'schema',
      schema,
    );
    helper.add(
      'provisioningType',
      provisioningType,
    );
    helper.add(
      'deprecatedStatus',
      deprecatedStatus,
    );
    helper.add(
      'loggingConfig',
      loggingConfig,
    );
    helper.add(
      'requiredActivatedTypes',
      requiredActivatedTypes,
    );
    helper.add(
      'executionRoleArn',
      executionRoleArn,
    );
    helper.add(
      'visibility',
      visibility,
    );
    helper.add(
      'sourceUrl',
      sourceUrl,
    );
    helper.add(
      'documentationUrl',
      documentationUrl,
    );
    helper.add(
      'lastUpdated',
      lastUpdated,
    );
    helper.add(
      'timeCreated',
      timeCreated,
    );
    helper.add(
      'configurationSchema',
      configurationSchema,
    );
    helper.add(
      'publisherId',
      publisherId,
    );
    helper.add(
      'originalTypeName',
      originalTypeName,
    );
    helper.add(
      'originalTypeArn',
      originalTypeArn,
    );
    helper.add(
      'publicVersionNumber',
      publicVersionNumber,
    );
    helper.add(
      'latestPublicVersion',
      latestPublicVersion,
    );
    helper.add(
      'isActivated',
      isActivated,
    );
    helper.add(
      'autoUpdate',
      autoUpdate,
    );
    return helper.toString();
  }
}

class DescribeTypeOutputAwsQuerySerializer
    extends _i10.StructuredSmithySerializer<DescribeTypeOutput> {
  const DescribeTypeOutputAwsQuerySerializer() : super('DescribeTypeOutput');

  @override
  Iterable<Type> get types => const [
        DescribeTypeOutput,
        _$DescribeTypeOutput,
      ];
  @override
  Iterable<_i10.ShapeId> get supportedProtocols => const [
        _i10.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeTypeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTypeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RegistryType),
            ) as _i2.RegistryType);
          }
          break;
        case 'TypeName':
          if (value != null) {
            result.typeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DefaultVersionId':
          if (value != null) {
            result.defaultVersionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IsDefaultVersion':
          if (value != null) {
            result.isDefaultVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'TypeTestsStatus':
          if (value != null) {
            result.typeTestsStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.TypeTestsStatus),
            ) as _i3.TypeTestsStatus);
          }
          break;
        case 'TypeTestsStatusDescription':
          if (value != null) {
            result.typeTestsStatusDescription = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Schema':
          if (value != null) {
            result.schema = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ProvisioningType':
          if (value != null) {
            result.provisioningType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ProvisioningType),
            ) as _i4.ProvisioningType);
          }
          break;
        case 'DeprecatedStatus':
          if (value != null) {
            result.deprecatedStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.DeprecatedStatus),
            ) as _i5.DeprecatedStatus);
          }
          break;
        case 'LoggingConfig':
          if (value != null) {
            result.loggingConfig.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.LoggingConfig),
            ) as _i6.LoggingConfig));
          }
          break;
        case 'RequiredActivatedTypes':
          if (value != null) {
            result.requiredActivatedTypes.replace(
                (const _i10.XmlBuiltListSerializer(
                        indexer: _i10.XmlIndexer.awsQueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i9.BuiltList,
                [FullType(_i7.RequiredActivatedType)],
              ),
            ) as _i9.BuiltList<_i7.RequiredActivatedType>));
          }
          break;
        case 'ExecutionRoleArn':
          if (value != null) {
            result.executionRoleArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Visibility':
          if (value != null) {
            result.visibility = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.Visibility),
            ) as _i8.Visibility);
          }
          break;
        case 'SourceUrl':
          if (value != null) {
            result.sourceUrl = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DocumentationUrl':
          if (value != null) {
            result.documentationUrl = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastUpdated':
          if (value != null) {
            result.lastUpdated = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'TimeCreated':
          if (value != null) {
            result.timeCreated = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'ConfigurationSchema':
          if (value != null) {
            result.configurationSchema = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PublisherId':
          if (value != null) {
            result.publisherId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'OriginalTypeName':
          if (value != null) {
            result.originalTypeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'OriginalTypeArn':
          if (value != null) {
            result.originalTypeArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PublicVersionNumber':
          if (value != null) {
            result.publicVersionNumber = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LatestPublicVersion':
          if (value != null) {
            result.latestPublicVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IsActivated':
          if (value != null) {
            result.isActivated = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'AutoUpdate':
          if (value != null) {
            result.autoUpdate = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as DescribeTypeOutput);
    final result = <Object?>[
      const _i10.XmlElementName(
        'DescribeTypeOutputResponse',
        _i10.XmlNamespace(
            'http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.arn != null) {
      result
        ..add(const _i10.XmlElementName('Arn'))
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.type != null) {
      result
        ..add(const _i10.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i2.RegistryType),
        ));
    }
    if (payload.typeName != null) {
      result
        ..add(const _i10.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          payload.typeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.defaultVersionId != null) {
      result
        ..add(const _i10.XmlElementName('DefaultVersionId'))
        ..add(serializers.serialize(
          payload.defaultVersionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.isDefaultVersion != null) {
      result
        ..add(const _i10.XmlElementName('IsDefaultVersion'))
        ..add(serializers.serialize(
          payload.isDefaultVersion!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.typeTestsStatus != null) {
      result
        ..add(const _i10.XmlElementName('TypeTestsStatus'))
        ..add(serializers.serialize(
          payload.typeTestsStatus!,
          specifiedType: const FullType.nullable(_i3.TypeTestsStatus),
        ));
    }
    if (payload.typeTestsStatusDescription != null) {
      result
        ..add(const _i10.XmlElementName('TypeTestsStatusDescription'))
        ..add(serializers.serialize(
          payload.typeTestsStatusDescription!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i10.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.schema != null) {
      result
        ..add(const _i10.XmlElementName('Schema'))
        ..add(serializers.serialize(
          payload.schema!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.provisioningType != null) {
      result
        ..add(const _i10.XmlElementName('ProvisioningType'))
        ..add(serializers.serialize(
          payload.provisioningType!,
          specifiedType: const FullType.nullable(_i4.ProvisioningType),
        ));
    }
    if (payload.deprecatedStatus != null) {
      result
        ..add(const _i10.XmlElementName('DeprecatedStatus'))
        ..add(serializers.serialize(
          payload.deprecatedStatus!,
          specifiedType: const FullType.nullable(_i5.DeprecatedStatus),
        ));
    }
    if (payload.loggingConfig != null) {
      result
        ..add(const _i10.XmlElementName('LoggingConfig'))
        ..add(serializers.serialize(
          payload.loggingConfig!,
          specifiedType: const FullType(_i6.LoggingConfig),
        ));
    }
    if (payload.requiredActivatedTypes != null) {
      result
        ..add(const _i10.XmlElementName('RequiredActivatedTypes'))
        ..add(const _i10.XmlBuiltListSerializer(
                indexer: _i10.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.requiredActivatedTypes!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i7.RequiredActivatedType)],
          ),
        ));
    }
    if (payload.executionRoleArn != null) {
      result
        ..add(const _i10.XmlElementName('ExecutionRoleArn'))
        ..add(serializers.serialize(
          payload.executionRoleArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.visibility != null) {
      result
        ..add(const _i10.XmlElementName('Visibility'))
        ..add(serializers.serialize(
          payload.visibility!,
          specifiedType: const FullType.nullable(_i8.Visibility),
        ));
    }
    if (payload.sourceUrl != null) {
      result
        ..add(const _i10.XmlElementName('SourceUrl'))
        ..add(serializers.serialize(
          payload.sourceUrl!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.documentationUrl != null) {
      result
        ..add(const _i10.XmlElementName('DocumentationUrl'))
        ..add(serializers.serialize(
          payload.documentationUrl!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastUpdated != null) {
      result
        ..add(const _i10.XmlElementName('LastUpdated'))
        ..add(serializers.serialize(
          payload.lastUpdated!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.timeCreated != null) {
      result
        ..add(const _i10.XmlElementName('TimeCreated'))
        ..add(serializers.serialize(
          payload.timeCreated!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.configurationSchema != null) {
      result
        ..add(const _i10.XmlElementName('ConfigurationSchema'))
        ..add(serializers.serialize(
          payload.configurationSchema!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publisherId != null) {
      result
        ..add(const _i10.XmlElementName('PublisherId'))
        ..add(serializers.serialize(
          payload.publisherId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.originalTypeName != null) {
      result
        ..add(const _i10.XmlElementName('OriginalTypeName'))
        ..add(serializers.serialize(
          payload.originalTypeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.originalTypeArn != null) {
      result
        ..add(const _i10.XmlElementName('OriginalTypeArn'))
        ..add(serializers.serialize(
          payload.originalTypeArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publicVersionNumber != null) {
      result
        ..add(const _i10.XmlElementName('PublicVersionNumber'))
        ..add(serializers.serialize(
          payload.publicVersionNumber!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.latestPublicVersion != null) {
      result
        ..add(const _i10.XmlElementName('LatestPublicVersion'))
        ..add(serializers.serialize(
          payload.latestPublicVersion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.isActivated != null) {
      result
        ..add(const _i10.XmlElementName('IsActivated'))
        ..add(serializers.serialize(
          payload.isActivated!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.autoUpdate != null) {
      result
        ..add(const _i10.XmlElementName('AutoUpdate'))
        ..add(serializers.serialize(
          payload.autoUpdate!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
