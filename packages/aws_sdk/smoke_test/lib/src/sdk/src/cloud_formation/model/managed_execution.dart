// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.managed_execution; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'managed_execution.g.dart';

/// Describes whether StackSets performs non-conflicting operations concurrently and queues conflicting operations.
abstract class ManagedExecution
    with _i1.AWSEquatable<ManagedExecution>
    implements Built<ManagedExecution, ManagedExecutionBuilder> {
  /// Describes whether StackSets performs non-conflicting operations concurrently and queues conflicting operations.
  factory ManagedExecution({bool? active}) {
    return _$ManagedExecution._(active: active);
  }

  /// Describes whether StackSets performs non-conflicting operations concurrently and queues conflicting operations.
  factory ManagedExecution.build(
      [void Function(ManagedExecutionBuilder) updates]) = _$ManagedExecution;

  const ManagedExecution._();

  static const List<_i2.SmithySerializer<ManagedExecution>> serializers = [
    ManagedExecutionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ManagedExecutionBuilder b) {}

  /// When `true`, StackSets performs non-conflicting operations concurrently and queues conflicting operations. After conflicting operations finish, StackSets starts queued operations in request order.
  ///
  /// If there are already running or queued operations, StackSets queues all incoming operations even if they are non-conflicting.
  ///
  /// You can't modify your stack set's execution configuration while there are running or queued operations for that stack set.
  ///
  /// When `false` (default), StackSets performs one operation at a time in request order.
  bool? get active;
  @override
  List<Object?> get props => [active];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ManagedExecution')
      ..add(
        'active',
        active,
      );
    return helper.toString();
  }
}

class ManagedExecutionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ManagedExecution> {
  const ManagedExecutionAwsQuerySerializer() : super('ManagedExecution');

  @override
  Iterable<Type> get types => const [
        ManagedExecution,
        _$ManagedExecution,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ManagedExecution deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ManagedExecutionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Active':
          result.active = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ManagedExecution object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ManagedExecutionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ManagedExecution(:active) = object;
    if (active != null) {
      result$
        ..add(const _i2.XmlElementName('Active'))
        ..add(serializers.serialize(
          active,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
