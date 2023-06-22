// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.replica; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'replica.g.dart';

/// Represents the properties of a replica.
abstract class Replica
    with _i1.AWSEquatable<Replica>
    implements Built<Replica, ReplicaBuilder> {
  /// Represents the properties of a replica.
  factory Replica({String? regionName}) {
    return _$Replica._(regionName: regionName);
  }

  /// Represents the properties of a replica.
  factory Replica.build([void Function(ReplicaBuilder) updates]) = _$Replica;

  const Replica._();

  static const List<_i2.SmithySerializer<Replica>> serializers = [
    ReplicaAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaBuilder b) {}

  /// The Region where the replica needs to be created.
  String? get regionName;
  @override
  List<Object?> get props => [regionName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Replica')
      ..add(
        'regionName',
        regionName,
      );
    return helper.toString();
  }
}

class ReplicaAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<Replica> {
  const ReplicaAwsJson10Serializer() : super('Replica');

  @override
  Iterable<Type> get types => const [
        Replica,
        _$Replica,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  Replica deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RegionName':
          result.regionName = (serializers.deserialize(
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
    Replica object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Replica(:regionName) = object;
    if (regionName != null) {
      result$
        ..add('RegionName')
        ..add(serializers.serialize(
          regionName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
