// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.last_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'last_error.g.dart';

/// The last error that occurred for a VPC endpoint.
abstract class LastError
    with _i1.AWSEquatable<LastError>
    implements Built<LastError, LastErrorBuilder> {
  /// The last error that occurred for a VPC endpoint.
  factory LastError({
    String? message,
    String? code,
  }) {
    return _$LastError._(
      message: message,
      code: code,
    );
  }

  /// The last error that occurred for a VPC endpoint.
  factory LastError.build([void Function(LastErrorBuilder) updates]) =
      _$LastError;

  const LastError._();

  static const List<_i2.SmithySerializer<LastError>> serializers = [
    LastErrorEc2QuerySerializer()
  ];

  /// The error message for the VPC endpoint error.
  String? get message;

  /// The error code for the VPC endpoint error.
  String? get code;
  @override
  List<Object?> get props => [
        message,
        code,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LastError')
      ..add(
        'message',
        message,
      )
      ..add(
        'code',
        code,
      );
    return helper.toString();
  }
}

class LastErrorEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LastError> {
  const LastErrorEc2QuerySerializer() : super('LastError');

  @override
  Iterable<Type> get types => const [
        LastError,
        _$LastError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LastError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LastErrorBuilder();
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
        case 'code':
          result.code = (serializers.deserialize(
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
    LastError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LastErrorResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LastError(:message, :code) = object;
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
