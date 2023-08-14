// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_volume_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_type.dart';

part 'create_volume_request.g.dart';

abstract class CreateVolumeRequest
    with
        _i1.HttpInput<CreateVolumeRequest>,
        _i2.AWSEquatable<CreateVolumeRequest>
    implements Built<CreateVolumeRequest, CreateVolumeRequestBuilder> {
  factory CreateVolumeRequest({
    String? availabilityZone,
    bool? encrypted,
    int? iops,
    String? kmsKeyId,
    String? outpostArn,
    int? size,
    String? snapshotId,
    VolumeType? volumeType,
    bool? dryRun,
    List<TagSpecification>? tagSpecifications,
    bool? multiAttachEnabled,
    int? throughput,
    String? clientToken,
  }) {
    encrypted ??= false;
    iops ??= 0;
    size ??= 0;
    dryRun ??= false;
    multiAttachEnabled ??= false;
    throughput ??= 0;
    return _$CreateVolumeRequest._(
      availabilityZone: availabilityZone,
      encrypted: encrypted,
      iops: iops,
      kmsKeyId: kmsKeyId,
      outpostArn: outpostArn,
      size: size,
      snapshotId: snapshotId,
      volumeType: volumeType,
      dryRun: dryRun,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      multiAttachEnabled: multiAttachEnabled,
      throughput: throughput,
      clientToken: clientToken,
    );
  }

  factory CreateVolumeRequest.build(
          [void Function(CreateVolumeRequestBuilder) updates]) =
      _$CreateVolumeRequest;

  const CreateVolumeRequest._();

  factory CreateVolumeRequest.fromRequest(
    CreateVolumeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateVolumeRequest>> serializers = [
    CreateVolumeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVolumeRequestBuilder b) {
    b
      ..encrypted = false
      ..iops = 0
      ..size = 0
      ..dryRun = false
      ..multiAttachEnabled = false
      ..throughput = 0
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// The ID of the Availability Zone in which to create the volume. For example, `us-east-1a`.
  String? get availabilityZone;

  /// Indicates whether the volume should be encrypted. The effect of setting the encryption state to `true` depends on the volume origin (new or from a snapshot), starting encryption state, ownership, and whether encryption by default is enabled. For more information, see [Encryption by default](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Encrypted Amazon EBS volumes must be attached to instances that support Amazon EBS encryption. For more information, see [Supported instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances).
  bool get encrypted;

  /// The number of I/O operations per second (IOPS). For `gp3`, `io1`, and `io2` volumes, this represents the number of IOPS that are provisioned for the volume. For `gp2` volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting.
  ///
  /// The following are the supported values for each volume type:
  ///
  /// *   `gp3`: 3,000-16,000 IOPS
  ///
  /// *   `io1`: 100-64,000 IOPS
  ///
  /// *   `io2`: 100-64,000 IOPS
  ///
  ///
  /// `io1` and `io2` volumes support up to 64,000 IOPS only on [Instances built on the Nitro System](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances). Other instance families support performance up to 32,000 IOPS.
  ///
  /// This parameter is required for `io1` and `io2` volumes. The default for `gp3` volumes is 3,000 IOPS. This parameter is not supported for `gp2`, `st1`, `sc1`, or `standard` volumes.
  int get iops;

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

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. If you specify a snapshot, the default is the snapshot size. You can specify a volume size that is equal to or larger than the snapshot size.
  ///
  /// The following are the supported volumes sizes for each volume type:
  ///
  /// *   `gp2` and `gp3`: 1-16,384
  ///
  /// *   `io1` and `io2`: 4-16,384
  ///
  /// *   `st1` and `sc1`: 125-16,384
  ///
  /// *   `standard`: 1-1,024
  int get size;

  /// The snapshot from which to create the volume. You must specify either a snapshot ID or a volume size.
  String? get snapshotId;

  /// The volume type. This parameter can be one of the following values:
  ///
  /// *   General Purpose SSD: `gp2` | `gp3`
  ///
  /// *   Provisioned IOPS SSD: `io1` | `io2`
  ///
  /// *   Throughput Optimized HDD: `st1`
  ///
  /// *   Cold HDD: `sc1`
  ///
  /// *   Magnetic: `standard`
  ///
  ///
  /// Throughput Optimized HDD (`st1`) and Cold HDD (`sc1`) volumes can't be used as boot volumes.
  ///
  /// For more information, see [Amazon EBS volume types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Default: `gp2`
  VolumeType? get volumeType;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tags to apply to the volume during creation.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Indicates whether to enable Amazon EBS Multi-Attach. If you enable Multi-Attach, you can attach the volume to up to 16 [Instances built on the Nitro System](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances) in the same Availability Zone. This parameter is supported with `io1` and `io2` volumes only. For more information, see [Amazon EBS Multi-Attach](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volumes-multi.html) in the _Amazon Elastic Compute Cloud User Guide_.
  bool get multiAttachEnabled;

  /// The throughput to provision for a volume, with a maximum of 1,000 MiB/s.
  ///
  /// This parameter is valid only for `gp3` volumes.
  ///
  /// Valid Range: Minimum value of 125. Maximum value of 1000.
  int get throughput;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensure Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  CreateVolumeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        availabilityZone,
        encrypted,
        iops,
        kmsKeyId,
        outpostArn,
        size,
        snapshotId,
        volumeType,
        dryRun,
        tagSpecifications,
        multiAttachEnabled,
        throughput,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVolumeRequest')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'encrypted',
        encrypted,
      )
      ..add(
        'iops',
        iops,
      )
      ..add(
        'kmsKeyId',
        kmsKeyId,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'size',
        size,
      )
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'volumeType',
        volumeType,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'multiAttachEnabled',
        multiAttachEnabled,
      )
      ..add(
        'throughput',
        throughput,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class CreateVolumeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateVolumeRequest> {
  const CreateVolumeRequestEc2QuerySerializer() : super('CreateVolumeRequest');

  @override
  Iterable<Type> get types => const [
        CreateVolumeRequest,
        _$CreateVolumeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVolumeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVolumeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AvailabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Iops':
          result.iops = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'KmsKeyId':
          result.kmsKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OutpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Size':
          result.size = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'SnapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VolumeType':
          result.volumeType = (serializers.deserialize(
            value,
            specifiedType: const FullType(VolumeType),
          ) as VolumeType);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
        case 'MultiAttachEnabled':
          result.multiAttachEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Throughput':
          result.throughput = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVolumeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVolumeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVolumeRequest(
      :availabilityZone,
      :encrypted,
      :iops,
      :kmsKeyId,
      :outpostArn,
      :size,
      :snapshotId,
      :volumeType,
      :dryRun,
      :tagSpecifications,
      :multiAttachEnabled,
      :throughput,
      :clientToken
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i1.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        encrypted,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('Iops'))
      ..add(serializers.serialize(
        iops,
        specifiedType: const FullType(int),
      ));
    if (kmsKeyId != null) {
      result$
        ..add(const _i1.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          kmsKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i1.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Size'))
      ..add(serializers.serialize(
        size,
        specifiedType: const FullType(int),
      ));
    if (snapshotId != null) {
      result$
        ..add(const _i1.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (volumeType != null) {
      result$
        ..add(const _i1.XmlElementName('VolumeType'))
        ..add(serializers.serialize(
          volumeType,
          specifiedType: const FullType.nullable(VolumeType),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
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
      ..add(const _i1.XmlElementName('MultiAttachEnabled'))
      ..add(serializers.serialize(
        multiAttachEnabled,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('Throughput'))
      ..add(serializers.serialize(
        throughput,
        specifiedType: const FullType(int),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
