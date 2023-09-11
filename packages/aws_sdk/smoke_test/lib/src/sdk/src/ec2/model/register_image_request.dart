// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.register_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/imds_support_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tpm_support_values.dart';

part 'register_image_request.g.dart';

/// Contains the parameters for RegisterImage.
abstract class RegisterImageRequest
    with
        _i1.HttpInput<RegisterImageRequest>,
        _i2.AWSEquatable<RegisterImageRequest>
    implements Built<RegisterImageRequest, RegisterImageRequestBuilder> {
  /// Contains the parameters for RegisterImage.
  factory RegisterImageRequest({
    String? imageLocation,
    ArchitectureValues? architecture,
    List<BlockDeviceMapping>? blockDeviceMappings,
    String? description,
    bool? dryRun,
    bool? enaSupport,
    String? kernelId,
    String? name,
    List<String>? billingProducts,
    String? ramdiskId,
    String? rootDeviceName,
    String? sriovNetSupport,
    String? virtualizationType,
    BootModeValues? bootMode,
    TpmSupportValues? tpmSupport,
    String? uefiData,
    ImdsSupportValues? imdsSupport,
  }) {
    dryRun ??= false;
    enaSupport ??= false;
    return _$RegisterImageRequest._(
      imageLocation: imageLocation,
      architecture: architecture,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i3.BuiltList(blockDeviceMappings),
      description: description,
      dryRun: dryRun,
      enaSupport: enaSupport,
      kernelId: kernelId,
      name: name,
      billingProducts:
          billingProducts == null ? null : _i3.BuiltList(billingProducts),
      ramdiskId: ramdiskId,
      rootDeviceName: rootDeviceName,
      sriovNetSupport: sriovNetSupport,
      virtualizationType: virtualizationType,
      bootMode: bootMode,
      tpmSupport: tpmSupport,
      uefiData: uefiData,
      imdsSupport: imdsSupport,
    );
  }

  /// Contains the parameters for RegisterImage.
  factory RegisterImageRequest.build(
          [void Function(RegisterImageRequestBuilder) updates]) =
      _$RegisterImageRequest;

  const RegisterImageRequest._();

  factory RegisterImageRequest.fromRequest(
    RegisterImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RegisterImageRequest>> serializers = [
    RegisterImageRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RegisterImageRequestBuilder b) {
    b
      ..dryRun = false
      ..enaSupport = false;
  }

  /// The full path to your AMI manifest in Amazon S3 storage. The specified bucket must have the `aws-exec-read` canned access control list (ACL) to ensure that it can be accessed by Amazon EC2. For more information, see [Canned ACLs](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) in the _Amazon S3 Service Developer Guide_.
  String? get imageLocation;

  /// The architecture of the AMI.
  ///
  /// Default: For Amazon EBS-backed AMIs, `i386`. For instance store-backed AMIs, the architecture specified in the manifest file.
  ArchitectureValues? get architecture;

  /// The block device mapping entries.
  ///
  /// If you specify an Amazon EBS volume using the ID of an Amazon EBS snapshot, you can't specify the encryption state of the volume.
  ///
  /// If you create an AMI on an Outpost, then all backing snapshots must be on the same Outpost or in the Region of that Outpost. AMIs on an Outpost that include local snapshots can be used to launch instances on the same Outpost only. For more information, [Amazon EBS local snapshots on Outposts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami) in the _Amazon EC2 User Guide_.
  _i3.BuiltList<BlockDeviceMapping>? get blockDeviceMappings;

  /// A description for your AMI.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Set to `true` to enable enhanced networking with ENA for the AMI and any instances that you launch from the AMI.
  ///
  /// This option is supported only for HVM AMIs. Specifying this option with a PV AMI can make instances launched from the AMI unreachable.
  bool get enaSupport;

  /// The ID of the kernel.
  String? get kernelId;

  /// A name for your AMI.
  ///
  /// Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets (\[\]), spaces ( ), periods (.), slashes (/), dashes (-), single quotes ('), at-signs (@), or underscores(_)
  String? get name;

  /// The billing product codes. Your account must be authorized to specify billing product codes.
  ///
  /// If your account is not authorized to specify billing product codes, you can publish AMIs that include billable software and list them on the Amazon Web Services Marketplace. You must first register as a seller on the Amazon Web Services Marketplace. For more information, see [Getting started as a seller](https://docs.aws.amazon.com/marketplace/latest/userguide/user-guide-for-sellers.html) and [AMI-based products](https://docs.aws.amazon.com/marketplace/latest/userguide/ami-products.html) in the _Amazon Web Services Marketplace Seller Guide_.
  _i3.BuiltList<String>? get billingProducts;

  /// The ID of the RAM disk.
  String? get ramdiskId;

  /// The device name of the root device volume (for example, `/dev/sda1`).
  String? get rootDeviceName;

  /// Set to `simple` to enable enhanced networking with the Intel 82599 Virtual Function interface for the AMI and any instances that you launch from the AMI.
  ///
  /// There is no way to disable `sriovNetSupport` at this time.
  ///
  /// This option is supported only for HVM AMIs. Specifying this option with a PV AMI can make instances launched from the AMI unreachable.
  String? get sriovNetSupport;

  /// The type of virtualization (`hvm` | `paravirtual`).
  ///
  /// Default: `paravirtual`
  String? get virtualizationType;

  /// The boot mode of the AMI. A value of `uefi-preferred` indicates that the AMI supports both UEFI and Legacy BIOS.
  ///
  /// The operating system contained in the AMI must be configured to support the specified boot mode.
  ///
  /// For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the _Amazon EC2 User Guide_.
  BootModeValues? get bootMode;

  /// Set to `v2.0` to enable Trusted Platform Module (TPM) support. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the _Amazon EC2 User Guide_.
  TpmSupportValues? get tpmSupport;

  /// Base64 representation of the non-volatile UEFI variable store. To retrieve the UEFI data, use the [GetInstanceUefiData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceUefiData) command. You can inspect and modify the UEFI data by using the [python-uefivars tool](https://github.com/awslabs/python-uefivars) on GitHub. For more information, see [UEFI Secure Boot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html) in the _Amazon EC2 User Guide_.
  String? get uefiData;

  /// Set to `v2.0` to indicate that IMDSv2 is specified in the AMI. Instances launched from this AMI will have `HttpTokens` automatically set to `required` so that, by default, the instance requires that IMDSv2 is used when requesting instance metadata. In addition, `HttpPutResponseHopLimit` is set to `2`. For more information, see [Configure the AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration) in the _Amazon EC2 User Guide_.
  ///
  /// If you set the value to `v2.0`, make sure that your AMI software can support IMDSv2.
  ImdsSupportValues? get imdsSupport;
  @override
  RegisterImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        imageLocation,
        architecture,
        blockDeviceMappings,
        description,
        dryRun,
        enaSupport,
        kernelId,
        name,
        billingProducts,
        ramdiskId,
        rootDeviceName,
        sriovNetSupport,
        virtualizationType,
        bootMode,
        tpmSupport,
        uefiData,
        imdsSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RegisterImageRequest')
      ..add(
        'imageLocation',
        imageLocation,
      )
      ..add(
        'architecture',
        architecture,
      )
      ..add(
        'blockDeviceMappings',
        blockDeviceMappings,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'enaSupport',
        enaSupport,
      )
      ..add(
        'kernelId',
        kernelId,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'billingProducts',
        billingProducts,
      )
      ..add(
        'ramdiskId',
        ramdiskId,
      )
      ..add(
        'rootDeviceName',
        rootDeviceName,
      )
      ..add(
        'sriovNetSupport',
        sriovNetSupport,
      )
      ..add(
        'virtualizationType',
        virtualizationType,
      )
      ..add(
        'bootMode',
        bootMode,
      )
      ..add(
        'tpmSupport',
        tpmSupport,
      )
      ..add(
        'uefiData',
        uefiData,
      )
      ..add(
        'imdsSupport',
        imdsSupport,
      );
    return helper.toString();
  }
}

class RegisterImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RegisterImageRequest> {
  const RegisterImageRequestEc2QuerySerializer()
      : super('RegisterImageRequest');

  @override
  Iterable<Type> get types => const [
        RegisterImageRequest,
        _$RegisterImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RegisterImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterImageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ImageLocation':
          result.imageLocation = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'architecture':
          result.architecture = (serializers.deserialize(
            value,
            specifiedType: const FullType(ArchitectureValues),
          ) as ArchitectureValues);
        case 'BlockDeviceMapping':
          result.blockDeviceMappings.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'BlockDeviceMapping',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(BlockDeviceMapping)],
            ),
          ) as _i3.BuiltList<BlockDeviceMapping>));
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'enaSupport':
          result.enaSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'kernelId':
          result.kernelId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BillingProduct':
          result.billingProducts.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'ramdiskId':
          result.ramdiskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'rootDeviceName':
          result.rootDeviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sriovNetSupport':
          result.sriovNetSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'virtualizationType':
          result.virtualizationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BootMode':
          result.bootMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(BootModeValues),
          ) as BootModeValues);
        case 'TpmSupport':
          result.tpmSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(TpmSupportValues),
          ) as TpmSupportValues);
        case 'UefiData':
          result.uefiData = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ImdsSupport':
          result.imdsSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(ImdsSupportValues),
          ) as ImdsSupportValues);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RegisterImageRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RegisterImageRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RegisterImageRequest(
      :imageLocation,
      :architecture,
      :blockDeviceMappings,
      :description,
      :dryRun,
      :enaSupport,
      :kernelId,
      :name,
      :billingProducts,
      :ramdiskId,
      :rootDeviceName,
      :sriovNetSupport,
      :virtualizationType,
      :bootMode,
      :tpmSupport,
      :uefiData,
      :imdsSupport
    ) = object;
    if (imageLocation != null) {
      result$
        ..add(const _i1.XmlElementName('ImageLocation'))
        ..add(serializers.serialize(
          imageLocation,
          specifiedType: const FullType(String),
        ));
    }
    if (architecture != null) {
      result$
        ..add(const _i1.XmlElementName('Architecture'))
        ..add(serializers.serialize(
          architecture,
          specifiedType: const FullType(ArchitectureValues),
        ));
    }
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i1.XmlElementName('BlockDeviceMapping'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'BlockDeviceMapping',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(BlockDeviceMapping)],
          ),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('EnaSupport'))
      ..add(serializers.serialize(
        enaSupport,
        specifiedType: const FullType(bool),
      ));
    if (kernelId != null) {
      result$
        ..add(const _i1.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(String),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i1.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (billingProducts != null) {
      result$
        ..add(const _i1.XmlElementName('BillingProduct'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          billingProducts,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (ramdiskId != null) {
      result$
        ..add(const _i1.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          ramdiskId,
          specifiedType: const FullType(String),
        ));
    }
    if (rootDeviceName != null) {
      result$
        ..add(const _i1.XmlElementName('RootDeviceName'))
        ..add(serializers.serialize(
          rootDeviceName,
          specifiedType: const FullType(String),
        ));
    }
    if (sriovNetSupport != null) {
      result$
        ..add(const _i1.XmlElementName('SriovNetSupport'))
        ..add(serializers.serialize(
          sriovNetSupport,
          specifiedType: const FullType(String),
        ));
    }
    if (virtualizationType != null) {
      result$
        ..add(const _i1.XmlElementName('VirtualizationType'))
        ..add(serializers.serialize(
          virtualizationType,
          specifiedType: const FullType(String),
        ));
    }
    if (bootMode != null) {
      result$
        ..add(const _i1.XmlElementName('BootMode'))
        ..add(serializers.serialize(
          bootMode,
          specifiedType: const FullType(BootModeValues),
        ));
    }
    if (tpmSupport != null) {
      result$
        ..add(const _i1.XmlElementName('TpmSupport'))
        ..add(serializers.serialize(
          tpmSupport,
          specifiedType: const FullType(TpmSupportValues),
        ));
    }
    if (uefiData != null) {
      result$
        ..add(const _i1.XmlElementName('UefiData'))
        ..add(serializers.serialize(
          uefiData,
          specifiedType: const FullType(String),
        ));
    }
    if (imdsSupport != null) {
      result$
        ..add(const _i1.XmlElementName('ImdsSupport'))
        ..add(serializers.serialize(
          imdsSupport,
          specifiedType: const FullType(ImdsSupportValues),
        ));
    }
    return result$;
  }
}
