// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_volume_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart';

part 'describe_volume_attribute_result.g.dart';

abstract class DescribeVolumeAttributeResult
    with
        _i1.AWSEquatable<DescribeVolumeAttributeResult>
    implements
        Built<DescribeVolumeAttributeResult,
            DescribeVolumeAttributeResultBuilder> {
  factory DescribeVolumeAttributeResult({
    AttributeBooleanValue? autoEnableIo,
    List<ProductCode>? productCodes,
    String? volumeId,
  }) {
    return _$DescribeVolumeAttributeResult._(
      autoEnableIo: autoEnableIo,
      productCodes: productCodes == null ? null : _i2.BuiltList(productCodes),
      volumeId: volumeId,
    );
  }

  factory DescribeVolumeAttributeResult.build(
          [void Function(DescribeVolumeAttributeResultBuilder) updates]) =
      _$DescribeVolumeAttributeResult;

  const DescribeVolumeAttributeResult._();

  /// Constructs a [DescribeVolumeAttributeResult] from a [payload] and [response].
  factory DescribeVolumeAttributeResult.fromResponse(
    DescribeVolumeAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVolumeAttributeResult>>
      serializers = [DescribeVolumeAttributeResultEc2QuerySerializer()];

  /// The state of `autoEnableIO` attribute.
  AttributeBooleanValue? get autoEnableIo;

  /// A list of product codes.
  _i2.BuiltList<ProductCode>? get productCodes;

  /// The ID of the volume.
  String? get volumeId;
  @override
  List<Object?> get props => [
        autoEnableIo,
        productCodes,
        volumeId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVolumeAttributeResult')
      ..add(
        'autoEnableIo',
        autoEnableIo,
      )
      ..add(
        'productCodes',
        productCodes,
      )
      ..add(
        'volumeId',
        volumeId,
      );
    return helper.toString();
  }
}

class DescribeVolumeAttributeResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeVolumeAttributeResult> {
  const DescribeVolumeAttributeResultEc2QuerySerializer()
      : super('DescribeVolumeAttributeResult');

  @override
  Iterable<Type> get types => const [
        DescribeVolumeAttributeResult,
        _$DescribeVolumeAttributeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumeAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumeAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'autoEnableIO':
          result.autoEnableIo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
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
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
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
    DescribeVolumeAttributeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVolumeAttributeResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVolumeAttributeResult(
      :autoEnableIo,
      :productCodes,
      :volumeId
    ) = object;
    if (autoEnableIo != null) {
      result$
        ..add(const _i3.XmlElementName('AutoEnableIO'))
        ..add(serializers.serialize(
          autoEnableIo,
          specifiedType: const FullType(AttributeBooleanValue),
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ProductCode)],
          ),
        ));
    }
    if (volumeId != null) {
      result$
        ..add(const _i3.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
