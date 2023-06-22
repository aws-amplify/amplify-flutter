// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_validation_protocol.model.validation_exception_field; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'validation_exception_field.g.dart';

/// Describes one specific validation failure for an input member.
abstract class ValidationExceptionField
    with _i1.AWSEquatable<ValidationExceptionField>
    implements
        Built<ValidationExceptionField, ValidationExceptionFieldBuilder> {
  /// Describes one specific validation failure for an input member.
  factory ValidationExceptionField({
    required String path,
    required String message,
  }) {
    return _$ValidationExceptionField._(
      path: path,
      message: message,
    );
  }

  /// Describes one specific validation failure for an input member.
  factory ValidationExceptionField.build(
          [void Function(ValidationExceptionFieldBuilder) updates]) =
      _$ValidationExceptionField;

  const ValidationExceptionField._();

  static const List<_i2.SmithySerializer<ValidationExceptionField>>
      serializers = [ValidationExceptionFieldRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ValidationExceptionFieldBuilder b) {}

  /// A JSONPointer expression to the structure member whose value failed to satisfy the modeled constraints.
  String get path;

  /// A detailed description of the validation failure.
  String get message;
  @override
  List<Object?> get props => [
        path,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ValidationExceptionField')
      ..add(
        'path',
        path,
      )
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class ValidationExceptionFieldRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ValidationExceptionField> {
  const ValidationExceptionFieldRestJson1Serializer()
      : super('ValidationExceptionField');

  @override
  Iterable<Type> get types => const [
        ValidationExceptionField,
        _$ValidationExceptionField,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ValidationExceptionField deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationExceptionFieldBuilder();
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
        case 'path':
          result.path = (serializers.deserialize(
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
    ValidationExceptionField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ValidationExceptionField(:message, :path) = object;
    result$.addAll([
      'message',
      serializers.serialize(
        message,
        specifiedType: const FullType(String),
      ),
      'path',
      serializers.serialize(
        path,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
