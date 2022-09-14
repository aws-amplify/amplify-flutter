// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.http_checksum_required_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_checksum_required_input_output.g.dart';

abstract class HttpChecksumRequiredInputOutput
    with
        _i1.HttpInput<HttpChecksumRequiredInputOutput>,
        _i2.AWSEquatable<HttpChecksumRequiredInputOutput>
    implements
        Built<HttpChecksumRequiredInputOutput,
            HttpChecksumRequiredInputOutputBuilder> {
  factory HttpChecksumRequiredInputOutput({String? foo}) {
    return _$HttpChecksumRequiredInputOutput._(foo: foo);
  }

  factory HttpChecksumRequiredInputOutput.build(
          [void Function(HttpChecksumRequiredInputOutputBuilder) updates]) =
      _$HttpChecksumRequiredInputOutput;

  const HttpChecksumRequiredInputOutput._();

  factory HttpChecksumRequiredInputOutput.fromRequest(
          HttpChecksumRequiredInputOutput payload,
          _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  /// Constructs a [HttpChecksumRequiredInputOutput] from a [payload] and [response].
  factory HttpChecksumRequiredInputOutput.fromResponse(
          HttpChecksumRequiredInputOutput payload,
          _i2.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    HttpChecksumRequiredInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpChecksumRequiredInputOutputBuilder b) {}
  String? get foo;
  @override
  HttpChecksumRequiredInputOutput getPayload() => this;
  @override
  List<Object?> get props => [foo];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpChecksumRequiredInputOutput');
    helper.add('foo', foo);
    return helper.toString();
  }
}

class HttpChecksumRequiredInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<HttpChecksumRequiredInputOutput> {
  const HttpChecksumRequiredInputOutputRestJson1Serializer()
      : super('HttpChecksumRequiredInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpChecksumRequiredInputOutput,
        _$HttpChecksumRequiredInputOutput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpChecksumRequiredInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = HttpChecksumRequiredInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as HttpChecksumRequiredInputOutput);
    final result = <Object?>[];
    if (payload.foo != null) {
      result
        ..add('foo')
        ..add(serializers.serialize(payload.foo!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
