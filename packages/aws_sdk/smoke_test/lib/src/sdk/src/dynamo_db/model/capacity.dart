// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.capacity; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'capacity.g.dart';

/// Represents the amount of provisioned throughput capacity consumed on a table or an index.
abstract class Capacity
    with _i1.AWSEquatable<Capacity>
    implements Built<Capacity, CapacityBuilder> {
  /// Represents the amount of provisioned throughput capacity consumed on a table or an index.
  factory Capacity({
    double? readCapacityUnits,
    double? writeCapacityUnits,
    double? capacityUnits,
  }) {
    return _$Capacity._(
      readCapacityUnits: readCapacityUnits,
      writeCapacityUnits: writeCapacityUnits,
      capacityUnits: capacityUnits,
    );
  }

  /// Represents the amount of provisioned throughput capacity consumed on a table or an index.
  factory Capacity.build([void Function(CapacityBuilder) updates]) = _$Capacity;

  const Capacity._();

  static const List<_i2.SmithySerializer<Capacity>> serializers = [
    CapacityAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CapacityBuilder b) {}

  /// The total number of read capacity units consumed on a table or an index.
  double? get readCapacityUnits;

  /// The total number of write capacity units consumed on a table or an index.
  double? get writeCapacityUnits;

  /// The total number of capacity units consumed on a table or an index.
  double? get capacityUnits;
  @override
  List<Object?> get props => [
        readCapacityUnits,
        writeCapacityUnits,
        capacityUnits,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Capacity')
      ..add(
        'readCapacityUnits',
        readCapacityUnits,
      )
      ..add(
        'writeCapacityUnits',
        writeCapacityUnits,
      )
      ..add(
        'capacityUnits',
        capacityUnits,
      );
    return helper.toString();
  }
}

class CapacityAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<Capacity> {
  const CapacityAwsJson10Serializer() : super('Capacity');

  @override
  Iterable<Type> get types => const [
        Capacity,
        _$Capacity,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  Capacity deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ReadCapacityUnits':
          result.readCapacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'WriteCapacityUnits':
          result.writeCapacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'CapacityUnits':
          result.capacityUnits = (serializers.deserialize(
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
    Capacity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Capacity(:readCapacityUnits, :writeCapacityUnits, :capacityUnits) =
        object;
    if (readCapacityUnits != null) {
      result$
        ..add('ReadCapacityUnits')
        ..add(serializers.serialize(
          readCapacityUnits,
          specifiedType: const FullType(double),
        ));
    }
    if (writeCapacityUnits != null) {
      result$
        ..add('WriteCapacityUnits')
        ..add(serializers.serialize(
          writeCapacityUnits,
          specifiedType: const FullType(double),
        ));
    }
    if (capacityUnits != null) {
      result$
        ..add('CapacityUnits')
        ..add(serializers.serialize(
          capacityUnits,
          specifiedType: const FullType(double),
        ));
    }
    return result$;
  }
}
