// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_snapshot_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/client_data.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_disk_container.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'import_snapshot_request.g.dart';

abstract class ImportSnapshotRequest
    with
        _i1.HttpInput<ImportSnapshotRequest>,
        _i2.AWSEquatable<ImportSnapshotRequest>
    implements Built<ImportSnapshotRequest, ImportSnapshotRequestBuilder> {
  factory ImportSnapshotRequest({
    ClientData? clientData,
    String? clientToken,
    String? description,
    SnapshotDiskContainer? diskContainer,
    bool? dryRun,
    bool? encrypted,
    String? kmsKeyId,
    String? roleName,
    List<TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    encrypted ??= false;
    return _$ImportSnapshotRequest._(
      clientData: clientData,
      clientToken: clientToken,
      description: description,
      diskContainer: diskContainer,
      dryRun: dryRun,
      encrypted: encrypted,
      kmsKeyId: kmsKeyId,
      roleName: roleName,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  factory ImportSnapshotRequest.build(
          [void Function(ImportSnapshotRequestBuilder) updates]) =
      _$ImportSnapshotRequest;

  const ImportSnapshotRequest._();

  factory ImportSnapshotRequest.fromRequest(
    ImportSnapshotRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ImportSnapshotRequest>> serializers = [
    ImportSnapshotRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportSnapshotRequestBuilder b) {
    b
      ..dryRun = false
      ..encrypted = false;
  }

  /// The client-specific data.
  ClientData? get clientData;

  /// Token to enable idempotency for VM import requests.
  String? get clientToken;

  /// The description string for the import snapshot task.
  String? get description;

  /// Information about the disk container.
  SnapshotDiskContainer? get diskContainer;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Specifies whether the destination snapshot of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using `KmsKeyId`. For more information, see [Amazon EBS Encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  bool get encrypted;

  /// An identifier for the symmetric KMS key to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a `KmsKeyId` is specified, the `Encrypted` flag must also be set.
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
  /// The specified KMS key must exist in the Region that the snapshot is being copied to.
  ///
  /// Amazon EBS does not support asymmetric KMS keys.
  String? get kmsKeyId;

  /// The name of the role to use when not using the default role, 'vmimport'.
  String? get roleName;

  /// The tags to apply to the import snapshot task during creation.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  ImportSnapshotRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientData,
        clientToken,
        description,
        diskContainer,
        dryRun,
        encrypted,
        kmsKeyId,
        roleName,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportSnapshotRequest')
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
        'diskContainer',
        diskContainer,
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
        'kmsKeyId',
        kmsKeyId,
      )
      ..add(
        'roleName',
        roleName,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      );
    return helper.toString();
  }
}

class ImportSnapshotRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ImportSnapshotRequest> {
  const ImportSnapshotRequestEc2QuerySerializer()
      : super('ImportSnapshotRequest');

  @override
  Iterable<Type> get types => const [
        ImportSnapshotRequest,
        _$ImportSnapshotRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportSnapshotRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportSnapshotRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
          result.diskContainer.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SnapshotDiskContainer),
          ) as SnapshotDiskContainer));
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
        case 'KmsKeyId':
          result.kmsKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportSnapshotRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ImportSnapshotRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportSnapshotRequest(
      :clientData,
      :clientToken,
      :description,
      :diskContainer,
      :dryRun,
      :encrypted,
      :kmsKeyId,
      :roleName,
      :tagSpecifications
    ) = object;
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
    if (diskContainer != null) {
      result$
        ..add(const _i1.XmlElementName('DiskContainer'))
        ..add(serializers.serialize(
          diskContainer,
          specifiedType: const FullType(SnapshotDiskContainer),
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
    if (kmsKeyId != null) {
      result$
        ..add(const _i1.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          kmsKeyId,
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
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    return result$;
  }
}
