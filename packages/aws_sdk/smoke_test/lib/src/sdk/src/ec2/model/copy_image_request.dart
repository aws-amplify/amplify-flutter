// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.copy_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'copy_image_request.g.dart';

/// Contains the parameters for CopyImage.
abstract class CopyImageRequest
    with _i1.HttpInput<CopyImageRequest>, _i2.AWSEquatable<CopyImageRequest>
    implements Built<CopyImageRequest, CopyImageRequestBuilder> {
  /// Contains the parameters for CopyImage.
  factory CopyImageRequest({
    String? clientToken,
    String? description,
    bool? encrypted,
    String? kmsKeyId,
    String? name,
    String? sourceImageId,
    String? sourceRegion,
    String? destinationOutpostArn,
    bool? dryRun,
    bool? copyImageTags,
  }) {
    encrypted ??= false;
    dryRun ??= false;
    copyImageTags ??= false;
    return _$CopyImageRequest._(
      clientToken: clientToken,
      description: description,
      encrypted: encrypted,
      kmsKeyId: kmsKeyId,
      name: name,
      sourceImageId: sourceImageId,
      sourceRegion: sourceRegion,
      destinationOutpostArn: destinationOutpostArn,
      dryRun: dryRun,
      copyImageTags: copyImageTags,
    );
  }

  /// Contains the parameters for CopyImage.
  factory CopyImageRequest.build(
      [void Function(CopyImageRequestBuilder) updates]) = _$CopyImageRequest;

  const CopyImageRequest._();

  factory CopyImageRequest.fromRequest(
    CopyImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CopyImageRequest>> serializers = [
    CopyImageRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopyImageRequestBuilder b) {
    b
      ..encrypted = false
      ..dryRun = false
      ..copyImageTags = false;
  }

  /// Unique, case-sensitive identifier you provide to ensure idempotency of the request. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html) in the _Amazon EC2 API Reference_.
  String? get clientToken;

  /// A description for the new AMI in the destination Region.
  String? get description;

  /// Specifies whether the destination snapshots of the copied image should be encrypted. You can encrypt a copy of an unencrypted snapshot, but you cannot create an unencrypted copy of an encrypted snapshot. The default KMS key for Amazon EBS is used unless you specify a non-default Key Management Service (KMS) KMS key using `KmsKeyId`. For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon EC2 User Guide_.
  bool get encrypted;

  /// The identifier of the symmetric Key Management Service (KMS) KMS key to use when creating encrypted volumes. If this parameter is not specified, your Amazon Web Services managed KMS key for Amazon EBS is used. If you specify a KMS key, you must also set the encrypted state to `true`.
  ///
  /// You can specify a KMS key using any of the following:
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
  /// Amazon Web Services authenticates the KMS key asynchronously. Therefore, if you specify an identifier that is not valid, the action can appear to complete, but eventually fails.
  ///
  /// The specified KMS key must exist in the destination Region.
  ///
  /// Amazon EBS does not support asymmetric KMS keys.
  String? get kmsKeyId;

  /// The name of the new AMI in the destination Region.
  String? get name;

  /// The ID of the AMI to copy.
  String? get sourceImageId;

  /// The name of the Region that contains the AMI to copy.
  String? get sourceRegion;

  /// The Amazon Resource Name (ARN) of the Outpost to which to copy the AMI. Only specify this parameter when copying an AMI from an Amazon Web Services Region to an Outpost. The AMI must be in the Region of the destination Outpost. You cannot copy an AMI from an Outpost to a Region, from one Outpost to another, or within the same Outpost.
  ///
  /// For more information, see [Copy AMIs from an Amazon Web Services Region to an Outpost](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#copy-amis) in the _Amazon EC2 User Guide_.
  String? get destinationOutpostArn;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Indicates whether to include your user-defined AMI tags when copying the AMI.
  ///
  /// The following tags will not be copied:
  ///
  /// *   System tags (prefixed with `aws:`)
  ///
  /// *   For public and shared AMIs, user-defined tags that are attached by other Amazon Web Services accounts
  ///
  ///
  /// Default: Your user-defined AMI tags are not copied.
  bool get copyImageTags;
  @override
  CopyImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        description,
        encrypted,
        kmsKeyId,
        name,
        sourceImageId,
        sourceRegion,
        destinationOutpostArn,
        dryRun,
        copyImageTags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyImageRequest')
      ..add(
        'clientToken',
        clientToken,
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
        'kmsKeyId',
        kmsKeyId,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'sourceImageId',
        sourceImageId,
      )
      ..add(
        'sourceRegion',
        sourceRegion,
      )
      ..add(
        'destinationOutpostArn',
        destinationOutpostArn,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'copyImageTags',
        copyImageTags,
      );
    return helper.toString();
  }
}

class CopyImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CopyImageRequest> {
  const CopyImageRequestEc2QuerySerializer() : super('CopyImageRequest');

  @override
  Iterable<Type> get types => const [
        CopyImageRequest,
        _$CopyImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CopyImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopyImageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceImageId':
          result.sourceImageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceRegion':
          result.sourceRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DestinationOutpostArn':
          result.destinationOutpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'CopyImageTags':
          result.copyImageTags = (serializers.deserialize(
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
    CopyImageRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CopyImageRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CopyImageRequest(
      :clientToken,
      :description,
      :encrypted,
      :kmsKeyId,
      :name,
      :sourceImageId,
      :sourceRegion,
      :destinationOutpostArn,
      :dryRun,
      :copyImageTags
    ) = object;
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
    if (name != null) {
      result$
        ..add(const _i1.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceImageId != null) {
      result$
        ..add(const _i1.XmlElementName('SourceImageId'))
        ..add(serializers.serialize(
          sourceImageId,
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
    if (destinationOutpostArn != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationOutpostArn'))
        ..add(serializers.serialize(
          destinationOutpostArn,
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
      ..add(const _i1.XmlElementName('CopyImageTags'))
      ..add(serializers.serialize(
        copyImageTags,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
