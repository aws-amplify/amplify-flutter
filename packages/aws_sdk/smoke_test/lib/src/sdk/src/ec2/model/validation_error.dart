// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.validation_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'validation_error.g.dart';

/// The error code and error message that is returned for a parameter or parameter combination that is not valid when a new launch template or new version of a launch template is created.
abstract class ValidationError
    with _i1.AWSEquatable<ValidationError>
    implements Built<ValidationError, ValidationErrorBuilder> {
  /// The error code and error message that is returned for a parameter or parameter combination that is not valid when a new launch template or new version of a launch template is created.
  factory ValidationError({
    String? code,
    String? message,
  }) {
    return _$ValidationError._(
      code: code,
      message: message,
    );
  }

  /// The error code and error message that is returned for a parameter or parameter combination that is not valid when a new launch template or new version of a launch template is created.
  factory ValidationError.build(
      [void Function(ValidationErrorBuilder) updates]) = _$ValidationError;

  const ValidationError._();

  static const List<_i2.SmithySerializer<ValidationError>> serializers = [
    ValidationErrorEc2QuerySerializer()
  ];

  /// The error code that indicates why the parameter or parameter combination is not valid. For more information about error codes, see [Error codes](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html).
  String? get code;

  /// The error message that describes why the parameter or parameter combination is not valid. For more information about error messages, see [Error codes](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html).
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ValidationError')
      ..add(
        'code',
        code,
      )
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class ValidationErrorEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ValidationError> {
  const ValidationErrorEc2QuerySerializer() : super('ValidationError');

  @override
  Iterable<Type> get types => const [
        ValidationError,
        _$ValidationError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ValidationError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    ValidationError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ValidationErrorResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ValidationError(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(String),
        ));
    }
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
