// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.complex_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:rest_json1_v1/src/rest_json_protocol/model/complex_nested_error_data.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'complex_error.g.dart';

/// This error is thrown when a request is invalid.
abstract class ComplexError
    with _i1.AWSEquatable<ComplexError>
    implements
        Built<ComplexError, ComplexErrorBuilder>,
        _i2.HasPayload<ComplexErrorPayload>,
        _i2.SmithyHttpException {
  /// This error is thrown when a request is invalid.
  factory ComplexError(
      {String? header, _i3.ComplexNestedErrorData? nested, String? topLevel}) {
    return _$ComplexError._(header: header, nested: nested, topLevel: topLevel);
  }

  /// This error is thrown when a request is invalid.
  factory ComplexError.build([void Function(ComplexErrorBuilder) updates]) =
      _$ComplexError;

  const ComplexError._();

  /// Constructs a [ComplexError] from a [payload] and [response].
  factory ComplexError.fromResponse(
          ComplexErrorPayload payload, _i1.AWSBaseHttpResponse response) =>
      ComplexError.build((b) {
        if (payload.nested != null) {
          b.nested.replace(payload.nested!);
        }
        b.topLevel = payload.topLevel;
        if (response.headers['X-Header'] != null) {
          b.header = response.headers['X-Header']!;
        }
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ComplexErrorRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplexErrorBuilder b) {}
  String? get header;
  _i3.ComplexNestedErrorData? get nested;
  String? get topLevel;
  @override
  ComplexErrorPayload getPayload() => ComplexErrorPayload((b) {
        if (nested != null) {
          b.nested.replace(nested!);
        }
        b.topLevel = topLevel;
      });
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
      namespace: 'aws.protocoltests.restjson', shape: 'ComplexError');
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 403;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [header, nested, topLevel];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplexError');
    helper.add('header', header);
    helper.add('nested', nested);
    helper.add('topLevel', topLevel);
    return helper.toString();
  }
}

@_i4.internal
abstract class ComplexErrorPayload
    with _i1.AWSEquatable<ComplexErrorPayload>
    implements Built<ComplexErrorPayload, ComplexErrorPayloadBuilder> {
  factory ComplexErrorPayload(
          [void Function(ComplexErrorPayloadBuilder) updates]) =
      _$ComplexErrorPayload;

  const ComplexErrorPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplexErrorPayloadBuilder b) {}
  _i3.ComplexNestedErrorData? get nested;
  String? get topLevel;
  @override
  List<Object?> get props => [nested, topLevel];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplexErrorPayload');
    helper.add('nested', nested);
    helper.add('topLevel', topLevel);
    return helper.toString();
  }
}

class ComplexErrorRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ComplexErrorPayload> {
  const ComplexErrorRestJson1Serializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [
        ComplexError,
        _$ComplexError,
        ComplexErrorPayload,
        _$ComplexErrorPayload
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  ComplexErrorPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ComplexErrorPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.ComplexNestedErrorData))
                as _i3.ComplexNestedErrorData));
          }
          break;
        case 'TopLevel':
          if (value != null) {
            result.topLevel = (serializers.deserialize(value,
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
    final payload = object is ComplexError
        ? object.getPayload()
        : (object as ComplexErrorPayload);
    final result = <Object?>[];
    if (payload.nested != null) {
      result
        ..add('Nested')
        ..add(serializers.serialize(payload.nested!,
            specifiedType: const FullType(_i3.ComplexNestedErrorData)));
    }
    if (payload.topLevel != null) {
      result
        ..add('TopLevel')
        ..add(serializers.serialize(payload.topLevel!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
