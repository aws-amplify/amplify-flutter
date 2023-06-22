// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i10.SmithySerializer<DescribeTypeOutput>> serializers = [
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
  /// To set the default version of an extension, use SetTypeDefaultVersion.
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

  /// A JSON string that represent the current configuration data for the extension in this account and Region.
  ///
  /// To set the configuration data for an extension, use [SetTypeConfiguration](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html). For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
  String? get configurationSchema;

  /// The publisher ID of the extension publisher.
  ///
  /// This applies only to public third-party extensions. For private registered extensions, and extensions provided by Amazon Web Services, CloudFormation returns `null`.
  String? get publisherId;

  /// For public extensions that have been activated for this account and Region, the type name of the public extension.
  ///
  /// If you specified a `TypeNameAlias` when enabling the extension in this account and Region, CloudFormation treats that alias as the extension's type name within the account and Region, not the type name of the public extension. For more information, see [Specifying aliases to refer to extensions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-alias) in the _CloudFormation User Guide_.
  String? get originalTypeName;

  /// For public extensions that have been activated for this account and Region, the Amazon Resource Name (ARN) of the public extension.
  String? get originalTypeArn;

  /// The version number of a public third-party extension.
  ///
  /// This applies only if you specify a public extension you have activated in your account, or specify a public extension without specifying a version. For all other extensions, CloudFormation returns `null`.
  String? get publicVersionNumber;

  /// The latest version of a public extension _that is available_ for use.
  ///
  /// This only applies if you specify a public extension, and you don't specify a version. For all other requests, CloudFormation returns `null`.
  String? get latestPublicVersion;

  /// Whether the extension is activated in the account and Region.
  ///
  /// This only applies to public third-party extensions. For all other extensions, CloudFormation returns `null`.
  bool? get isActivated;

  /// Whether CloudFormation automatically updates the extension in this account and Region when a new _minor_ version is published by the extension publisher. Major versions released by the publisher must be manually updated. For more information, see [Activating public extensions for use in your account](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable) in the _CloudFormation User Guide_.
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
    final helper = newBuiltValueToStringHelper('DescribeTypeOutput')
      ..add(
        'arn',
        arn,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'typeName',
        typeName,
      )
      ..add(
        'defaultVersionId',
        defaultVersionId,
      )
      ..add(
        'isDefaultVersion',
        isDefaultVersion,
      )
      ..add(
        'typeTestsStatus',
        typeTestsStatus,
      )
      ..add(
        'typeTestsStatusDescription',
        typeTestsStatusDescription,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'schema',
        schema,
      )
      ..add(
        'provisioningType',
        provisioningType,
      )
      ..add(
        'deprecatedStatus',
        deprecatedStatus,
      )
      ..add(
        'loggingConfig',
        loggingConfig,
      )
      ..add(
        'requiredActivatedTypes',
        requiredActivatedTypes,
      )
      ..add(
        'executionRoleArn',
        executionRoleArn,
      )
      ..add(
        'visibility',
        visibility,
      )
      ..add(
        'sourceUrl',
        sourceUrl,
      )
      ..add(
        'documentationUrl',
        documentationUrl,
      )
      ..add(
        'lastUpdated',
        lastUpdated,
      )
      ..add(
        'timeCreated',
        timeCreated,
      )
      ..add(
        'configurationSchema',
        configurationSchema,
      )
      ..add(
        'publisherId',
        publisherId,
      )
      ..add(
        'originalTypeName',
        originalTypeName,
      )
      ..add(
        'originalTypeArn',
        originalTypeArn,
      )
      ..add(
        'publicVersionNumber',
        publicVersionNumber,
      )
      ..add(
        'latestPublicVersion',
        latestPublicVersion,
      )
      ..add(
        'isActivated',
        isActivated,
      )
      ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RegistryType),
          ) as _i2.RegistryType);
        case 'TypeName':
          result.typeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DefaultVersionId':
          result.defaultVersionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IsDefaultVersion':
          result.isDefaultVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'TypeTestsStatus':
          result.typeTestsStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.TypeTestsStatus),
          ) as _i3.TypeTestsStatus);
        case 'TypeTestsStatusDescription':
          result.typeTestsStatusDescription = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Schema':
          result.schema = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ProvisioningType':
          result.provisioningType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ProvisioningType),
          ) as _i4.ProvisioningType);
        case 'DeprecatedStatus':
          result.deprecatedStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.DeprecatedStatus),
          ) as _i5.DeprecatedStatus);
        case 'LoggingConfig':
          result.loggingConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.LoggingConfig),
          ) as _i6.LoggingConfig));
        case 'RequiredActivatedTypes':
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
        case 'ExecutionRoleArn':
          result.executionRoleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Visibility':
          result.visibility = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.Visibility),
          ) as _i8.Visibility);
        case 'SourceUrl':
          result.sourceUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DocumentationUrl':
          result.documentationUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastUpdated':
          result.lastUpdated = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'TimeCreated':
          result.timeCreated = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ConfigurationSchema':
          result.configurationSchema = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PublisherId':
          result.publisherId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OriginalTypeName':
          result.originalTypeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OriginalTypeArn':
          result.originalTypeArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PublicVersionNumber':
          result.publicVersionNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LatestPublicVersion':
          result.latestPublicVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IsActivated':
          result.isActivated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AutoUpdate':
          result.autoUpdate = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeTypeOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i10.XmlElementName(
        'DescribeTypeOutputResponse',
        _i10.XmlNamespace(
            'http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeTypeOutput(
      :arn,
      :type,
      :typeName,
      :defaultVersionId,
      :isDefaultVersion,
      :typeTestsStatus,
      :typeTestsStatusDescription,
      :description,
      :schema,
      :provisioningType,
      :deprecatedStatus,
      :loggingConfig,
      :requiredActivatedTypes,
      :executionRoleArn,
      :visibility,
      :sourceUrl,
      :documentationUrl,
      :lastUpdated,
      :timeCreated,
      :configurationSchema,
      :publisherId,
      :originalTypeName,
      :originalTypeArn,
      :publicVersionNumber,
      :latestPublicVersion,
      :isActivated,
      :autoUpdate
    ) = object;
    if (arn != null) {
      result$
        ..add(const _i10.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i10.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i2.RegistryType),
        ));
    }
    if (typeName != null) {
      result$
        ..add(const _i10.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          typeName,
          specifiedType: const FullType(String),
        ));
    }
    if (defaultVersionId != null) {
      result$
        ..add(const _i10.XmlElementName('DefaultVersionId'))
        ..add(serializers.serialize(
          defaultVersionId,
          specifiedType: const FullType(String),
        ));
    }
    if (isDefaultVersion != null) {
      result$
        ..add(const _i10.XmlElementName('IsDefaultVersion'))
        ..add(serializers.serialize(
          isDefaultVersion,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (typeTestsStatus != null) {
      result$
        ..add(const _i10.XmlElementName('TypeTestsStatus'))
        ..add(serializers.serialize(
          typeTestsStatus,
          specifiedType: const FullType.nullable(_i3.TypeTestsStatus),
        ));
    }
    if (typeTestsStatusDescription != null) {
      result$
        ..add(const _i10.XmlElementName('TypeTestsStatusDescription'))
        ..add(serializers.serialize(
          typeTestsStatusDescription,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i10.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (schema != null) {
      result$
        ..add(const _i10.XmlElementName('Schema'))
        ..add(serializers.serialize(
          schema,
          specifiedType: const FullType(String),
        ));
    }
    if (provisioningType != null) {
      result$
        ..add(const _i10.XmlElementName('ProvisioningType'))
        ..add(serializers.serialize(
          provisioningType,
          specifiedType: const FullType.nullable(_i4.ProvisioningType),
        ));
    }
    if (deprecatedStatus != null) {
      result$
        ..add(const _i10.XmlElementName('DeprecatedStatus'))
        ..add(serializers.serialize(
          deprecatedStatus,
          specifiedType: const FullType.nullable(_i5.DeprecatedStatus),
        ));
    }
    if (loggingConfig != null) {
      result$
        ..add(const _i10.XmlElementName('LoggingConfig'))
        ..add(serializers.serialize(
          loggingConfig,
          specifiedType: const FullType(_i6.LoggingConfig),
        ));
    }
    if (requiredActivatedTypes != null) {
      result$
        ..add(const _i10.XmlElementName('RequiredActivatedTypes'))
        ..add(const _i10.XmlBuiltListSerializer(
                indexer: _i10.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          requiredActivatedTypes,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i7.RequiredActivatedType)],
          ),
        ));
    }
    if (executionRoleArn != null) {
      result$
        ..add(const _i10.XmlElementName('ExecutionRoleArn'))
        ..add(serializers.serialize(
          executionRoleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (visibility != null) {
      result$
        ..add(const _i10.XmlElementName('Visibility'))
        ..add(serializers.serialize(
          visibility,
          specifiedType: const FullType.nullable(_i8.Visibility),
        ));
    }
    if (sourceUrl != null) {
      result$
        ..add(const _i10.XmlElementName('SourceUrl'))
        ..add(serializers.serialize(
          sourceUrl,
          specifiedType: const FullType(String),
        ));
    }
    if (documentationUrl != null) {
      result$
        ..add(const _i10.XmlElementName('DocumentationUrl'))
        ..add(serializers.serialize(
          documentationUrl,
          specifiedType: const FullType(String),
        ));
    }
    if (lastUpdated != null) {
      result$
        ..add(const _i10.XmlElementName('LastUpdated'))
        ..add(serializers.serialize(
          lastUpdated,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (timeCreated != null) {
      result$
        ..add(const _i10.XmlElementName('TimeCreated'))
        ..add(serializers.serialize(
          timeCreated,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (configurationSchema != null) {
      result$
        ..add(const _i10.XmlElementName('ConfigurationSchema'))
        ..add(serializers.serialize(
          configurationSchema,
          specifiedType: const FullType(String),
        ));
    }
    if (publisherId != null) {
      result$
        ..add(const _i10.XmlElementName('PublisherId'))
        ..add(serializers.serialize(
          publisherId,
          specifiedType: const FullType(String),
        ));
    }
    if (originalTypeName != null) {
      result$
        ..add(const _i10.XmlElementName('OriginalTypeName'))
        ..add(serializers.serialize(
          originalTypeName,
          specifiedType: const FullType(String),
        ));
    }
    if (originalTypeArn != null) {
      result$
        ..add(const _i10.XmlElementName('OriginalTypeArn'))
        ..add(serializers.serialize(
          originalTypeArn,
          specifiedType: const FullType(String),
        ));
    }
    if (publicVersionNumber != null) {
      result$
        ..add(const _i10.XmlElementName('PublicVersionNumber'))
        ..add(serializers.serialize(
          publicVersionNumber,
          specifiedType: const FullType(String),
        ));
    }
    if (latestPublicVersion != null) {
      result$
        ..add(const _i10.XmlElementName('LatestPublicVersion'))
        ..add(serializers.serialize(
          latestPublicVersion,
          specifiedType: const FullType(String),
        ));
    }
    if (isActivated != null) {
      result$
        ..add(const _i10.XmlElementName('IsActivated'))
        ..add(serializers.serialize(
          isActivated,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (autoUpdate != null) {
      result$
        ..add(const _i10.XmlElementName('AutoUpdate'))
        ..add(serializers.serialize(
          autoUpdate,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
