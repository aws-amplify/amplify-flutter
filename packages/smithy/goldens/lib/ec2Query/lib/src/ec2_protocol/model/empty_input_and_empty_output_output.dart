// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library ec2_query_v1.ec2_protocol.model.empty_input_and_empty_output_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'empty_input_and_empty_output_output.g.dart';

abstract class EmptyInputAndEmptyOutputOutput
    with _i1.AWSEquatable<EmptyInputAndEmptyOutputOutput>
    implements
        Built<
          EmptyInputAndEmptyOutputOutput,
          EmptyInputAndEmptyOutputOutputBuilder
        >,
        _i2.EmptyPayload {
  factory EmptyInputAndEmptyOutputOutput() {
    return _$EmptyInputAndEmptyOutputOutput._();
  }

  factory EmptyInputAndEmptyOutputOutput.build([
    void Function(EmptyInputAndEmptyOutputOutputBuilder) updates,
  ]) = _$EmptyInputAndEmptyOutputOutput;

  const EmptyInputAndEmptyOutputOutput._();

  /// Constructs a [EmptyInputAndEmptyOutputOutput] from a [payload] and [response].
  factory EmptyInputAndEmptyOutputOutput.fromResponse(
    EmptyInputAndEmptyOutputOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i2.SmithySerializer<EmptyInputAndEmptyOutputOutput>>
  serializers = [EmptyInputAndEmptyOutputOutputEc2QuerySerializer()];

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
      'EmptyInputAndEmptyOutputOutput',
    );
    return helper.toString();
  }
}

class EmptyInputAndEmptyOutputOutputEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<EmptyInputAndEmptyOutputOutput> {
  const EmptyInputAndEmptyOutputOutputEc2QuerySerializer()
    : super('EmptyInputAndEmptyOutputOutput');

  @override
  Iterable<Type> get types => const [
    EmptyInputAndEmptyOutputOutput,
    _$EmptyInputAndEmptyOutputOutput,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
  ];

  @override
  EmptyInputAndEmptyOutputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return EmptyInputAndEmptyOutputOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EmptyInputAndEmptyOutputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EmptyInputAndEmptyOutputOutputResponse',
        _i2.XmlNamespace('https://example.com/'),
      ),
    ];

    return result$;
  }
}
