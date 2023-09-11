// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_data.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/image_disk_container.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_license_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'import_image_request.g.dart';

abstract class ImportImageRequest
    with _i1.HttpInput<ImportImageRequest>, _i2.AWSEquatable<ImportImageRequest>
    implements Built<ImportImageRequest, ImportImageRequestBuilder> {
  factory ImportImageRequest({
    String? architecture,
    ClientData? clientData,
    String? clientToken,
    String? description,
    List<ImageDiskContainer>? diskContainers,
    bool? dryRun,
    bool? encrypted,
    String? hypervisor,
    String? kmsKeyId,
    String? licenseType,
    String? platform,
    String? roleName,
    List<ImportImageLicenseConfigurationRequest>? licenseSpecifications,
    List<TagSpecification>? tagSpecifications,
    String? usageOperation,
    BootModeValues? bootMode,
  }) {
    dryRun ??= false;
    encrypted ??= false;
    return _$ImportImageRequest._(
      architecture: architecture,
      clientData: clientData,
      clientToken: clientToken,
      description: description,
      diskContainers:
          diskContainers == null ? null : _i3.BuiltList(diskContainers),
      dryRun: dryRun,
      encrypted: encrypted,
      hypervisor: hypervisor,
      kmsKeyId: kmsKeyId,
      licenseType: licenseType,
      platform: platform,
      roleName: roleName,
      licenseSpecifications: licenseSpecifications == null
          ? null
          : _i3.BuiltList(licenseSpecifications),
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      usageOperation: usageOperation,
      bootMode: bootMode,
    );
  }

  factory ImportImageRequest.build(
          [void Function(ImportImageRequestBuilder) updates]) =
      _$ImportImageRequest;

  const ImportImageRequest._();

  factory ImportImageRequest.fromRequest(
    ImportImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ImportImageRequest>> serializers = [
    ImportImageRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportImageRequestBuilder b) {
    b
      ..dryRun = false
      ..encrypted = false;
  }

  /// The architecture of the virtual machine.
  ///
  /// Valid values: `i386` | `x86_64`
  String? get architecture;

  /// The client-specific data.
  ClientData? get clientData;

  /// The token to enable idempotency for VM import requests.
  String? get clientToken;

  /// A description string for the import image task.
  String? get description;

  /// Information about the disk containers.
  _i3.BuiltList<ImageDiskContainer>? get diskContainers;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Specifies whether the destination AMI of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using `KmsKeyId`. For more information, see [Amazon EBS Encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  bool get encrypted;

  /// The target hypervisor platform.
  ///
  /// Valid values: `xen`
  String? get hypervisor;

  /// An identifier for the symmetric KMS key to use when creating the encrypted AMI. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a `KmsKeyId` is specified, the `Encrypted` flag must also be set.
  ///
  /// The KMS key identifier may be provided in any of the following formats:
  ///
  /// *   Key ID
  ///
  /// *   Key alias
  ///
  /// *   ARN using key ID. The ID ARN contains the `arn:aws:kms` namespace, followed by the Region of the key, the Amazon Web Services account ID of the key owner, the `key` namespace, and then the key ID. For example, arn:aws:kms:_us-east-1_:_012345678910_:key/_abcd1234-a123-456a-a12b-a123b4cd56ef_.
  ///
  /// *   ARN using key alias. The alias ARN contains the `arn:aws:kms` namespace, followed by the Region of the key, the Amazon Web Services account ID of the key owner, the `alias` namespace, and then the key alias. For example, arn:aws:kms:_us-east-1_:_012345678910_:alias/_ExampleAlias_.
  ///
  ///
  /// Amazon Web Services parses `KmsKeyId` asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. This action will eventually report failure.
  ///
  /// The specified KMS key must exist in the Region that the AMI is being copied to.
  ///
  /// Amazon EBS does not support asymmetric KMS keys.
  String? get kmsKeyId;

  /// The license type to be used for the Amazon Machine Image (AMI) after importing.
  ///
  /// Specify `AWS` to replace the source-system license with an Amazon Web Services license or `BYOL` to retain the source-system license. Leaving this parameter undefined is the same as choosing `AWS` when importing a Windows Server operating system, and the same as choosing `BYOL` when importing a Windows client operating system (such as Windows 10) or a Linux operating system.
  ///
  /// To use `BYOL`, you must have existing licenses with rights to use these licenses in a third party cloud, such as Amazon Web Services. For more information, see [Prerequisites](https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html#prerequisites-image) in the VM Import/Export User Guide.
  String? get licenseType;

  /// The operating system of the virtual machine. If you import a VM that is compatible with Unified Extensible Firmware Interface (UEFI) using an EBS snapshot, you must specify a value for the platform.
  ///
  /// Valid values: `Windows` | `Linux`
  String? get platform;

  /// The name of the role to use when not using the default role, 'vmimport'.
  String? get roleName;

  /// The ARNs of the license configurations.
  _i3.BuiltList<ImportImageLicenseConfigurationRequest>?
      get licenseSpecifications;

  /// The tags to apply to the import image task during creation.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// The usage operation value. For more information, see [Licensing options](https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#prerequisites) in the _VM Import/Export User Guide_.
  String? get usageOperation;

  /// The boot mode of the virtual machine.
  BootModeValues? get bootMode;
  @override
  ImportImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        architecture,
        clientData,
        clientToken,
        description,
        diskContainers,
        dryRun,
        encrypted,
        hypervisor,
        kmsKeyId,
        licenseType,
        platform,
        roleName,
        licenseSpecifications,
        tagSpecifications,
        usageOperation,
        bootMode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportImageRequest')
      ..add(
        'architecture',
        architecture,
      )
      ..add(
        'clientData',
        clientData,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'diskContainers',
        diskContainers,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'encrypted',
        encrypted,
      )
      ..add(
        'hypervisor',
        hypervisor,
      )
      ..add(
        'kmsKeyId',
        kmsKeyId,
      )
      ..add(
        'licenseType',
        licenseType,
      )
      ..add(
        'platform',
        platform,
      )
      ..add(
        'roleName',
        roleName,
      )
      ..add(
        'licenseSpecifications',
        licenseSpecifications,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'usageOperation',
        usageOperation,
      )
      ..add(
        'bootMode',
        bootMode,
      );
    return helper.toString();
  }
}

class ImportImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ImportImageRequest> {
  const ImportImageRequestEc2QuerySerializer() : super('ImportImageRequest');

  @override
  Iterable<Type> get types => const [
        ImportImageRequest,
        _$ImportImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportImageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Architecture':
          result.architecture = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientData':
          result.clientData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ClientData),
          ) as ClientData));
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DiskContainer':
          result.diskContainers.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(ImageDiskContainer)],
            ),
          ) as _i3.BuiltList<ImageDiskContainer>));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Encrypted':
          result.encrypted = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Hypervisor':
          result.hypervisor = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KmsKeyId':
          result.kmsKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LicenseType':
          result.licenseType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Platform':
          result.platform = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LicenseSpecifications':
          result.licenseSpecifications
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(ImportImageLicenseConfigurationRequest)],
            ),
          ) as _i3.BuiltList<ImportImageLicenseConfigurationRequest>));
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'UsageOperation':
          result.usageOperation = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BootMode':
          result.bootMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(BootModeValues),
          ) as BootModeValues);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportImageRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ImportImageRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportImageRequest(
      :architecture,
      :clientData,
      :clientToken,
      :description,
      :diskContainers,
      :dryRun,
      :encrypted,
      :hypervisor,
      :kmsKeyId,
      :licenseType,
      :platform,
      :roleName,
      :licenseSpecifications,
      :tagSpecifications,
      :usageOperation,
      :bootMode
    ) = object;
    if (architecture != null) {
      result$
        ..add(const _i1.XmlElementName('Architecture'))
        ..add(serializers.serialize(
          architecture,
          specifiedType: const FullType(String),
        ));
    }
    if (clientData != null) {
      result$
        ..add(const _i1.XmlElementName('ClientData'))
        ..add(serializers.serialize(
          clientData,
          specifiedType: const FullType(ClientData),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
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
    if (diskContainers != null) {
      result$
        ..add(const _i1.XmlElementName('DiskContainer'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          diskContainers,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(ImageDiskContainer)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        encrypted,
        specifiedType: const FullType(bool),
      ));
    if (hypervisor != null) {
      result$
        ..add(const _i1.XmlElementName('Hypervisor'))
        ..add(serializers.serialize(
          hypervisor,
          specifiedType: const FullType(String),
        ));
    }
    if (kmsKeyId != null) {
      result$
        ..add(const _i1.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          kmsKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (licenseType != null) {
      result$
        ..add(const _i1.XmlElementName('LicenseType'))
        ..add(serializers.serialize(
          licenseType,
          specifiedType: const FullType(String),
        ));
    }
    if (platform != null) {
      result$
        ..add(const _i1.XmlElementName('Platform'))
        ..add(serializers.serialize(
          platform,
          specifiedType: const FullType(String),
        ));
    }
    if (roleName != null) {
      result$
        ..add(const _i1.XmlElementName('RoleName'))
        ..add(serializers.serialize(
          roleName,
          specifiedType: const FullType(String),
        ));
    }
    if (licenseSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('LicenseSpecifications'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          licenseSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(ImportImageLicenseConfigurationRequest)],
          ),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    if (usageOperation != null) {
      result$
        ..add(const _i1.XmlElementName('UsageOperation'))
        ..add(serializers.serialize(
          usageOperation,
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
    return result$;
  }
}
