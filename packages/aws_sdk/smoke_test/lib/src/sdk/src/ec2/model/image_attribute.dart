// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.image_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_permission.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart';

part 'image_attribute.g.dart';

/// Describes an image attribute.
abstract class ImageAttribute
    with _i1.AWSEquatable<ImageAttribute>
    implements Built<ImageAttribute, ImageAttributeBuilder> {
  /// Describes an image attribute.
  factory ImageAttribute({
    List<BlockDeviceMapping>? blockDeviceMappings,
    String? imageId,
    List<LaunchPermission>? launchPermissions,
    List<ProductCode>? productCodes,
    AttributeValue? description,
    AttributeValue? kernelId,
    AttributeValue? ramdiskId,
    AttributeValue? sriovNetSupport,
    AttributeValue? bootMode,
    AttributeValue? tpmSupport,
    AttributeValue? uefiData,
    AttributeValue? lastLaunchedTime,
    AttributeValue? imdsSupport,
  }) {
    return _$ImageAttribute._(
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i2.BuiltList(blockDeviceMappings),
      imageId: imageId,
      launchPermissions:
          launchPermissions == null ? null : _i2.BuiltList(launchPermissions),
      productCodes: productCodes == null ? null : _i2.BuiltList(productCodes),
      description: description,
      kernelId: kernelId,
      ramdiskId: ramdiskId,
      sriovNetSupport: sriovNetSupport,
      bootMode: bootMode,
      tpmSupport: tpmSupport,
      uefiData: uefiData,
      lastLaunchedTime: lastLaunchedTime,
      imdsSupport: imdsSupport,
    );
  }

  /// Describes an image attribute.
  factory ImageAttribute.build([void Function(ImageAttributeBuilder) updates]) =
      _$ImageAttribute;

  const ImageAttribute._();

  /// Constructs a [ImageAttribute] from a [payload] and [response].
  factory ImageAttribute.fromResponse(
    ImageAttribute payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ImageAttribute>> serializers = [
    ImageAttributeEc2QuerySerializer()
  ];

  /// The block device mapping entries.
  _i2.BuiltList<BlockDeviceMapping>? get blockDeviceMappings;

  /// The ID of the AMI.
  String? get imageId;

  /// The launch permissions.
  _i2.BuiltList<LaunchPermission>? get launchPermissions;

  /// The product codes.
  _i2.BuiltList<ProductCode>? get productCodes;

  /// A description for the AMI.
  AttributeValue? get description;

  /// The kernel ID.
  AttributeValue? get kernelId;

  /// The RAM disk ID.
  AttributeValue? get ramdiskId;

  /// Indicates whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
  AttributeValue? get sriovNetSupport;

  /// The boot mode.
  AttributeValue? get bootMode;

  /// If the image is configured for NitroTPM support, the value is `v2.0`.
  AttributeValue? get tpmSupport;

  /// Base64 representation of the non-volatile UEFI variable store. To retrieve the UEFI data, use the [GetInstanceUefiData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceUefiData) command. You can inspect and modify the UEFI data by using the [python-uefivars tool](https://github.com/awslabs/python-uefivars) on GitHub. For more information, see [UEFI Secure Boot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html) in the _Amazon EC2 User Guide_.
  AttributeValue? get uefiData;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported.
  ///
  /// `lastLaunchedTime` data is available starting April 2017.
  AttributeValue? get lastLaunchedTime;

  /// If `v2.0`, it indicates that IMDSv2 is specified in the AMI. Instances launched from this AMI will have `HttpTokens` automatically set to `required` so that, by default, the instance requires that IMDSv2 is used when requesting instance metadata. In addition, `HttpPutResponseHopLimit` is set to `2`. For more information, see [Configure the AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration) in the _Amazon EC2 User Guide_.
  AttributeValue? get imdsSupport;
  @override
  List<Object?> get props => [
        blockDeviceMappings,
        imageId,
        launchPermissions,
        productCodes,
        description,
        kernelId,
        ramdiskId,
        sriovNetSupport,
        bootMode,
        tpmSupport,
        uefiData,
        lastLaunchedTime,
        imdsSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImageAttribute')
      ..add(
        'blockDeviceMappings',
        blockDeviceMappings,
      )
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'launchPermissions',
        launchPermissions,
      )
      ..add(
        'productCodes',
        productCodes,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'kernelId',
        kernelId,
      )
      ..add(
        'ramdiskId',
        ramdiskId,
      )
      ..add(
        'sriovNetSupport',
        sriovNetSupport,
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
        'lastLaunchedTime',
        lastLaunchedTime,
      )
      ..add(
        'imdsSupport',
        imdsSupport,
      );
    return helper.toString();
  }
}

class ImageAttributeEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ImageAttribute> {
  const ImageAttributeEc2QuerySerializer() : super('ImageAttribute');

  @override
  Iterable<Type> get types => const [
        ImageAttribute,
        _$ImageAttribute,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImageAttribute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageAttributeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'blockDeviceMapping':
          result.blockDeviceMappings.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(BlockDeviceMapping)],
            ),
          ) as _i2.BuiltList<BlockDeviceMapping>));
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'launchPermission':
          result.launchPermissions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchPermission)],
            ),
          ) as _i2.BuiltList<LaunchPermission>));
        case 'productCodes':
          result.productCodes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ProductCode)],
            ),
          ) as _i2.BuiltList<ProductCode>));
        case 'description':
          result.description.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'kernel':
          result.kernelId.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'ramdisk':
          result.ramdiskId.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'sriovNetSupport':
          result.sriovNetSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'bootMode':
          result.bootMode.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'tpmSupport':
          result.tpmSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'uefiData':
          result.uefiData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'lastLaunchedTime':
          result.lastLaunchedTime.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'imdsSupport':
          result.imdsSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImageAttribute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ImageAttributeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImageAttribute(
      :blockDeviceMappings,
      :imageId,
      :launchPermissions,
      :productCodes,
      :description,
      :kernelId,
      :ramdiskId,
      :sriovNetSupport,
      :bootMode,
      :tpmSupport,
      :uefiData,
      :lastLaunchedTime,
      :imdsSupport
    ) = object;
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i3.XmlElementName('BlockDeviceMapping'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(BlockDeviceMapping)],
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
    if (launchPermissions != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchPermission'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          launchPermissions,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LaunchPermission)],
          ),
        ));
    }
    if (productCodes != null) {
      result$
        ..add(const _i3.XmlElementName('ProductCodes'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          productCodes,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ProductCode)],
          ),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (kernelId != null) {
      result$
        ..add(const _i3.XmlElementName('Kernel'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (ramdiskId != null) {
      result$
        ..add(const _i3.XmlElementName('Ramdisk'))
        ..add(serializers.serialize(
          ramdiskId,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (sriovNetSupport != null) {
      result$
        ..add(const _i3.XmlElementName('SriovNetSupport'))
        ..add(serializers.serialize(
          sriovNetSupport,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (bootMode != null) {
      result$
        ..add(const _i3.XmlElementName('BootMode'))
        ..add(serializers.serialize(
          bootMode,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (tpmSupport != null) {
      result$
        ..add(const _i3.XmlElementName('TpmSupport'))
        ..add(serializers.serialize(
          tpmSupport,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (uefiData != null) {
      result$
        ..add(const _i3.XmlElementName('UefiData'))
        ..add(serializers.serialize(
          uefiData,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (lastLaunchedTime != null) {
      result$
        ..add(const _i3.XmlElementName('LastLaunchedTime'))
        ..add(serializers.serialize(
          lastLaunchedTime,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    if (imdsSupport != null) {
      result$
        ..add(const _i3.XmlElementName('ImdsSupport'))
        ..add(serializers.serialize(
          imdsSupport,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    return result$;
  }
}
