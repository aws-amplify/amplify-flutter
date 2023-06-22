// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_protocol.model.http_request_with_greedy_label_in_path_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'http_request_with_greedy_label_in_path_input.g.dart';

abstract class HttpRequestWithGreedyLabelInPathInput
    with
        _i1.HttpInput<HttpRequestWithGreedyLabelInPathInputPayload>,
        _i2.AWSEquatable<HttpRequestWithGreedyLabelInPathInput>
    implements
        Built<HttpRequestWithGreedyLabelInPathInput,
            HttpRequestWithGreedyLabelInPathInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HttpRequestWithGreedyLabelInPathInputPayload> {
  factory HttpRequestWithGreedyLabelInPathInput({
    required String foo,
    required String baz,
  }) {
    return _$HttpRequestWithGreedyLabelInPathInput._(
      foo: foo,
      baz: baz,
    );
  }

  factory HttpRequestWithGreedyLabelInPathInput.build(
      [void Function(HttpRequestWithGreedyLabelInPathInputBuilder)
          updates]) = _$HttpRequestWithGreedyLabelInPathInput;

  const HttpRequestWithGreedyLabelInPathInput._();

  factory HttpRequestWithGreedyLabelInPathInput.fromRequest(
    HttpRequestWithGreedyLabelInPathInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpRequestWithGreedyLabelInPathInput.build((b) {
        if (labels['foo'] != null) {
          b.foo = labels['foo']!;
        }
        if (labels['baz'] != null) {
          b.baz = labels['baz']!;
        }
      });

  static const List<
          _i1.SmithySerializer<HttpRequestWithGreedyLabelInPathInputPayload>>
      serializers = [
    HttpRequestWithGreedyLabelInPathInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithGreedyLabelInPathInputBuilder b) {}
  String get foo;
  String get baz;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'foo':
        return foo;
      case 'baz':
        return baz;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  HttpRequestWithGreedyLabelInPathInputPayload getPayload() =>
      HttpRequestWithGreedyLabelInPathInputPayload();
  @override
  List<Object?> get props => [
        foo,
        baz,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpRequestWithGreedyLabelInPathInput')
          ..add(
            'foo',
            foo,
          )
          ..add(
            'baz',
            baz,
          );
    return helper.toString();
  }
}

@_i3.internal
abstract class HttpRequestWithGreedyLabelInPathInputPayload
    with
        _i2.AWSEquatable<HttpRequestWithGreedyLabelInPathInputPayload>
    implements
        Built<HttpRequestWithGreedyLabelInPathInputPayload,
            HttpRequestWithGreedyLabelInPathInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpRequestWithGreedyLabelInPathInputPayload(
      [void Function(HttpRequestWithGreedyLabelInPathInputPayloadBuilder)
          updates]) = _$HttpRequestWithGreedyLabelInPathInputPayload;

  const HttpRequestWithGreedyLabelInPathInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithGreedyLabelInPathInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'HttpRequestWithGreedyLabelInPathInputPayload');
    return helper.toString();
  }
}

class HttpRequestWithGreedyLabelInPathInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<HttpRequestWithGreedyLabelInPathInputPayload> {
  const HttpRequestWithGreedyLabelInPathInputRestJson1Serializer()
      : super('HttpRequestWithGreedyLabelInPathInput');

  @override
  Iterable<Type> get types => const [
        HttpRequestWithGreedyLabelInPathInput,
        _$HttpRequestWithGreedyLabelInPathInput,
        HttpRequestWithGreedyLabelInPathInputPayload,
        _$HttpRequestWithGreedyLabelInPathInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  HttpRequestWithGreedyLabelInPathInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return HttpRequestWithGreedyLabelInPathInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HttpRequestWithGreedyLabelInPathInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
