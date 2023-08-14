// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fpga_image_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/load_permission.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart';

part 'fpga_image_attribute.g.dart';

/// Describes an Amazon FPGA image (AFI) attribute.
abstract class FpgaImageAttribute
    with _i1.AWSEquatable<FpgaImageAttribute>
    implements Built<FpgaImageAttribute, FpgaImageAttributeBuilder> {
  /// Describes an Amazon FPGA image (AFI) attribute.
  factory FpgaImageAttribute({
    String? fpgaImageId,
    String? name,
    String? description,
    List<LoadPermission>? loadPermissions,
    List<ProductCode>? productCodes,
  }) {
    return _$FpgaImageAttribute._(
      fpgaImageId: fpgaImageId,
      name: name,
      description: description,
      loadPermissions:
          loadPermissions == null ? null : _i2.BuiltList(loadPermissions),
      productCodes: productCodes == null ? null : _i2.BuiltList(productCodes),
    );
  }

  /// Describes an Amazon FPGA image (AFI) attribute.
  factory FpgaImageAttribute.build(
          [void Function(FpgaImageAttributeBuilder) updates]) =
      _$FpgaImageAttribute;

  const FpgaImageAttribute._();

  static const List<_i3.SmithySerializer<FpgaImageAttribute>> serializers = [
    FpgaImageAttributeEc2QuerySerializer()
  ];

  /// The ID of the AFI.
  String? get fpgaImageId;

  /// The name of the AFI.
  String? get name;

  /// The description of the AFI.
  String? get description;

  /// The load permissions.
  _i2.BuiltList<LoadPermission>? get loadPermissions;

  /// The product codes.
  _i2.BuiltList<ProductCode>? get productCodes;
  @override
  List<Object?> get props => [
        fpgaImageId,
        name,
        description,
        loadPermissions,
        productCodes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FpgaImageAttribute')
      ..add(
        'fpgaImageId',
        fpgaImageId,
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
        'loadPermissions',
        loadPermissions,
      )
      ..add(
        'productCodes',
        productCodes,
      );
    return helper.toString();
  }
}

class FpgaImageAttributeEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<FpgaImageAttribute> {
  const FpgaImageAttributeEc2QuerySerializer() : super('FpgaImageAttribute');

  @override
  Iterable<Type> get types => const [
        FpgaImageAttribute,
        _$FpgaImageAttribute,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FpgaImageAttribute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FpgaImageAttributeBuilder();
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
        case 'loadPermissions':
          result.loadPermissions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LoadPermission)],
            ),
          ) as _i2.BuiltList<LoadPermission>));
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FpgaImageAttribute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'FpgaImageAttributeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FpgaImageAttribute(
      :fpgaImageId,
      :name,
      :description,
      :loadPermissions,
      :productCodes
    ) = object;
    if (fpgaImageId != null) {
      result$
        ..add(const _i3.XmlElementName('FpgaImageId'))
        ..add(serializers.serialize(
          fpgaImageId,
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
    if (loadPermissions != null) {
      result$
        ..add(const _i3.XmlElementName('LoadPermissions'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          loadPermissions,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LoadPermission)],
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
    return result$;
  }
}
