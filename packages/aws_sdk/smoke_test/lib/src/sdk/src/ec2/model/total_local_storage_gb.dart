// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.total_local_storage_gb; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'total_local_storage_gb.g.dart';

/// The minimum and maximum amount of total local storage, in GB.
abstract class TotalLocalStorageGb
    with _i1.AWSEquatable<TotalLocalStorageGb>
    implements Built<TotalLocalStorageGb, TotalLocalStorageGbBuilder> {
  /// The minimum and maximum amount of total local storage, in GB.
  factory TotalLocalStorageGb({
    double? min,
    double? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$TotalLocalStorageGb._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum amount of total local storage, in GB.
  factory TotalLocalStorageGb.build(
          [void Function(TotalLocalStorageGbBuilder) updates]) =
      _$TotalLocalStorageGb;

  const TotalLocalStorageGb._();

  static const List<_i2.SmithySerializer<TotalLocalStorageGb>> serializers = [
    TotalLocalStorageGbEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TotalLocalStorageGbBuilder b) {
    b
      ..min = 0
      ..max = 0;
  }

  /// The minimum amount of total local storage, in GB. If this parameter is not specified, there is no minimum limit.
  double get min;

  /// The maximum amount of total local storage, in GB. If this parameter is not specified, there is no maximum limit.
  double get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TotalLocalStorageGb')
      ..add(
        'min',
        min,
      )
      ..add(
        'max',
        max,
      );
    return helper.toString();
  }
}

class TotalLocalStorageGbEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TotalLocalStorageGb> {
  const TotalLocalStorageGbEc2QuerySerializer() : super('TotalLocalStorageGb');

  @override
  Iterable<Type> get types => const [
        TotalLocalStorageGb,
        _$TotalLocalStorageGb,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TotalLocalStorageGb deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TotalLocalStorageGbBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'min':
          result.min = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'max':
          result.max = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TotalLocalStorageGb object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TotalLocalStorageGbResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TotalLocalStorageGb(:min, :max) = object;
    result$
      ..add(const _i2.XmlElementName('Min'))
      ..add(serializers.serialize(
        min,
        specifiedType: const FullType(double),
      ));
    result$
      ..add(const _i2.XmlElementName('Max'))
      ..add(serializers.serialize(
        max,
        specifiedType: const FullType(double),
      ));
    return result$;
  }
}
