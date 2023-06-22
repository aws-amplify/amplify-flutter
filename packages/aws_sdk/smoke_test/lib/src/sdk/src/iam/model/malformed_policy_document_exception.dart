// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.malformed_policy_document_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'malformed_policy_document_exception.g.dart';

/// The request was rejected because the policy document was malformed. The error message describes the specific error.
abstract class MalformedPolicyDocumentException
    with
        _i1.AWSEquatable<MalformedPolicyDocumentException>
    implements
        Built<MalformedPolicyDocumentException,
            MalformedPolicyDocumentExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because the policy document was malformed. The error message describes the specific error.
  factory MalformedPolicyDocumentException({String? message}) {
    return _$MalformedPolicyDocumentException._(message: message);
  }

  /// The request was rejected because the policy document was malformed. The error message describes the specific error.
  factory MalformedPolicyDocumentException.build(
          [void Function(MalformedPolicyDocumentExceptionBuilder) updates]) =
      _$MalformedPolicyDocumentException;

  const MalformedPolicyDocumentException._();

  /// Constructs a [MalformedPolicyDocumentException] from a [payload] and [response].
  factory MalformedPolicyDocumentException.fromResponse(
    MalformedPolicyDocumentException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<MalformedPolicyDocumentException>>
      serializers = [MalformedPolicyDocumentExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedPolicyDocumentExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'MalformedPolicyDocumentException',
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
    final helper =
        newBuiltValueToStringHelper('MalformedPolicyDocumentException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class MalformedPolicyDocumentExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<MalformedPolicyDocumentException> {
  const MalformedPolicyDocumentExceptionAwsQuerySerializer()
      : super('MalformedPolicyDocumentException');

  @override
  Iterable<Type> get types => const [
        MalformedPolicyDocumentException,
        _$MalformedPolicyDocumentException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  MalformedPolicyDocumentException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedPolicyDocumentExceptionBuilder();
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
    MalformedPolicyDocumentException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'MalformedPolicyDocumentExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final MalformedPolicyDocumentException(:message) = object;
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
