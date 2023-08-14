// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.phase1_dh_group_numbers_request_list_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'phase1_dh_group_numbers_request_list_value.g.dart';

/// Specifies a Diffie-Hellman group number for the VPN tunnel for phase 1 IKE negotiations.
abstract class Phase1DhGroupNumbersRequestListValue
    with
        _i1.AWSEquatable<Phase1DhGroupNumbersRequestListValue>
    implements
        Built<Phase1DhGroupNumbersRequestListValue,
            Phase1DhGroupNumbersRequestListValueBuilder> {
  /// Specifies a Diffie-Hellman group number for the VPN tunnel for phase 1 IKE negotiations.
  factory Phase1DhGroupNumbersRequestListValue({int? value}) {
    value ??= 0;
    return _$Phase1DhGroupNumbersRequestListValue._(value: value);
  }

  /// Specifies a Diffie-Hellman group number for the VPN tunnel for phase 1 IKE negotiations.
  factory Phase1DhGroupNumbersRequestListValue.build(
      [void Function(Phase1DhGroupNumbersRequestListValueBuilder)
          updates]) = _$Phase1DhGroupNumbersRequestListValue;

  const Phase1DhGroupNumbersRequestListValue._();

  static const List<_i2.SmithySerializer<Phase1DhGroupNumbersRequestListValue>>
      serializers = [Phase1DhGroupNumbersRequestListValueEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Phase1DhGroupNumbersRequestListValueBuilder b) {
    b.value = 0;
  }

  /// The Diffie-Hellmann group number.
  int get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('Phase1DhGroupNumbersRequestListValue')
          ..add(
            'value',
            value,
          );
    return helper.toString();
  }
}

class Phase1DhGroupNumbersRequestListValueEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<Phase1DhGroupNumbersRequestListValue> {
  const Phase1DhGroupNumbersRequestListValueEc2QuerySerializer()
      : super('Phase1DhGroupNumbersRequestListValue');

  @override
  Iterable<Type> get types => const [
        Phase1DhGroupNumbersRequestListValue,
        _$Phase1DhGroupNumbersRequestListValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Phase1DhGroupNumbersRequestListValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Phase1DhGroupNumbersRequestListValueBuilder();
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
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Phase1DhGroupNumbersRequestListValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Phase1DhGroupNumbersRequestListValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Phase1DhGroupNumbersRequestListValue(:value) = object;
    result$
      ..add(const _i2.XmlElementName('Value'))
      ..add(serializers.serialize(
        value,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
