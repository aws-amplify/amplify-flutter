// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.idempotent_parameter_mismatch; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'idempotent_parameter_mismatch.g.dart';

/// Using the same client token with one or more different parameters. Specify a new client token with the parameter changes and try again.
abstract class IdempotentParameterMismatch
    with _i1.AWSEquatable<IdempotentParameterMismatch>
    implements
        Built<IdempotentParameterMismatch, IdempotentParameterMismatchBuilder>,
        _i2.SmithyHttpException {
  /// Using the same client token with one or more different parameters. Specify a new client token with the parameter changes and try again.
  factory IdempotentParameterMismatch({String? message}) {
    return _$IdempotentParameterMismatch._(message: message);
  }

  /// Using the same client token with one or more different parameters. Specify a new client token with the parameter changes and try again.
  factory IdempotentParameterMismatch.build(
          [void Function(IdempotentParameterMismatchBuilder) updates]) =
      _$IdempotentParameterMismatch;

  const IdempotentParameterMismatch._();

  /// Constructs a [IdempotentParameterMismatch] from a [payload] and [response].
  factory IdempotentParameterMismatch.fromResponse(
    IdempotentParameterMismatch payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<IdempotentParameterMismatch>>
      serializers = [IdempotentParameterMismatchAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IdempotentParameterMismatchBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'IdempotentParameterMismatch',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IdempotentParameterMismatch')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class IdempotentParameterMismatchAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<IdempotentParameterMismatch> {
  const IdempotentParameterMismatchAwsJson11Serializer()
      : super('IdempotentParameterMismatch');

  @override
  Iterable<Type> get types => const [
        IdempotentParameterMismatch,
        _$IdempotentParameterMismatch,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  IdempotentParameterMismatch deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdempotentParameterMismatchBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IdempotentParameterMismatch object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final IdempotentParameterMismatch(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
