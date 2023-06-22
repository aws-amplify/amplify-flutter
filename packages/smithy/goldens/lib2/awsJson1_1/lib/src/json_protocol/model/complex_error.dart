// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_1_v2.json_protocol.model.complex_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1_v2/src/json_protocol/model/complex_nested_error_data.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'complex_error.g.dart';

/// This error is thrown when a request is invalid.
abstract class ComplexError
    with _i1.AWSEquatable<ComplexError>
    implements
        Built<ComplexError, ComplexErrorBuilder>,
        _i2.SmithyHttpException {
  /// This error is thrown when a request is invalid.
  factory ComplexError({
    String? topLevel,
    _i3.ComplexNestedErrorData? nested,
  }) {
    return _$ComplexError._(
      topLevel: topLevel,
      nested: nested,
    );
  }

  /// This error is thrown when a request is invalid.
  factory ComplexError.build([void Function(ComplexErrorBuilder) updates]) =
      _$ComplexError;

  const ComplexError._();

  /// Constructs a [ComplexError] from a [payload] and [response].
  factory ComplexError.fromResponse(
    ComplexError payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<ComplexError>> serializers = [
    ComplexErrorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplexErrorBuilder b) {}
  String? get topLevel;
  _i3.ComplexNestedErrorData? get nested;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'aws.protocoltests.json',
        shape: 'ComplexError',
      );
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [
        topLevel,
        nested,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplexError')
      ..add(
        'topLevel',
        topLevel,
      )
      ..add(
        'nested',
        nested,
      );
    return helper.toString();
  }
}

class ComplexErrorAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ComplexError> {
  const ComplexErrorAwsJson11Serializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [
        ComplexError,
        _$ComplexError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ComplexError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplexErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TopLevel':
          result.topLevel = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ComplexNestedErrorData),
          ) as _i3.ComplexNestedErrorData));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ComplexError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ComplexError(:topLevel, :nested) = object;
    if (topLevel != null) {
      result$
        ..add('TopLevel')
        ..add(serializers.serialize(
          topLevel,
          specifiedType: const FullType(String),
        ));
    }
    if (nested != null) {
      result$
        ..add('Nested')
        ..add(serializers.serialize(
          nested,
          specifiedType: const FullType(_i3.ComplexNestedErrorData),
        ));
    }
    return result$;
  }
}
