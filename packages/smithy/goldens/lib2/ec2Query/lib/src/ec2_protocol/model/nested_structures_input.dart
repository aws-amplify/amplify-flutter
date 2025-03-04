// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library ec2_query_v2.ec2_protocol.model.nested_structures_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/struct_arg.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'nested_structures_input.g.dart';

abstract class NestedStructuresInput
    with
        _i1.HttpInput<NestedStructuresInput>,
        _i2.AWSEquatable<NestedStructuresInput>
    implements Built<NestedStructuresInput, NestedStructuresInputBuilder> {
  factory NestedStructuresInput({StructArg? nested}) {
    return _$NestedStructuresInput._(nested: nested);
  }

  factory NestedStructuresInput.build(
          [void Function(NestedStructuresInputBuilder) updates]) =
      _$NestedStructuresInput;

  const NestedStructuresInput._();

  factory NestedStructuresInput.fromRequest(
    NestedStructuresInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<NestedStructuresInput>> serializers = [
    NestedStructuresInputEc2QuerySerializer()
  ];

  StructArg? get nested;
  @override
  NestedStructuresInput getPayload() => this;

  @override
  List<Object?> get props => [nested];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NestedStructuresInput')
      ..add(
        'nested',
        nested,
      );
    return helper.toString();
  }
}

class NestedStructuresInputEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<NestedStructuresInput> {
  const NestedStructuresInputEc2QuerySerializer()
      : super('NestedStructuresInput');

  @override
  Iterable<Type> get types => const [
        NestedStructuresInput,
        _$NestedStructuresInput,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];

  @override
  NestedStructuresInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedStructuresInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StructArg),
          ) as StructArg));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NestedStructuresInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'NestedStructuresInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    final NestedStructuresInput(:nested) = object;
    if (nested != null) {
      result$
        ..add(const _i1.XmlElementName('Nested'))
        ..add(serializers.serialize(
          nested,
          specifiedType: const FullType(StructArg),
        ));
    }
    return result$;
  }
}
