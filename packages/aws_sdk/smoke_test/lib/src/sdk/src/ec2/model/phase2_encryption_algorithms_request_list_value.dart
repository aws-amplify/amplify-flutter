// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.phase2_encryption_algorithms_request_list_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'phase2_encryption_algorithms_request_list_value.g.dart';

/// Specifies the encryption algorithm for the VPN tunnel for phase 2 IKE negotiations.
abstract class Phase2EncryptionAlgorithmsRequestListValue
    with
        _i1.AWSEquatable<Phase2EncryptionAlgorithmsRequestListValue>
    implements
        Built<Phase2EncryptionAlgorithmsRequestListValue,
            Phase2EncryptionAlgorithmsRequestListValueBuilder> {
  /// Specifies the encryption algorithm for the VPN tunnel for phase 2 IKE negotiations.
  factory Phase2EncryptionAlgorithmsRequestListValue({String? value}) {
    return _$Phase2EncryptionAlgorithmsRequestListValue._(value: value);
  }

  /// Specifies the encryption algorithm for the VPN tunnel for phase 2 IKE negotiations.
  factory Phase2EncryptionAlgorithmsRequestListValue.build(
      [void Function(Phase2EncryptionAlgorithmsRequestListValueBuilder)
          updates]) = _$Phase2EncryptionAlgorithmsRequestListValue;

  const Phase2EncryptionAlgorithmsRequestListValue._();

  static const List<
          _i2.SmithySerializer<Phase2EncryptionAlgorithmsRequestListValue>>
      serializers = [
    Phase2EncryptionAlgorithmsRequestListValueEc2QuerySerializer()
  ];

  /// The encryption algorithm.
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'Phase2EncryptionAlgorithmsRequestListValue')
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class Phase2EncryptionAlgorithmsRequestListValueEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<Phase2EncryptionAlgorithmsRequestListValue> {
  const Phase2EncryptionAlgorithmsRequestListValueEc2QuerySerializer()
      : super('Phase2EncryptionAlgorithmsRequestListValue');

  @override
  Iterable<Type> get types => const [
        Phase2EncryptionAlgorithmsRequestListValue,
        _$Phase2EncryptionAlgorithmsRequestListValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Phase2EncryptionAlgorithmsRequestListValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Phase2EncryptionAlgorithmsRequestListValueBuilder();
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
    Phase2EncryptionAlgorithmsRequestListValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Phase2EncryptionAlgorithmsRequestListValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Phase2EncryptionAlgorithmsRequestListValue(:value) = object;
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
