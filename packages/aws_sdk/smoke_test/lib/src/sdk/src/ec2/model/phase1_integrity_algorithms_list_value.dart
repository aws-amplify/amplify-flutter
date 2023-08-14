// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.phase1_integrity_algorithms_list_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'phase1_integrity_algorithms_list_value.g.dart';

/// The integrity algorithm for phase 1 IKE negotiations.
abstract class Phase1IntegrityAlgorithmsListValue
    with
        _i1.AWSEquatable<Phase1IntegrityAlgorithmsListValue>
    implements
        Built<Phase1IntegrityAlgorithmsListValue,
            Phase1IntegrityAlgorithmsListValueBuilder> {
  /// The integrity algorithm for phase 1 IKE negotiations.
  factory Phase1IntegrityAlgorithmsListValue({String? value}) {
    return _$Phase1IntegrityAlgorithmsListValue._(value: value);
  }

  /// The integrity algorithm for phase 1 IKE negotiations.
  factory Phase1IntegrityAlgorithmsListValue.build(
          [void Function(Phase1IntegrityAlgorithmsListValueBuilder) updates]) =
      _$Phase1IntegrityAlgorithmsListValue;

  const Phase1IntegrityAlgorithmsListValue._();

  static const List<_i2.SmithySerializer<Phase1IntegrityAlgorithmsListValue>>
      serializers = [Phase1IntegrityAlgorithmsListValueEc2QuerySerializer()];

  /// The value for the integrity algorithm.
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('Phase1IntegrityAlgorithmsListValue')
          ..add(
            'value',
            value,
          );
    return helper.toString();
  }
}

class Phase1IntegrityAlgorithmsListValueEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Phase1IntegrityAlgorithmsListValue> {
  const Phase1IntegrityAlgorithmsListValueEc2QuerySerializer()
      : super('Phase1IntegrityAlgorithmsListValue');

  @override
  Iterable<Type> get types => const [
        Phase1IntegrityAlgorithmsListValue,
        _$Phase1IntegrityAlgorithmsListValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Phase1IntegrityAlgorithmsListValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Phase1IntegrityAlgorithmsListValueBuilder();
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
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Phase1IntegrityAlgorithmsListValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Phase1IntegrityAlgorithmsListValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Phase1IntegrityAlgorithmsListValue(:value) = object;
    if (value != null) {
      result$
        ..add(const _i2.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
