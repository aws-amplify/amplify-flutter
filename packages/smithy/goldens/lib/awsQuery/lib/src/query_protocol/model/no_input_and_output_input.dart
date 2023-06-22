// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v1.query_protocol.model.no_input_and_output_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'no_input_and_output_input.g.dart';

abstract class NoInputAndOutputInput
    with
        _i1.HttpInput<NoInputAndOutputInput>,
        _i2.AWSEquatable<NoInputAndOutputInput>
    implements
        Built<NoInputAndOutputInput, NoInputAndOutputInputBuilder>,
        _i1.EmptyPayload {
  factory NoInputAndOutputInput() {
    return _$NoInputAndOutputInput._();
  }

  factory NoInputAndOutputInput.build(
          [void Function(NoInputAndOutputInputBuilder) updates]) =
      _$NoInputAndOutputInput;

  const NoInputAndOutputInput._();

  factory NoInputAndOutputInput.fromRequest(
    NoInputAndOutputInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<NoInputAndOutputInput>> serializers = [
    NoInputAndOutputInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoInputAndOutputInputBuilder b) {}
  @override
  NoInputAndOutputInput getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NoInputAndOutputInput');
    return helper.toString();
  }
}

class NoInputAndOutputInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<NoInputAndOutputInput> {
  const NoInputAndOutputInputAwsQuerySerializer()
      : super('NoInputAndOutputInput');

  @override
  Iterable<Type> get types => const [
        NoInputAndOutputInput,
        _$NoInputAndOutputInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  NoInputAndOutputInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return NoInputAndOutputInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NoInputAndOutputInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'NoInputAndOutputInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];

    return result$;
  }
}
