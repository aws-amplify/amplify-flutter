// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_1_v1.json_protocol.model.union_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_json1_1_v1/src/json_protocol/model/my_union.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'union_input_output.g.dart';

/// A shared structure that contains a single union member.
abstract class UnionInputOutput
    with _i1.HttpInput<UnionInputOutput>, _i2.AWSEquatable<UnionInputOutput>
    implements Built<UnionInputOutput, UnionInputOutputBuilder> {
  /// A shared structure that contains a single union member.
  factory UnionInputOutput({_i3.MyUnion? contents}) {
    return _$UnionInputOutput._(contents: contents);
  }

  /// A shared structure that contains a single union member.
  factory UnionInputOutput.build(
      [void Function(UnionInputOutputBuilder) updates]) = _$UnionInputOutput;

  const UnionInputOutput._();

  factory UnionInputOutput.fromRequest(
    UnionInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [UnionInputOutput] from a [payload] and [response].
  factory UnionInputOutput.fromResponse(
    UnionInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<UnionInputOutput>> serializers = [
    UnionInputOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnionInputOutputBuilder b) {}

  /// A union with a representative set of types for members.
  _i3.MyUnion? get contents;
  @override
  UnionInputOutput getPayload() => this;
  @override
  List<Object?> get props => [contents];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UnionInputOutput')
      ..add(
        'contents',
        contents,
      );
    return helper.toString();
  }
}

class UnionInputOutputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<UnionInputOutput> {
  const UnionInputOutputAwsJson11Serializer() : super('UnionInputOutput');

  @override
  Iterable<Type> get types => const [
        UnionInputOutput,
        _$UnionInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  UnionInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnionInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'contents':
          result.contents = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.MyUnion),
          ) as _i3.MyUnion);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UnionInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UnionInputOutput(:contents) = object;
    if (contents != null) {
      result$
        ..add('contents')
        ..add(serializers.serialize(
          contents,
          specifiedType: const FullType(_i3.MyUnion),
        ));
    }
    return result$;
  }
}
