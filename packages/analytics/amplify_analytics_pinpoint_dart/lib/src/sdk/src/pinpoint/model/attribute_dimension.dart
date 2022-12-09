// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.attribute_dimension; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/attribute_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'attribute_dimension.g.dart';

/// Specifies attribute-based criteria for including or excluding endpoints from a segment.
abstract class AttributeDimension
    with _i1.AWSEquatable<AttributeDimension>
    implements Built<AttributeDimension, AttributeDimensionBuilder> {
  /// Specifies attribute-based criteria for including or excluding endpoints from a segment.
  factory AttributeDimension({
    _i2.AttributeType? attributeType,
    required List<String> values,
  }) {
    return _$AttributeDimension._(
      attributeType: attributeType,
      values: _i3.BuiltList(values),
    );
  }

  /// Specifies attribute-based criteria for including or excluding endpoints from a segment.
  factory AttributeDimension.build(
          [void Function(AttributeDimensionBuilder) updates]) =
      _$AttributeDimension;

  const AttributeDimension._();

  static const List<_i4.SmithySerializer> serializers = [
    AttributeDimensionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttributeDimensionBuilder b) {}

  /// The type of segment dimension to use. Valid values are:
  ///
  /// *   INCLUSIVE - endpoints that have attributes matching the values are included in the segment.
  /// *   EXCLUSIVE - endpoints that have attributes matching the values are excluded in the segment.
  /// *   CONTAINS - endpoints that have attributes' substrings match the values are included in the segment.
  /// *   BEFORE - endpoints with attributes read as ISO_INSTANT datetimes before the value are included in the segment.
  /// *   AFTER - endpoints with attributes read as ISO_INSTANT datetimes after the value are included in the segment.
  /// *   ON - endpoints with attributes read as ISO_INSTANT dates on the value are included in the segment. Time is ignored in this comparison.
  /// *   BETWEEN - endpoints with attributes read as ISO_INSTANT datetimes between the values are included in the segment.
  _i2.AttributeType? get attributeType;

  /// The criteria values to use for the segment dimension. Depending on the value of the AttributeType property, endpoints are included or excluded from the segment if their attribute values match the criteria values.
  _i3.BuiltList<String> get values;
  @override
  List<Object?> get props => [
        attributeType,
        values,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttributeDimension');
    helper.add(
      'attributeType',
      attributeType,
    );
    helper.add(
      'values',
      values,
    );
    return helper.toString();
  }
}

class AttributeDimensionRestJson1Serializer
    extends _i4.StructuredSmithySerializer<AttributeDimension> {
  const AttributeDimensionRestJson1Serializer() : super('AttributeDimension');

  @override
  Iterable<Type> get types => const [
        AttributeDimension,
        _$AttributeDimension,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  AttributeDimension deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributeDimensionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AttributeType':
          if (value != null) {
            result.attributeType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AttributeType),
            ) as _i2.AttributeType);
          }
          break;
        case 'Values':
          result.values.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as AttributeDimension);
    final result = <Object?>[
      'Values',
      serializers.serialize(
        payload.values,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ),
    ];
    if (payload.attributeType != null) {
      result
        ..add('AttributeType')
        ..add(serializers.serialize(
          payload.attributeType!,
          specifiedType: const FullType(_i2.AttributeType),
        ));
    }
    return result;
  }
}
