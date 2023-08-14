// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.phase2_dh_group_numbers_list_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'phase2_dh_group_numbers_list_value.g.dart';

/// The Diffie-Hellmann group number for phase 2 IKE negotiations.
abstract class Phase2DhGroupNumbersListValue
    with
        _i1.AWSEquatable<Phase2DhGroupNumbersListValue>
    implements
        Built<Phase2DhGroupNumbersListValue,
            Phase2DhGroupNumbersListValueBuilder> {
  /// The Diffie-Hellmann group number for phase 2 IKE negotiations.
  factory Phase2DhGroupNumbersListValue({int? value}) {
    value ??= 0;
    return _$Phase2DhGroupNumbersListValue._(value: value);
  }

  /// The Diffie-Hellmann group number for phase 2 IKE negotiations.
  factory Phase2DhGroupNumbersListValue.build(
          [void Function(Phase2DhGroupNumbersListValueBuilder) updates]) =
      _$Phase2DhGroupNumbersListValue;

  const Phase2DhGroupNumbersListValue._();

  static const List<_i2.SmithySerializer<Phase2DhGroupNumbersListValue>>
      serializers = [Phase2DhGroupNumbersListValueEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Phase2DhGroupNumbersListValueBuilder b) {
    b.value = 0;
  }

  /// The Diffie-Hellmann group number.
  int get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Phase2DhGroupNumbersListValue')
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class Phase2DhGroupNumbersListValueEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Phase2DhGroupNumbersListValue> {
  const Phase2DhGroupNumbersListValueEc2QuerySerializer()
      : super('Phase2DhGroupNumbersListValue');

  @override
  Iterable<Type> get types => const [
        Phase2DhGroupNumbersListValue,
        _$Phase2DhGroupNumbersListValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Phase2DhGroupNumbersListValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Phase2DhGroupNumbersListValueBuilder();
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
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Phase2DhGroupNumbersListValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Phase2DhGroupNumbersListValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Phase2DhGroupNumbersListValue(:value) = object;
    result$
      ..add(const _i2.XmlElementName('Value'))
      ..add(serializers.serialize(
        value,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
