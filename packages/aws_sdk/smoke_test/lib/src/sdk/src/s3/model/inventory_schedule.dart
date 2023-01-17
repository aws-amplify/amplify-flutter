// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.inventory_schedule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_frequency.dart'
    as _i2;

part 'inventory_schedule.g.dart';

/// Specifies the schedule for generating inventory results.
abstract class InventorySchedule
    with _i1.AWSEquatable<InventorySchedule>
    implements Built<InventorySchedule, InventoryScheduleBuilder> {
  /// Specifies the schedule for generating inventory results.
  factory InventorySchedule({required _i2.InventoryFrequency frequency}) {
    return _$InventorySchedule._(frequency: frequency);
  }

  /// Specifies the schedule for generating inventory results.
  factory InventorySchedule.build(
      [void Function(InventoryScheduleBuilder) updates]) = _$InventorySchedule;

  const InventorySchedule._();

  static const List<_i3.SmithySerializer> serializers = [
    InventoryScheduleRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InventoryScheduleBuilder b) {}

  /// Specifies how frequently inventory results are produced.
  _i2.InventoryFrequency get frequency;
  @override
  List<Object?> get props => [frequency];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InventorySchedule');
    helper.add(
      'frequency',
      frequency,
    );
    return helper.toString();
  }
}

class InventoryScheduleRestXmlSerializer
    extends _i3.StructuredSmithySerializer<InventorySchedule> {
  const InventoryScheduleRestXmlSerializer() : super('InventorySchedule');

  @override
  Iterable<Type> get types => const [
        InventorySchedule,
        _$InventorySchedule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Frequency':
          result.frequency = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.InventoryFrequency),
          ) as _i2.InventoryFrequency);
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
    final payload = (object as InventorySchedule);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InventorySchedule',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('Frequency'))
      ..add(serializers.serialize(
        payload.frequency,
        specifiedType: const FullType.nullable(_i2.InventoryFrequency),
      ));
    return result;
  }
}
