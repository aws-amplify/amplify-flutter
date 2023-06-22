// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.name_already_exists_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'name_already_exists_exception.g.dart';

/// The specified name is already in use.
abstract class NameAlreadyExistsException
    with _i1.AWSEquatable<NameAlreadyExistsException>
    implements
        Built<NameAlreadyExistsException, NameAlreadyExistsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified name is already in use.
  factory NameAlreadyExistsException({String? message}) {
    return _$NameAlreadyExistsException._(message: message);
  }

  /// The specified name is already in use.
  factory NameAlreadyExistsException.build(
          [void Function(NameAlreadyExistsExceptionBuilder) updates]) =
      _$NameAlreadyExistsException;

  const NameAlreadyExistsException._();

  /// Constructs a [NameAlreadyExistsException] from a [payload] and [response].
  factory NameAlreadyExistsException.fromResponse(
    NameAlreadyExistsException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<NameAlreadyExistsException>>
      serializers = [NameAlreadyExistsExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NameAlreadyExistsExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'NameAlreadyExistsException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 409;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NameAlreadyExistsException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class NameAlreadyExistsExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<NameAlreadyExistsException> {
  const NameAlreadyExistsExceptionAwsQuerySerializer()
      : super('NameAlreadyExistsException');

  @override
  Iterable<Type> get types => const [
        NameAlreadyExistsException,
        _$NameAlreadyExistsException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  NameAlreadyExistsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NameAlreadyExistsExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Message':
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
    NameAlreadyExistsException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NameAlreadyExistsExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final NameAlreadyExistsException(:message) = object;
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
