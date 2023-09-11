// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.blob_attribute_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'blob_attribute_value.g.dart';

abstract class BlobAttributeValue
    with _i1.AWSEquatable<BlobAttributeValue>
    implements Built<BlobAttributeValue, BlobAttributeValueBuilder> {
  factory BlobAttributeValue({_i2.Uint8List? value}) {
    return _$BlobAttributeValue._(value: value);
  }

  factory BlobAttributeValue.build(
          [void Function(BlobAttributeValueBuilder) updates]) =
      _$BlobAttributeValue;

  const BlobAttributeValue._();

  static const List<_i3.SmithySerializer<BlobAttributeValue>> serializers = [
    BlobAttributeValueEc2QuerySerializer()
  ];

  _i2.Uint8List? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BlobAttributeValue')
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class BlobAttributeValueEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<BlobAttributeValue> {
  const BlobAttributeValueEc2QuerySerializer() : super('BlobAttributeValue');

  @override
  Iterable<Type> get types => const [
        BlobAttributeValue,
        _$BlobAttributeValue,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  BlobAttributeValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlobAttributeValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Uint8List),
          ) as _i2.Uint8List);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BlobAttributeValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'BlobAttributeValueResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final BlobAttributeValue(:value) = object;
    if (value != null) {
      result$
        ..add(const _i3.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(_i2.Uint8List),
        ));
    }
    return result$;
  }
}
