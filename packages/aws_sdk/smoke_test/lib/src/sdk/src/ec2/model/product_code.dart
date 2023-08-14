// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.product_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code_values.dart';

part 'product_code.g.dart';

/// Describes a product code.
abstract class ProductCode
    with _i1.AWSEquatable<ProductCode>
    implements Built<ProductCode, ProductCodeBuilder> {
  /// Describes a product code.
  factory ProductCode({
    String? productCodeId,
    ProductCodeValues? productCodeType,
  }) {
    return _$ProductCode._(
      productCodeId: productCodeId,
      productCodeType: productCodeType,
    );
  }

  /// Describes a product code.
  factory ProductCode.build([void Function(ProductCodeBuilder) updates]) =
      _$ProductCode;

  const ProductCode._();

  static const List<_i2.SmithySerializer<ProductCode>> serializers = [
    ProductCodeEc2QuerySerializer()
  ];

  /// The product code.
  String? get productCodeId;

  /// The type of product code.
  ProductCodeValues? get productCodeType;
  @override
  List<Object?> get props => [
        productCodeId,
        productCodeType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProductCode')
      ..add(
        'productCodeId',
        productCodeId,
      )
      ..add(
        'productCodeType',
        productCodeType,
      );
    return helper.toString();
  }
}

class ProductCodeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ProductCode> {
  const ProductCodeEc2QuerySerializer() : super('ProductCode');

  @override
  Iterable<Type> get types => const [
        ProductCode,
        _$ProductCode,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProductCode deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductCodeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'productCode':
          result.productCodeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'type':
          result.productCodeType = (serializers.deserialize(
            value,
            specifiedType: const FullType(ProductCodeValues),
          ) as ProductCodeValues);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ProductCode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ProductCodeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ProductCode(:productCodeId, :productCodeType) = object;
    if (productCodeId != null) {
      result$
        ..add(const _i2.XmlElementName('ProductCode'))
        ..add(serializers.serialize(
          productCodeId,
          specifiedType: const FullType(String),
        ));
    }
    if (productCodeType != null) {
      result$
        ..add(const _i2.XmlElementName('Type'))
        ..add(serializers.serialize(
          productCodeType,
          specifiedType: const FullType.nullable(ProductCodeValues),
        ));
    }
    return result$;
  }
}
