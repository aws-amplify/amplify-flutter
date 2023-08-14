// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fpga_image; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/pci_id.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'fpga_image.g.dart';

/// Describes an Amazon FPGA image (AFI).
abstract class FpgaImage
    with _i1.AWSEquatable<FpgaImage>
    implements Built<FpgaImage, FpgaImageBuilder> {
  /// Describes an Amazon FPGA image (AFI).
  factory FpgaImage({
    String? fpgaImageId,
    String? fpgaImageGlobalId,
    String? name,
    String? description,
    String? shellVersion,
    PciId? pciId,
    FpgaImageState? state,
    DateTime? createTime,
    DateTime? updateTime,
    String? ownerId,
    String? ownerAlias,
    List<ProductCode>? productCodes,
    List<Tag>? tags,
    bool? public,
    bool? dataRetentionSupport,
    List<String>? instanceTypes,
  }) {
    public ??= false;
    dataRetentionSupport ??= false;
    return _$FpgaImage._(
      fpgaImageId: fpgaImageId,
      fpgaImageGlobalId: fpgaImageGlobalId,
      name: name,
      description: description,
      shellVersion: shellVersion,
      pciId: pciId,
      state: state,
      createTime: createTime,
      updateTime: updateTime,
      ownerId: ownerId,
      ownerAlias: ownerAlias,
      productCodes: productCodes == null ? null : _i2.BuiltList(productCodes),
      tags: tags == null ? null : _i2.BuiltList(tags),
      public: public,
      dataRetentionSupport: dataRetentionSupport,
      instanceTypes:
          instanceTypes == null ? null : _i2.BuiltList(instanceTypes),
    );
  }

  /// Describes an Amazon FPGA image (AFI).
  factory FpgaImage.build([void Function(FpgaImageBuilder) updates]) =
      _$FpgaImage;

  const FpgaImage._();

  static const List<_i3.SmithySerializer<FpgaImage>> serializers = [
    FpgaImageEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FpgaImageBuilder b) {
    b
      ..public = false
      ..dataRetentionSupport = false;
  }

  /// The FPGA image identifier (AFI ID).
  String? get fpgaImageId;

  /// The global FPGA image identifier (AGFI ID).
  String? get fpgaImageGlobalId;

  /// The name of the AFI.
  String? get name;

  /// The description of the AFI.
  String? get description;

  /// The version of the Amazon Web Services Shell that was used to create the bitstream.
  String? get shellVersion;

  /// Information about the PCI bus.
  PciId? get pciId;

  /// Information about the state of the AFI.
  FpgaImageState? get state;

  /// The date and time the AFI was created.
  DateTime? get createTime;

  /// The time of the most recent update to the AFI.
  DateTime? get updateTime;

  /// The ID of the Amazon Web Services account that owns the AFI.
  String? get ownerId;

  /// The alias of the AFI owner. Possible values include `self`, `amazon`, and `aws-marketplace`.
  String? get ownerAlias;

  /// The product codes for the AFI.
  _i2.BuiltList<ProductCode>? get productCodes;

  /// Any tags assigned to the AFI.
  _i2.BuiltList<Tag>? get tags;

  /// Indicates whether the AFI is public.
  bool get public;

  /// Indicates whether data retention support is enabled for the AFI.
  bool get dataRetentionSupport;

  /// The instance types supported by the AFI.
  _i2.BuiltList<String>? get instanceTypes;
  @override
  List<Object?> get props => [
        fpgaImageId,
        fpgaImageGlobalId,
        name,
        description,
        shellVersion,
        pciId,
        state,
        createTime,
        updateTime,
        ownerId,
        ownerAlias,
        productCodes,
        tags,
        public,
        dataRetentionSupport,
        instanceTypes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FpgaImage')
      ..add(
        'fpgaImageId',
        fpgaImageId,
      )
      ..add(
        'fpgaImageGlobalId',
        fpgaImageGlobalId,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'shellVersion',
        shellVersion,
      )
      ..add(
        'pciId',
        pciId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'createTime',
        createTime,
      )
      ..add(
        'updateTime',
        updateTime,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'ownerAlias',
        ownerAlias,
      )
      ..add(
        'productCodes',
        productCodes,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'public',
        public,
      )
      ..add(
        'dataRetentionSupport',
        dataRetentionSupport,
      )
      ..add(
        'instanceTypes',
        instanceTypes,
      );
    return helper.toString();
  }
}

class FpgaImageEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<FpgaImage> {
  const FpgaImageEc2QuerySerializer() : super('FpgaImage');

  @override
  Iterable<Type> get types => const [
        FpgaImage,
        _$FpgaImage,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FpgaImage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FpgaImageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fpgaImageId':
          result.fpgaImageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'fpgaImageGlobalId':
          result.fpgaImageGlobalId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'shellVersion':
          result.shellVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'pciId':
          result.pciId.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PciId),
          ) as PciId));
        case 'state':
          result.state.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FpgaImageState),
          ) as FpgaImageState));
        case 'createTime':
          result.createTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'updateTime':
          result.updateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerAlias':
          result.ownerAlias = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'tags':
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
        case 'public':
          result.public = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'dataRetentionSupport':
          result.dataRetentionSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'instanceTypes':
          result.instanceTypes.replace((const _i3.XmlBuiltListSerializer(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FpgaImage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'FpgaImageResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FpgaImage(
      :fpgaImageId,
      :fpgaImageGlobalId,
      :name,
      :description,
      :shellVersion,
      :pciId,
      :state,
      :createTime,
      :updateTime,
      :ownerId,
      :ownerAlias,
      :productCodes,
      :tags,
      :public,
      :dataRetentionSupport,
      :instanceTypes
    ) = object;
    if (fpgaImageId != null) {
      result$
        ..add(const _i3.XmlElementName('FpgaImageId'))
        ..add(serializers.serialize(
          fpgaImageId,
          specifiedType: const FullType(String),
        ));
    }
    if (fpgaImageGlobalId != null) {
      result$
        ..add(const _i3.XmlElementName('FpgaImageGlobalId'))
        ..add(serializers.serialize(
          fpgaImageGlobalId,
          specifiedType: const FullType(String),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i3.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
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
    if (shellVersion != null) {
      result$
        ..add(const _i3.XmlElementName('ShellVersion'))
        ..add(serializers.serialize(
          shellVersion,
          specifiedType: const FullType(String),
        ));
    }
    if (pciId != null) {
      result$
        ..add(const _i3.XmlElementName('PciId'))
        ..add(serializers.serialize(
          pciId,
          specifiedType: const FullType(PciId),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(FpgaImageState),
        ));
    }
    if (createTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          createTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (updateTime != null) {
      result$
        ..add(const _i3.XmlElementName('UpdateTime'))
        ..add(serializers.serialize(
          updateTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerAlias != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerAlias'))
        ..add(serializers.serialize(
          ownerAlias,
          specifiedType: const FullType(String),
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
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('Tags'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Public'))
      ..add(serializers.serialize(
        public,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('DataRetentionSupport'))
      ..add(serializers.serialize(
        dataRetentionSupport,
        specifiedType: const FullType(bool),
      ));
    if (instanceTypes != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceTypes'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceTypes,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
