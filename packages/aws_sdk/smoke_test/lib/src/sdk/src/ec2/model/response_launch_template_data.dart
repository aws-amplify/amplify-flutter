// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.response_launch_template_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/credit_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_specification_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_capacity_reservation_specification_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_cpu_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_elastic_inference_accelerator_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_enclave_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_hibernation_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_iam_instance_profile_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_maintenance_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_market_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_network_interface_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_license_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_placement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_private_dns_name_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_templates_monitoring.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/shutdown_behavior.dart';

part 'response_launch_template_data.g.dart';

/// The information for a launch template.
abstract class ResponseLaunchTemplateData
    with _i1.AWSEquatable<ResponseLaunchTemplateData>
    implements
        Built<ResponseLaunchTemplateData, ResponseLaunchTemplateDataBuilder> {
  /// The information for a launch template.
  factory ResponseLaunchTemplateData({
    String? kernelId,
    bool? ebsOptimized,
    LaunchTemplateIamInstanceProfileSpecification? iamInstanceProfile,
    List<LaunchTemplateBlockDeviceMapping>? blockDeviceMappings,
    List<LaunchTemplateInstanceNetworkInterfaceSpecification>?
        networkInterfaces,
    String? imageId,
    InstanceType? instanceType,
    String? keyName,
    LaunchTemplatesMonitoring? monitoring,
    LaunchTemplatePlacement? placement,
    String? ramDiskId,
    bool? disableApiTermination,
    ShutdownBehavior? instanceInitiatedShutdownBehavior,
    String? userData,
    List<LaunchTemplateTagSpecification>? tagSpecifications,
    List<ElasticGpuSpecificationResponse>? elasticGpuSpecifications,
    List<LaunchTemplateElasticInferenceAcceleratorResponse>?
        elasticInferenceAccelerators,
    List<String>? securityGroupIds,
    List<String>? securityGroups,
    LaunchTemplateInstanceMarketOptions? instanceMarketOptions,
    CreditSpecification? creditSpecification,
    LaunchTemplateCpuOptions? cpuOptions,
    LaunchTemplateCapacityReservationSpecificationResponse?
        capacityReservationSpecification,
    List<LaunchTemplateLicenseConfiguration>? licenseSpecifications,
    LaunchTemplateHibernationOptions? hibernationOptions,
    LaunchTemplateInstanceMetadataOptions? metadataOptions,
    LaunchTemplateEnclaveOptions? enclaveOptions,
    InstanceRequirements? instanceRequirements,
    LaunchTemplatePrivateDnsNameOptions? privateDnsNameOptions,
    LaunchTemplateInstanceMaintenanceOptions? maintenanceOptions,
    bool? disableApiStop,
  }) {
    ebsOptimized ??= false;
    disableApiTermination ??= false;
    disableApiStop ??= false;
    return _$ResponseLaunchTemplateData._(
      kernelId: kernelId,
      ebsOptimized: ebsOptimized,
      iamInstanceProfile: iamInstanceProfile,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i2.BuiltList(blockDeviceMappings),
      networkInterfaces:
          networkInterfaces == null ? null : _i2.BuiltList(networkInterfaces),
      imageId: imageId,
      instanceType: instanceType,
      keyName: keyName,
      monitoring: monitoring,
      placement: placement,
      ramDiskId: ramDiskId,
      disableApiTermination: disableApiTermination,
      instanceInitiatedShutdownBehavior: instanceInitiatedShutdownBehavior,
      userData: userData,
      tagSpecifications:
          tagSpecifications == null ? null : _i2.BuiltList(tagSpecifications),
      elasticGpuSpecifications: elasticGpuSpecifications == null
          ? null
          : _i2.BuiltList(elasticGpuSpecifications),
      elasticInferenceAccelerators: elasticInferenceAccelerators == null
          ? null
          : _i2.BuiltList(elasticInferenceAccelerators),
      securityGroupIds:
          securityGroupIds == null ? null : _i2.BuiltList(securityGroupIds),
      securityGroups:
          securityGroups == null ? null : _i2.BuiltList(securityGroups),
      instanceMarketOptions: instanceMarketOptions,
      creditSpecification: creditSpecification,
      cpuOptions: cpuOptions,
      capacityReservationSpecification: capacityReservationSpecification,
      licenseSpecifications: licenseSpecifications == null
          ? null
          : _i2.BuiltList(licenseSpecifications),
      hibernationOptions: hibernationOptions,
      metadataOptions: metadataOptions,
      enclaveOptions: enclaveOptions,
      instanceRequirements: instanceRequirements,
      privateDnsNameOptions: privateDnsNameOptions,
      maintenanceOptions: maintenanceOptions,
      disableApiStop: disableApiStop,
    );
  }

  /// The information for a launch template.
  factory ResponseLaunchTemplateData.build(
          [void Function(ResponseLaunchTemplateDataBuilder) updates]) =
      _$ResponseLaunchTemplateData;

  const ResponseLaunchTemplateData._();

  static const List<_i3.SmithySerializer<ResponseLaunchTemplateData>>
      serializers = [ResponseLaunchTemplateDataEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResponseLaunchTemplateDataBuilder b) {
    b
      ..ebsOptimized = false
      ..disableApiTermination = false
      ..disableApiStop = false;
  }

  /// The ID of the kernel, if applicable.
  String? get kernelId;

  /// Indicates whether the instance is optimized for Amazon EBS I/O.
  bool get ebsOptimized;

  /// The IAM instance profile.
  LaunchTemplateIamInstanceProfileSpecification? get iamInstanceProfile;

  /// The block device mappings.
  _i2.BuiltList<LaunchTemplateBlockDeviceMapping>? get blockDeviceMappings;

  /// The network interfaces.
  _i2.BuiltList<LaunchTemplateInstanceNetworkInterfaceSpecification>?
      get networkInterfaces;

  /// The ID of the AMI or a Systems Manager parameter. The Systems Manager parameter will resolve to the ID of the AMI at instance launch.
  ///
  /// The value depends on what you specified in the request. The possible values are:
  ///
  /// *   If an AMI ID was specified in the request, then this is the AMI ID.
  ///
  /// *   If a Systems Manager parameter was specified in the request, and `ResolveAlias` was configured as `true`, then this is the AMI ID that the parameter is mapped to in the Parameter Store.
  ///
  /// *   If a Systems Manager parameter was specified in the request, and `ResolveAlias` was configured as `false`, then this is the parameter value.
  ///
  ///
  /// For more information, see [Use a Systems Manager parameter instead of an AMI ID](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#use-an-ssm-parameter-instead-of-an-ami-id) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get imageId;

  /// The instance type.
  InstanceType? get instanceType;

  /// The name of the key pair.
  String? get keyName;

  /// The monitoring for the instance.
  LaunchTemplatesMonitoring? get monitoring;

  /// The placement of the instance.
  LaunchTemplatePlacement? get placement;

  /// The ID of the RAM disk, if applicable.
  String? get ramDiskId;

  /// If set to `true`, indicates that the instance cannot be terminated using the Amazon EC2 console, command line tool, or API.
  bool get disableApiTermination;

  /// Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
  ShutdownBehavior? get instanceInitiatedShutdownBehavior;

  /// The user data for the instance.
  String? get userData;

  /// The tags that are applied to the resources that are created during instance launch.
  _i2.BuiltList<LaunchTemplateTagSpecification>? get tagSpecifications;

  /// The elastic GPU specification.
  _i2.BuiltList<ElasticGpuSpecificationResponse>? get elasticGpuSpecifications;

  /// The elastic inference accelerator for the instance.
  _i2.BuiltList<LaunchTemplateElasticInferenceAcceleratorResponse>?
      get elasticInferenceAccelerators;

  /// The security group IDs.
  _i2.BuiltList<String>? get securityGroupIds;

  /// The security group names.
  _i2.BuiltList<String>? get securityGroups;

  /// The market (purchasing) option for the instances.
  LaunchTemplateInstanceMarketOptions? get instanceMarketOptions;

  /// The credit option for CPU usage of the instance.
  CreditSpecification? get creditSpecification;

  /// The CPU options for the instance. For more information, see [Optimizing CPU options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html) in the _Amazon Elastic Compute Cloud User Guide_.
  LaunchTemplateCpuOptions? get cpuOptions;

  /// Information about the Capacity Reservation targeting option.
  LaunchTemplateCapacityReservationSpecificationResponse?
      get capacityReservationSpecification;

  /// The license configurations.
  _i2.BuiltList<LaunchTemplateLicenseConfiguration>? get licenseSpecifications;

  /// Indicates whether an instance is configured for hibernation. For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  LaunchTemplateHibernationOptions? get hibernationOptions;

  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
  LaunchTemplateInstanceMetadataOptions? get metadataOptions;

  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.
  LaunchTemplateEnclaveOptions? get enclaveOptions;

  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with these attributes.
  ///
  /// If you specify `InstanceRequirements`, you can't specify `InstanceTypes`.
  InstanceRequirements? get instanceRequirements;

  /// The options for the instance hostname.
  LaunchTemplatePrivateDnsNameOptions? get privateDnsNameOptions;

  /// The maintenance options for your instance.
  LaunchTemplateInstanceMaintenanceOptions? get maintenanceOptions;

  /// Indicates whether the instance is enabled for stop protection. For more information, see [Stop protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection) in the _Amazon Elastic Compute Cloud User Guide_.
  bool get disableApiStop;
  @override
  List<Object?> get props => [
        kernelId,
        ebsOptimized,
        iamInstanceProfile,
        blockDeviceMappings,
        networkInterfaces,
        imageId,
        instanceType,
        keyName,
        monitoring,
        placement,
        ramDiskId,
        disableApiTermination,
        instanceInitiatedShutdownBehavior,
        userData,
        tagSpecifications,
        elasticGpuSpecifications,
        elasticInferenceAccelerators,
        securityGroupIds,
        securityGroups,
        instanceMarketOptions,
        creditSpecification,
        cpuOptions,
        capacityReservationSpecification,
        licenseSpecifications,
        hibernationOptions,
        metadataOptions,
        enclaveOptions,
        instanceRequirements,
        privateDnsNameOptions,
        maintenanceOptions,
        disableApiStop,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResponseLaunchTemplateData')
      ..add(
        'kernelId',
        kernelId,
      )
      ..add(
        'ebsOptimized',
        ebsOptimized,
      )
      ..add(
        'iamInstanceProfile',
        iamInstanceProfile,
      )
      ..add(
        'blockDeviceMappings',
        blockDeviceMappings,
      )
      ..add(
        'networkInterfaces',
        networkInterfaces,
      )
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'keyName',
        keyName,
      )
      ..add(
        'monitoring',
        monitoring,
      )
      ..add(
        'placement',
        placement,
      )
      ..add(
        'ramDiskId',
        ramDiskId,
      )
      ..add(
        'disableApiTermination',
        disableApiTermination,
      )
      ..add(
        'instanceInitiatedShutdownBehavior',
        instanceInitiatedShutdownBehavior,
      )
      ..add(
        'userData',
        '***SENSITIVE***',
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'elasticGpuSpecifications',
        elasticGpuSpecifications,
      )
      ..add(
        'elasticInferenceAccelerators',
        elasticInferenceAccelerators,
      )
      ..add(
        'securityGroupIds',
        securityGroupIds,
      )
      ..add(
        'securityGroups',
        securityGroups,
      )
      ..add(
        'instanceMarketOptions',
        instanceMarketOptions,
      )
      ..add(
        'creditSpecification',
        creditSpecification,
      )
      ..add(
        'cpuOptions',
        cpuOptions,
      )
      ..add(
        'capacityReservationSpecification',
        capacityReservationSpecification,
      )
      ..add(
        'licenseSpecifications',
        licenseSpecifications,
      )
      ..add(
        'hibernationOptions',
        hibernationOptions,
      )
      ..add(
        'metadataOptions',
        metadataOptions,
      )
      ..add(
        'enclaveOptions',
        enclaveOptions,
      )
      ..add(
        'instanceRequirements',
        instanceRequirements,
      )
      ..add(
        'privateDnsNameOptions',
        privateDnsNameOptions,
      )
      ..add(
        'maintenanceOptions',
        maintenanceOptions,
      )
      ..add(
        'disableApiStop',
        disableApiStop,
      );
    return helper.toString();
  }
}

class ResponseLaunchTemplateDataEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ResponseLaunchTemplateData> {
  const ResponseLaunchTemplateDataEc2QuerySerializer()
      : super('ResponseLaunchTemplateData');

  @override
  Iterable<Type> get types => const [
        ResponseLaunchTemplateData,
        _$ResponseLaunchTemplateData,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResponseLaunchTemplateData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResponseLaunchTemplateDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'kernelId':
          result.kernelId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ebsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'iamInstanceProfile':
          result.iamInstanceProfile.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateIamInstanceProfileSpecification),
          ) as LaunchTemplateIamInstanceProfileSpecification));
        case 'blockDeviceMappingSet':
          result.blockDeviceMappings.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchTemplateBlockDeviceMapping)],
            ),
          ) as _i2.BuiltList<LaunchTemplateBlockDeviceMapping>));
        case 'networkInterfaceSet':
          result.networkInterfaces.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchTemplateInstanceNetworkInterfaceSpecification)],
            ),
          ) as _i2
              .BuiltList<LaunchTemplateInstanceNetworkInterfaceSpecification>));
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'keyName':
          result.keyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'monitoring':
          result.monitoring.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplatesMonitoring),
          ) as LaunchTemplatesMonitoring));
        case 'placement':
          result.placement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplatePlacement),
          ) as LaunchTemplatePlacement));
        case 'ramDiskId':
          result.ramDiskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'disableApiTermination':
          result.disableApiTermination = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'instanceInitiatedShutdownBehavior':
          result.instanceInitiatedShutdownBehavior = (serializers.deserialize(
            value,
            specifiedType: const FullType(ShutdownBehavior),
          ) as ShutdownBehavior);
        case 'userData':
          result.userData = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSpecificationSet':
          result.tagSpecifications.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchTemplateTagSpecification)],
            ),
          ) as _i2.BuiltList<LaunchTemplateTagSpecification>));
        case 'elasticGpuSpecificationSet':
          result.elasticGpuSpecifications
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ElasticGpuSpecificationResponse)],
            ),
          ) as _i2.BuiltList<ElasticGpuSpecificationResponse>));
        case 'elasticInferenceAcceleratorSet':
          result.elasticInferenceAccelerators.replace(
              (const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchTemplateElasticInferenceAcceleratorResponse)],
            ),
          ) as _i2.BuiltList<
                  LaunchTemplateElasticInferenceAcceleratorResponse>));
        case 'securityGroupIdSet':
          result.securityGroupIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'securityGroupSet':
          result.securityGroups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'instanceMarketOptions':
          result.instanceMarketOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateInstanceMarketOptions),
          ) as LaunchTemplateInstanceMarketOptions));
        case 'creditSpecification':
          result.creditSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CreditSpecification),
          ) as CreditSpecification));
        case 'cpuOptions':
          result.cpuOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateCpuOptions),
          ) as LaunchTemplateCpuOptions));
        case 'capacityReservationSpecification':
          result.capacityReservationSpecification
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
                LaunchTemplateCapacityReservationSpecificationResponse),
          ) as LaunchTemplateCapacityReservationSpecificationResponse));
        case 'licenseSet':
          result.licenseSpecifications
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchTemplateLicenseConfiguration)],
            ),
          ) as _i2.BuiltList<LaunchTemplateLicenseConfiguration>));
        case 'hibernationOptions':
          result.hibernationOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateHibernationOptions),
          ) as LaunchTemplateHibernationOptions));
        case 'metadataOptions':
          result.metadataOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateInstanceMetadataOptions),
          ) as LaunchTemplateInstanceMetadataOptions));
        case 'enclaveOptions':
          result.enclaveOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateEnclaveOptions),
          ) as LaunchTemplateEnclaveOptions));
        case 'instanceRequirements':
          result.instanceRequirements.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceRequirements),
          ) as InstanceRequirements));
        case 'privateDnsNameOptions':
          result.privateDnsNameOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplatePrivateDnsNameOptions),
          ) as LaunchTemplatePrivateDnsNameOptions));
        case 'maintenanceOptions':
          result.maintenanceOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateInstanceMaintenanceOptions),
          ) as LaunchTemplateInstanceMaintenanceOptions));
        case 'disableApiStop':
          result.disableApiStop = (serializers.deserialize(
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
    ResponseLaunchTemplateData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ResponseLaunchTemplateDataResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ResponseLaunchTemplateData(
      :kernelId,
      :ebsOptimized,
      :iamInstanceProfile,
      :blockDeviceMappings,
      :networkInterfaces,
      :imageId,
      :instanceType,
      :keyName,
      :monitoring,
      :placement,
      :ramDiskId,
      :disableApiTermination,
      :instanceInitiatedShutdownBehavior,
      :userData,
      :tagSpecifications,
      :elasticGpuSpecifications,
      :elasticInferenceAccelerators,
      :securityGroupIds,
      :securityGroups,
      :instanceMarketOptions,
      :creditSpecification,
      :cpuOptions,
      :capacityReservationSpecification,
      :licenseSpecifications,
      :hibernationOptions,
      :metadataOptions,
      :enclaveOptions,
      :instanceRequirements,
      :privateDnsNameOptions,
      :maintenanceOptions,
      :disableApiStop
    ) = object;
    if (kernelId != null) {
      result$
        ..add(const _i3.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (iamInstanceProfile != null) {
      result$
        ..add(const _i3.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          iamInstanceProfile,
          specifiedType:
              const FullType(LaunchTemplateIamInstanceProfileSpecification),
        ));
    }
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i3.XmlElementName('BlockDeviceMappingSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LaunchTemplateBlockDeviceMapping)],
          ),
        ));
    }
    if (networkInterfaces != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaces,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LaunchTemplateInstanceNetworkInterfaceSpecification)],
          ),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i3.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType.nullable(InstanceType),
        ));
    }
    if (keyName != null) {
      result$
        ..add(const _i3.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          keyName,
          specifiedType: const FullType(String),
        ));
    }
    if (monitoring != null) {
      result$
        ..add(const _i3.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          monitoring,
          specifiedType: const FullType(LaunchTemplatesMonitoring),
        ));
    }
    if (placement != null) {
      result$
        ..add(const _i3.XmlElementName('Placement'))
        ..add(serializers.serialize(
          placement,
          specifiedType: const FullType(LaunchTemplatePlacement),
        ));
    }
    if (ramDiskId != null) {
      result$
        ..add(const _i3.XmlElementName('RamDiskId'))
        ..add(serializers.serialize(
          ramDiskId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('DisableApiTermination'))
      ..add(serializers.serialize(
        disableApiTermination,
        specifiedType: const FullType(bool),
      ));
    if (instanceInitiatedShutdownBehavior != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceInitiatedShutdownBehavior'))
        ..add(serializers.serialize(
          instanceInitiatedShutdownBehavior,
          specifiedType: const FullType.nullable(ShutdownBehavior),
        ));
    }
    if (userData != null) {
      result$
        ..add(const _i3.XmlElementName('UserData'))
        ..add(serializers.serialize(
          userData,
          specifiedType: const FullType(String),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName('TagSpecificationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LaunchTemplateTagSpecification)],
          ),
        ));
    }
    if (elasticGpuSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName('ElasticGpuSpecificationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          elasticGpuSpecifications,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ElasticGpuSpecificationResponse)],
          ),
        ));
    }
    if (elasticInferenceAccelerators != null) {
      result$
        ..add(const _i3.XmlElementName('ElasticInferenceAcceleratorSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          elasticInferenceAccelerators,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LaunchTemplateElasticInferenceAcceleratorResponse)],
          ),
        ));
    }
    if (securityGroupIds != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupIdSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (securityGroups != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroups,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (instanceMarketOptions != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceMarketOptions'))
        ..add(serializers.serialize(
          instanceMarketOptions,
          specifiedType: const FullType(LaunchTemplateInstanceMarketOptions),
        ));
    }
    if (creditSpecification != null) {
      result$
        ..add(const _i3.XmlElementName('CreditSpecification'))
        ..add(serializers.serialize(
          creditSpecification,
          specifiedType: const FullType(CreditSpecification),
        ));
    }
    if (cpuOptions != null) {
      result$
        ..add(const _i3.XmlElementName('CpuOptions'))
        ..add(serializers.serialize(
          cpuOptions,
          specifiedType: const FullType(LaunchTemplateCpuOptions),
        ));
    }
    if (capacityReservationSpecification != null) {
      result$
        ..add(const _i3.XmlElementName('CapacityReservationSpecification'))
        ..add(serializers.serialize(
          capacityReservationSpecification,
          specifiedType: const FullType(
              LaunchTemplateCapacityReservationSpecificationResponse),
        ));
    }
    if (licenseSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName('LicenseSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          licenseSpecifications,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LaunchTemplateLicenseConfiguration)],
          ),
        ));
    }
    if (hibernationOptions != null) {
      result$
        ..add(const _i3.XmlElementName('HibernationOptions'))
        ..add(serializers.serialize(
          hibernationOptions,
          specifiedType: const FullType(LaunchTemplateHibernationOptions),
        ));
    }
    if (metadataOptions != null) {
      result$
        ..add(const _i3.XmlElementName('MetadataOptions'))
        ..add(serializers.serialize(
          metadataOptions,
          specifiedType: const FullType(LaunchTemplateInstanceMetadataOptions),
        ));
    }
    if (enclaveOptions != null) {
      result$
        ..add(const _i3.XmlElementName('EnclaveOptions'))
        ..add(serializers.serialize(
          enclaveOptions,
          specifiedType: const FullType(LaunchTemplateEnclaveOptions),
        ));
    }
    if (instanceRequirements != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceRequirements'))
        ..add(serializers.serialize(
          instanceRequirements,
          specifiedType: const FullType(InstanceRequirements),
        ));
    }
    if (privateDnsNameOptions != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateDnsNameOptions'))
        ..add(serializers.serialize(
          privateDnsNameOptions,
          specifiedType: const FullType(LaunchTemplatePrivateDnsNameOptions),
        ));
    }
    if (maintenanceOptions != null) {
      result$
        ..add(const _i3.XmlElementName('MaintenanceOptions'))
        ..add(serializers.serialize(
          maintenanceOptions,
          specifiedType:
              const FullType(LaunchTemplateInstanceMaintenanceOptions),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('DisableApiStop'))
      ..add(serializers.serialize(
        disableApiStop,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
