// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library ec2_query_v1.ec2_protocol.model.no_input_and_output_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_input_and_output_output.g.dart';

abstract class NoInputAndOutputOutput
    with _i1.AWSEquatable<NoInputAndOutputOutput>
    implements
        Built<NoInputAndOutputOutput, NoInputAndOutputOutputBuilder>,
        _i2.EmptyPayload {
  factory NoInputAndOutputOutput() {
    return _$NoInputAndOutputOutput._();
  }

  factory NoInputAndOutputOutput.build(
          [void Function(NoInputAndOutputOutputBuilder) updates]) =
      _$NoInputAndOutputOutput;

  const NoInputAndOutputOutput._();

  /// Constructs a [NoInputAndOutputOutput] from a [payload] and [response].
  factory NoInputAndOutputOutput.fromResponse(
    NoInputAndOutputOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<NoInputAndOutputOutput>> serializers =
      [NoInputAndOutputOutputEc2QuerySerializer()];

  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NoInputAndOutputOutput');
    return helper.toString();
  }
}

class NoInputAndOutputOutputEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NoInputAndOutputOutput> {
  const NoInputAndOutputOutputEc2QuerySerializer()
      : super('NoInputAndOutputOutput');

  @override
  Iterable<Type> get types => const [
        NoInputAndOutputOutput,
        _$NoInputAndOutputOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NoInputAndOutputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return NoInputAndOutputOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NoInputAndOutputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NoInputAndOutputOutputResponse',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];

    return result$;
  }
}
