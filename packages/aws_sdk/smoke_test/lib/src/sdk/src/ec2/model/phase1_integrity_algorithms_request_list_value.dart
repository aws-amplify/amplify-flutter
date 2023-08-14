// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.phase1_integrity_algorithms_request_list_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'phase1_integrity_algorithms_request_list_value.g.dart';

/// Specifies the integrity algorithm for the VPN tunnel for phase 1 IKE negotiations.
abstract class Phase1IntegrityAlgorithmsRequestListValue
    with
        _i1.AWSEquatable<Phase1IntegrityAlgorithmsRequestListValue>
    implements
        Built<Phase1IntegrityAlgorithmsRequestListValue,
            Phase1IntegrityAlgorithmsRequestListValueBuilder> {
  /// Specifies the integrity algorithm for the VPN tunnel for phase 1 IKE negotiations.
  factory Phase1IntegrityAlgorithmsRequestListValue({String? value}) {
    return _$Phase1IntegrityAlgorithmsRequestListValue._(value: value);
  }

  /// Specifies the integrity algorithm for the VPN tunnel for phase 1 IKE negotiations.
  factory Phase1IntegrityAlgorithmsRequestListValue.build(
      [void Function(Phase1IntegrityAlgorithmsRequestListValueBuilder)
          updates]) = _$Phase1IntegrityAlgorithmsRequestListValue;

  const Phase1IntegrityAlgorithmsRequestListValue._();

  static const List<
          _i2.SmithySerializer<Phase1IntegrityAlgorithmsRequestListValue>>
      serializers = [
    Phase1IntegrityAlgorithmsRequestListValueEc2QuerySerializer()
  ];

  /// The value for the integrity algorithm.
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('Phase1IntegrityAlgorithmsRequestListValue')
          ..add(
            'value',
            value,
          );
    return helper.toString();
  }
}

class Phase1IntegrityAlgorithmsRequestListValueEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<Phase1IntegrityAlgorithmsRequestListValue> {
  const Phase1IntegrityAlgorithmsRequestListValueEc2QuerySerializer()
      : super('Phase1IntegrityAlgorithmsRequestListValue');

  @override
  Iterable<Type> get types => const [
        Phase1IntegrityAlgorithmsRequestListValue,
        _$Phase1IntegrityAlgorithmsRequestListValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Phase1IntegrityAlgorithmsRequestListValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Phase1IntegrityAlgorithmsRequestListValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Value':
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
    Phase1IntegrityAlgorithmsRequestListValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Phase1IntegrityAlgorithmsRequestListValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Phase1IntegrityAlgorithmsRequestListValue(:value) = object;
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
