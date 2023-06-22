// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.idp_communication_error_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'idp_communication_error_exception.g.dart';

/// The request could not be fulfilled because the identity provider (IDP) that was asked to verify the incoming identity token could not be reached. This is often a transient error caused by network conditions. Retry the request a limited number of times so that you don't exceed the request rate. If the error persists, the identity provider might be down or not responding.
abstract class IdpCommunicationErrorException
    with
        _i1.AWSEquatable<IdpCommunicationErrorException>
    implements
        Built<IdpCommunicationErrorException,
            IdpCommunicationErrorExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request could not be fulfilled because the identity provider (IDP) that was asked to verify the incoming identity token could not be reached. This is often a transient error caused by network conditions. Retry the request a limited number of times so that you don't exceed the request rate. If the error persists, the identity provider might be down or not responding.
  factory IdpCommunicationErrorException({String? message}) {
    return _$IdpCommunicationErrorException._(message: message);
  }

  /// The request could not be fulfilled because the identity provider (IDP) that was asked to verify the incoming identity token could not be reached. This is often a transient error caused by network conditions. Retry the request a limited number of times so that you don't exceed the request rate. If the error persists, the identity provider might be down or not responding.
  factory IdpCommunicationErrorException.build(
          [void Function(IdpCommunicationErrorExceptionBuilder) updates]) =
      _$IdpCommunicationErrorException;

  const IdpCommunicationErrorException._();

  /// Constructs a [IdpCommunicationErrorException] from a [payload] and [response].
  factory IdpCommunicationErrorException.fromResponse(
    IdpCommunicationErrorException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<IdpCommunicationErrorException>>
      serializers = [IdpCommunicationErrorExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IdpCommunicationErrorExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.sts',
        shape: 'IDPCommunicationErrorException',
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
    final helper = newBuiltValueToStringHelper('IdpCommunicationErrorException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class IdpCommunicationErrorExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<IdpCommunicationErrorException> {
  const IdpCommunicationErrorExceptionAwsQuerySerializer()
      : super('IdpCommunicationErrorException');

  @override
  Iterable<Type> get types => const [
        IdpCommunicationErrorException,
        _$IdpCommunicationErrorException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  IdpCommunicationErrorException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdpCommunicationErrorExceptionBuilder();
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
    IdpCommunicationErrorException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IdpCommunicationErrorExceptionResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final IdpCommunicationErrorException(:message) = object;
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
