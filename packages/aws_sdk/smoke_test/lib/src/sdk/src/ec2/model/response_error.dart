// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.response_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_error_code.dart';

part 'response_error.g.dart';

/// Describes the error that's returned when you cannot delete a launch template version.
abstract class ResponseError
    with _i1.AWSEquatable<ResponseError>
    implements Built<ResponseError, ResponseErrorBuilder> {
  /// Describes the error that's returned when you cannot delete a launch template version.
  factory ResponseError({
    LaunchTemplateErrorCode? code,
    String? message,
  }) {
    return _$ResponseError._(
      code: code,
      message: message,
    );
  }

  /// Describes the error that's returned when you cannot delete a launch template version.
  factory ResponseError.build([void Function(ResponseErrorBuilder) updates]) =
      _$ResponseError;

  const ResponseError._();

  static const List<_i2.SmithySerializer<ResponseError>> serializers = [
    ResponseErrorEc2QuerySerializer()
  ];

  /// The error code.
  LaunchTemplateErrorCode? get code;

  /// The error message, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResponseError')
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

class ResponseErrorEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ResponseError> {
  const ResponseErrorEc2QuerySerializer() : super('ResponseError');

  @override
  Iterable<Type> get types => const [
        ResponseError,
        _$ResponseError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResponseError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResponseErrorBuilder();
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
            specifiedType: const FullType(LaunchTemplateErrorCode),
          ) as LaunchTemplateErrorCode);
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
    ResponseError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ResponseErrorResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ResponseError(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(LaunchTemplateErrorCode),
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
