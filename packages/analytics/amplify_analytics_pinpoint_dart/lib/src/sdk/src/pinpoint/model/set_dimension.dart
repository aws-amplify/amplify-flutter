// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.set_dimension; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/dimension_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'set_dimension.g.dart';

/// Specifies the dimension type and values for a segment dimension.
abstract class SetDimension
    with _i1.AWSEquatable<SetDimension>
    implements Built<SetDimension, SetDimensionBuilder> {
  /// Specifies the dimension type and values for a segment dimension.
  factory SetDimension({
    _i2.DimensionType? dimensionType,
    required List<String> values,
  }) {
    return _$SetDimension._(
      dimensionType: dimensionType,
      values: _i3.BuiltList(values),
    );
  }

  /// Specifies the dimension type and values for a segment dimension.
  factory SetDimension.build([void Function(SetDimensionBuilder) updates]) =
      _$SetDimension;

  const SetDimension._();

  static const List<_i4.SmithySerializer> serializers = [
    SetDimensionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SetDimensionBuilder b) {}

  /// The type of segment dimension to use. Valid values are: INCLUSIVE, endpoints that match the criteria are included in the segment; and, EXCLUSIVE, endpoints that match the criteria are excluded from the segment.
  _i2.DimensionType? get dimensionType;

  /// The criteria values to use for the segment dimension. Depending on the value of the DimensionType property, endpoints are included or excluded from the segment if their values match the criteria values.
  _i3.BuiltList<String> get values;
  @override
  List<Object?> get props => [
        dimensionType,
        values,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SetDimension');
    helper.add(
      'dimensionType',
      dimensionType,
    );
    helper.add(
      'values',
      values,
    );
    return helper.toString();
  }
}

class SetDimensionRestJson1Serializer
    extends _i4.StructuredSmithySerializer<SetDimension> {
  const SetDimensionRestJson1Serializer() : super('SetDimension');

  @override
  Iterable<Type> get types => const [
        SetDimension,
        _$SetDimension,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  SetDimension deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetDimensionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'DimensionType':
          if (value != null) {
            result.dimensionType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DimensionType),
            ) as _i2.DimensionType);
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
    final payload = (object as SetDimension);
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
    if (payload.dimensionType != null) {
      result
        ..add('DimensionType')
        ..add(serializers.serialize(
          payload.dimensionType!,
          specifiedType: const FullType(_i2.DimensionType),
        ));
    }
    return result;
  }
}
