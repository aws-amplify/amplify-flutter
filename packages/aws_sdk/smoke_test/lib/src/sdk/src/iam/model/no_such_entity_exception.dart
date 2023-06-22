// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.no_such_entity_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_such_entity_exception.g.dart';

/// The request was rejected because it referenced a resource entity that does not exist. The error message describes the resource.
abstract class NoSuchEntityException
    with _i1.AWSEquatable<NoSuchEntityException>
    implements
        Built<NoSuchEntityException, NoSuchEntityExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because it referenced a resource entity that does not exist. The error message describes the resource.
  factory NoSuchEntityException({String? message}) {
    return _$NoSuchEntityException._(message: message);
  }

  /// The request was rejected because it referenced a resource entity that does not exist. The error message describes the resource.
  factory NoSuchEntityException.build(
          [void Function(NoSuchEntityExceptionBuilder) updates]) =
      _$NoSuchEntityException;

  const NoSuchEntityException._();

  /// Constructs a [NoSuchEntityException] from a [payload] and [response].
  factory NoSuchEntityException.fromResponse(
    NoSuchEntityException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<NoSuchEntityException>> serializers = [
    NoSuchEntityExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoSuchEntityExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'NoSuchEntityException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 404;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NoSuchEntityException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class NoSuchEntityExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<NoSuchEntityException> {
  const NoSuchEntityExceptionAwsQuerySerializer()
      : super('NoSuchEntityException');

  @override
  Iterable<Type> get types => const [
        NoSuchEntityException,
        _$NoSuchEntityException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  NoSuchEntityException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoSuchEntityExceptionBuilder();
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
    NoSuchEntityException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NoSuchEntityExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final NoSuchEntityException(:message) = object;
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
