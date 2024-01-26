// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_protocol.model.json_blobs_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'json_blobs_input_output.g.dart';

abstract class JsonBlobsInputOutput
    with
        _i1.HttpInput<JsonBlobsInputOutput>,
        _i2.AWSEquatable<JsonBlobsInputOutput>
    implements Built<JsonBlobsInputOutput, JsonBlobsInputOutputBuilder> {
  factory JsonBlobsInputOutput({_i3.Uint8List? data}) {
    return _$JsonBlobsInputOutput._(data: data);
  }

  factory JsonBlobsInputOutput.build(
          [void Function(JsonBlobsInputOutputBuilder) updates]) =
      _$JsonBlobsInputOutput;

  const JsonBlobsInputOutput._();

  factory JsonBlobsInputOutput.fromRequest(
    JsonBlobsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [JsonBlobsInputOutput] from a [payload] and [response].
  factory JsonBlobsInputOutput.fromResponse(
    JsonBlobsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<JsonBlobsInputOutput>> serializers = [
    JsonBlobsInputOutputRestJson1Serializer()
  ];

  _i3.Uint8List? get data;
  @override
  JsonBlobsInputOutput getPayload() => this;

  @override
  List<Object?> get props => [data];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonBlobsInputOutput')
      ..add(
        'data',
        data,
      );
    return helper.toString();
  }
}

class JsonBlobsInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<JsonBlobsInputOutput> {
  const JsonBlobsInputOutputRestJson1Serializer()
      : super('JsonBlobsInputOutput');

  @override
  Iterable<Type> get types => const [
        JsonBlobsInputOutput,
        _$JsonBlobsInputOutput,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  JsonBlobsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonBlobsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'data':
          result.data = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Uint8List),
          ) as _i3.Uint8List);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonBlobsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final JsonBlobsInputOutput(:data) = object;
    if (data != null) {
      result$
        ..add('data')
        ..add(serializers.serialize(
          data,
          specifiedType: const FullType(_i3.Uint8List),
        ));
    }
    return result$;
  }
}
