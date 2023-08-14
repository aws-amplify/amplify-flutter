// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.copy_snapshot_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'copy_snapshot_request.g.dart';

abstract class CopySnapshotRequest
    with
        _i1.HttpInput<CopySnapshotRequest>,
        _i2.AWSEquatable<CopySnapshotRequest>
    implements Built<CopySnapshotRequest, CopySnapshotRequestBuilder> {
  factory CopySnapshotRequest({
    String? description,
    String? destinationOutpostArn,
    String? destinationRegion,
    bool? encrypted,
    String? kmsKeyId,
    String? presignedUrl,
    String? sourceRegion,
    String? sourceSnapshotId,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    encrypted ??= false;
    dryRun ??= false;
    return _$CopySnapshotRequest._(
      description: description,
      destinationOutpostArn: destinationOutpostArn,
      destinationRegion: destinationRegion,
      encrypted: encrypted,
      kmsKeyId: kmsKeyId,
      presignedUrl: presignedUrl,
      sourceRegion: sourceRegion,
      sourceSnapshotId: sourceSnapshotId,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CopySnapshotRequest.build(
          [void Function(CopySnapshotRequestBuilder) updates]) =
      _$CopySnapshotRequest;

  const CopySnapshotRequest._();

  factory CopySnapshotRequest.fromRequest(
    CopySnapshotRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CopySnapshotRequest>> serializers = [
    CopySnapshotRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopySnapshotRequestBuilder b) {
    b
      ..encrypted = false
      ..dryRun = false;
  }

  /// A description for the EBS snapshot.
  String? get description;

  /// The Amazon Resource Name (ARN) of the Outpost to which to copy the snapshot. Only specify this parameter when copying a snapshot from an Amazon Web Services Region to an Outpost. The snapshot must be in the Region for the destination Outpost. You cannot copy a snapshot from an Outpost to a Region, from one Outpost to another, or within the same Outpost.
  ///
  /// For more information, see [Copy snapshots from an Amazon Web Services Region to an Outpost](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#copy-snapshots) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get destinationOutpostArn;

  /// The destination Region to use in the `PresignedUrl` parameter of a snapshot copy operation. This parameter is only valid for specifying the destination Region in a `PresignedUrl` parameter, where it is required.
  ///
  /// The snapshot copy is sent to the regional endpoint that you sent the HTTP request to (for example, `ec2.us-east-1.amazonaws.com`). With the CLI, this is specified using the `--region` parameter or the default Region in your Amazon Web Services configuration file.
  String? get destinationRegion;

  /// To encrypt a copy of an unencrypted snapshot if encryption by default is not enabled, enable encryption using this parameter. Otherwise, omit this parameter. Encrypted snapshots are encrypted, even if you omit this parameter and encryption by default is not enabled. You cannot set this parameter to false. For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  bool get encrypted;

  /// The identifier of the Key Management Service (KMS) KMS key to use for Amazon EBS encryption. If this parameter is not specified, your KMS key for Amazon EBS is used. If `KmsKeyId` is specified, the encrypted state must be `true`.
  ///
  /// You can specify the KMS key using any of the following:
  ///
  /// *   Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.
  ///
  /// *   Key alias. For example, alias/ExampleAlias.
  ///
  /// *   Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.
  ///
  /// *   Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.
  ///
  ///
  /// Amazon Web Services authenticates the KMS key asynchronously. Therefore, if you specify an ID, alias, or ARN that is not valid, the action can appear to complete, but eventually fails.
  String? get kmsKeyId;

  /// When you copy an encrypted source snapshot using the Amazon EC2 Query API, you must supply a pre-signed URL. This parameter is optional for unencrypted snapshots. For more information, see [Query requests](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html).
  ///
  /// The `PresignedUrl` should use the snapshot source endpoint, the `CopySnapshot` action, and include the `SourceRegion`, `SourceSnapshotId`, and `DestinationRegion` parameters. The `PresignedUrl` must be signed using Amazon Web Services Signature Version 4. Because EBS snapshots are stored in Amazon S3, the signing algorithm for this parameter uses the same logic that is described in [Authenticating Requests: Using Query Parameters (Amazon Web Services Signature Version 4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) in the _Amazon Simple Storage Service API Reference_. An invalid or improperly signed `PresignedUrl` will cause the copy operation to fail asynchronously, and the snapshot will move to an `error` state.
  String? get presignedUrl;

  /// The ID of the Region that contains the snapshot to be copied.
  String? get sourceRegion;

  /// The ID of the EBS snapshot to copy.
  String? get sourceSnapshotId;

  /// The tags to apply to the new snapshot.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CopySnapshotRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        destinationOutpostArn,
        destinationRegion,
        encrypted,
        kmsKeyId,
        presignedUrl,
        sourceRegion,
        sourceSnapshotId,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopySnapshotRequest')
      ..add(
        'description',
        description,
      )
      ..add(
        'destinationOutpostArn',
        destinationOutpostArn,
      )
      ..add(
        'destinationRegion',
        destinationRegion,
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
        'presignedUrl',
        '***SENSITIVE***',
      )
      ..add(
        'sourceRegion',
        sourceRegion,
      )
      ..add(
        'sourceSnapshotId',
        sourceSnapshotId,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class CopySnapshotRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CopySnapshotRequest> {
  const CopySnapshotRequestEc2QuerySerializer() : super('CopySnapshotRequest');

  @override
  Iterable<Type> get types => const [
        CopySnapshotRequest,
        _$CopySnapshotRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CopySnapshotRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopySnapshotRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DestinationOutpostArn':
          result.destinationOutpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destinationRegion':
          result.destinationRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'kmsKeyId':
          result.kmsKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'presignedUrl':
          result.presignedUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceRegion':
          result.sourceRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceSnapshotId':
          result.sourceSnapshotId = (serializers.deserialize(
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
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
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
    CopySnapshotRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CopySnapshotRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CopySnapshotRequest(
      :description,
      :destinationOutpostArn,
      :destinationRegion,
      :encrypted,
      :kmsKeyId,
      :presignedUrl,
      :sourceRegion,
      :sourceSnapshotId,
      :tagSpecifications,
      :dryRun
    ) = object;
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationOutpostArn != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationOutpostArn'))
        ..add(serializers.serialize(
          destinationOutpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationRegion != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationRegion'))
        ..add(serializers.serialize(
          destinationRegion,
          specifiedType: const FullType(String),
        ));
    }
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
    if (presignedUrl != null) {
      result$
        ..add(const _i1.XmlElementName('PresignedUrl'))
        ..add(serializers.serialize(
          presignedUrl,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceRegion != null) {
      result$
        ..add(const _i1.XmlElementName('SourceRegion'))
        ..add(serializers.serialize(
          sourceRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceSnapshotId != null) {
      result$
        ..add(const _i1.XmlElementName('SourceSnapshotId'))
        ..add(serializers.serialize(
          sourceSnapshotId,
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
