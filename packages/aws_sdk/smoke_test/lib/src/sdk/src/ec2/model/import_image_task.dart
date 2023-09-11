// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_image_task; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_license_configuration_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'import_image_task.g.dart';

/// Describes an import image task.
abstract class ImportImageTask
    with _i1.AWSEquatable<ImportImageTask>
    implements Built<ImportImageTask, ImportImageTaskBuilder> {
  /// Describes an import image task.
  factory ImportImageTask({
    String? architecture,
    String? description,
    bool? encrypted,
    String? hypervisor,
    String? imageId,
    String? importTaskId,
    String? kmsKeyId,
    String? licenseType,
    String? platform,
    String? progress,
    List<SnapshotDetail>? snapshotDetails,
    String? status,
    String? statusMessage,
    List<Tag>? tags,
    List<ImportImageLicenseConfigurationResponse>? licenseSpecifications,
    String? usageOperation,
    BootModeValues? bootMode,
  }) {
    encrypted ??= false;
    return _$ImportImageTask._(
      architecture: architecture,
      description: description,
      encrypted: encrypted,
      hypervisor: hypervisor,
      imageId: imageId,
      importTaskId: importTaskId,
      kmsKeyId: kmsKeyId,
      licenseType: licenseType,
      platform: platform,
      progress: progress,
      snapshotDetails:
          snapshotDetails == null ? null : _i2.BuiltList(snapshotDetails),
      status: status,
      statusMessage: statusMessage,
      tags: tags == null ? null : _i2.BuiltList(tags),
      licenseSpecifications: licenseSpecifications == null
          ? null
          : _i2.BuiltList(licenseSpecifications),
      usageOperation: usageOperation,
      bootMode: bootMode,
    );
  }

  /// Describes an import image task.
  factory ImportImageTask.build(
      [void Function(ImportImageTaskBuilder) updates]) = _$ImportImageTask;

  const ImportImageTask._();

  static const List<_i3.SmithySerializer<ImportImageTask>> serializers = [
    ImportImageTaskEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportImageTaskBuilder b) {
    b.encrypted = false;
  }

  /// The architecture of the virtual machine.
  ///
  /// Valid values: `i386` | `x86_64` | `arm64`
  String? get architecture;

  /// A description of the import task.
  String? get description;

  /// Indicates whether the image is encrypted.
  bool get encrypted;

  /// The target hypervisor for the import task.
  ///
  /// Valid values: `xen`
  String? get hypervisor;

  /// The ID of the Amazon Machine Image (AMI) of the imported virtual machine.
  String? get imageId;

  /// The ID of the import image task.
  String? get importTaskId;

  /// The identifier for the KMS key that was used to create the encrypted image.
  String? get kmsKeyId;

  /// The license type of the virtual machine.
  String? get licenseType;

  /// The description string for the import image task.
  String? get platform;

  /// The percentage of progress of the import image task.
  String? get progress;

  /// Information about the snapshots.
  _i2.BuiltList<SnapshotDetail>? get snapshotDetails;

  /// A brief status for the import image task.
  String? get status;

  /// A descriptive status message for the import image task.
  String? get statusMessage;

  /// The tags for the import image task.
  _i2.BuiltList<Tag>? get tags;

  /// The ARNs of the license configurations that are associated with the import image task.
  _i2.BuiltList<ImportImageLicenseConfigurationResponse>?
      get licenseSpecifications;

  /// The usage operation value.
  String? get usageOperation;

  /// The boot mode of the virtual machine.
  BootModeValues? get bootMode;
  @override
  List<Object?> get props => [
        architecture,
        description,
        encrypted,
        hypervisor,
        imageId,
        importTaskId,
        kmsKeyId,
        licenseType,
        platform,
        progress,
        snapshotDetails,
        status,
        statusMessage,
        tags,
        licenseSpecifications,
        usageOperation,
        bootMode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportImageTask')
      ..add(
        'architecture',
        architecture,
      )
      ..add(
        'description',
        description,
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
        'imageId',
        imageId,
      )
      ..add(
        'importTaskId',
        importTaskId,
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
        'progress',
        progress,
      )
      ..add(
        'snapshotDetails',
        snapshotDetails,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'statusMessage',
        statusMessage,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'licenseSpecifications',
        licenseSpecifications,
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

class ImportImageTaskEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ImportImageTask> {
  const ImportImageTaskEc2QuerySerializer() : super('ImportImageTask');

  @override
  Iterable<Type> get types => const [
        ImportImageTask,
        _$ImportImageTask,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportImageTask deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportImageTaskBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'architecture':
          result.architecture = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'hypervisor':
          result.hypervisor = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'importTaskId':
          result.importTaskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'kmsKeyId':
          result.kmsKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'licenseType':
          result.licenseType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'platform':
          result.platform = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'progress':
          result.progress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'snapshotDetailSet':
          result.snapshotDetails.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SnapshotDetail)],
            ),
          ) as _i2.BuiltList<SnapshotDetail>));
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
        case 'licenseSpecifications':
          result.licenseSpecifications
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ImportImageLicenseConfigurationResponse)],
            ),
          ) as _i2.BuiltList<ImportImageLicenseConfigurationResponse>));
        case 'usageOperation':
          result.usageOperation = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'bootMode':
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
    ImportImageTask object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ImportImageTaskResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportImageTask(
      :architecture,
      :description,
      :encrypted,
      :hypervisor,
      :imageId,
      :importTaskId,
      :kmsKeyId,
      :licenseType,
      :platform,
      :progress,
      :snapshotDetails,
      :status,
      :statusMessage,
      :tags,
      :licenseSpecifications,
      :usageOperation,
      :bootMode
    ) = object;
    if (architecture != null) {
      result$
        ..add(const _i3.XmlElementName('Architecture'))
        ..add(serializers.serialize(
          architecture,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        encrypted,
        specifiedType: const FullType(bool),
      ));
    if (hypervisor != null) {
      result$
        ..add(const _i3.XmlElementName('Hypervisor'))
        ..add(serializers.serialize(
          hypervisor,
          specifiedType: const FullType(String),
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
    if (importTaskId != null) {
      result$
        ..add(const _i3.XmlElementName('ImportTaskId'))
        ..add(serializers.serialize(
          importTaskId,
          specifiedType: const FullType(String),
        ));
    }
    if (kmsKeyId != null) {
      result$
        ..add(const _i3.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          kmsKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (licenseType != null) {
      result$
        ..add(const _i3.XmlElementName('LicenseType'))
        ..add(serializers.serialize(
          licenseType,
          specifiedType: const FullType(String),
        ));
    }
    if (platform != null) {
      result$
        ..add(const _i3.XmlElementName('Platform'))
        ..add(serializers.serialize(
          platform,
          specifiedType: const FullType(String),
        ));
    }
    if (progress != null) {
      result$
        ..add(const _i3.XmlElementName('Progress'))
        ..add(serializers.serialize(
          progress,
          specifiedType: const FullType(String),
        ));
    }
    if (snapshotDetails != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotDetailSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          snapshotDetails,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(SnapshotDetail)],
          ),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(String),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i3.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (licenseSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName('LicenseSpecifications'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          licenseSpecifications,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ImportImageLicenseConfigurationResponse)],
          ),
        ));
    }
    if (usageOperation != null) {
      result$
        ..add(const _i3.XmlElementName('UsageOperation'))
        ..add(serializers.serialize(
          usageOperation,
          specifiedType: const FullType(String),
        ));
    }
    if (bootMode != null) {
      result$
        ..add(const _i3.XmlElementName('BootMode'))
        ..add(serializers.serialize(
          bootMode,
          specifiedType: const FullType(BootModeValues),
        ));
    }
    return result$;
  }
}
