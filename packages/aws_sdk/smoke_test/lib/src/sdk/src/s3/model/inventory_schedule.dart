// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.inventory_schedule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_frequency.dart';

part 'inventory_schedule.g.dart';

/// Specifies the schedule for generating inventory results.
abstract class InventorySchedule
    with _i1.AWSEquatable<InventorySchedule>
    implements Built<InventorySchedule, InventoryScheduleBuilder> {
  /// Specifies the schedule for generating inventory results.
  factory InventorySchedule({required InventoryFrequency frequency}) {
    return _$InventorySchedule._(frequency: frequency);
  }

  /// Specifies the schedule for generating inventory results.
  factory InventorySchedule.build(
      [void Function(InventoryScheduleBuilder) updates]) = _$InventorySchedule;

  const InventorySchedule._();

  static const List<_i2.SmithySerializer<InventorySchedule>> serializers = [
    InventoryScheduleRestXmlSerializer()
  ];

  /// Specifies how frequently inventory results are produced.
  InventoryFrequency get frequency;
  @override
  List<Object?> get props => [frequency];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InventorySchedule')
      ..add(
        'frequency',
        frequency,
      );
    return helper.toString();
  }
}

class InventoryScheduleRestXmlSerializer
    extends _i2.StructuredSmithySerializer<InventorySchedule> {
  const InventoryScheduleRestXmlSerializer() : super('InventorySchedule');

  @override
  Iterable<Type> get types => const [
        InventorySchedule,
        _$InventorySchedule,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  InventorySchedule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InventoryScheduleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Frequency':
          result.frequency = (serializers.deserialize(
            value,
            specifiedType: const FullType(InventoryFrequency),
          ) as InventoryFrequency);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InventorySchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InventorySchedule',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final InventorySchedule(:frequency) = object;
    result$
      ..add(const _i2.XmlElementName('Frequency'))
      ..add(serializers.serialize(
        frequency,
        specifiedType: const FullType(InventoryFrequency),
      ));
    return result$;
  }
}
