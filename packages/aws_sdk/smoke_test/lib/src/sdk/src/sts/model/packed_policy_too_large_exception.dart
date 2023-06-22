// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.packed_policy_too_large_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'packed_policy_too_large_exception.g.dart';

/// The request was rejected because the total packed size of the session policies and session tags combined was too large. An Amazon Web Services conversion compresses the session policy document, session policy ARNs, and session tags into a packed binary format that has a separate limit. The error message indicates by percentage how close the policies and tags are to the upper size limit. For more information, see [Passing Session Tags in STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
///
/// You could receive this error even though you meet other defined session policy and session tag limits. For more information, see [IAM and STS Entity Character Limits](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-limits-entity-length) in the _IAM User Guide_.
abstract class PackedPolicyTooLargeException
    with
        _i1.AWSEquatable<PackedPolicyTooLargeException>
    implements
        Built<PackedPolicyTooLargeException,
            PackedPolicyTooLargeExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because the total packed size of the session policies and session tags combined was too large. An Amazon Web Services conversion compresses the session policy document, session policy ARNs, and session tags into a packed binary format that has a separate limit. The error message indicates by percentage how close the policies and tags are to the upper size limit. For more information, see [Passing Session Tags in STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
  ///
  /// You could receive this error even though you meet other defined session policy and session tag limits. For more information, see [IAM and STS Entity Character Limits](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-limits-entity-length) in the _IAM User Guide_.
  factory PackedPolicyTooLargeException({String? message}) {
    return _$PackedPolicyTooLargeException._(message: message);
  }

  /// The request was rejected because the total packed size of the session policies and session tags combined was too large. An Amazon Web Services conversion compresses the session policy document, session policy ARNs, and session tags into a packed binary format that has a separate limit. The error message indicates by percentage how close the policies and tags are to the upper size limit. For more information, see [Passing Session Tags in STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
  ///
  /// You could receive this error even though you meet other defined session policy and session tag limits. For more information, see [IAM and STS Entity Character Limits](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-limits-entity-length) in the _IAM User Guide_.
  factory PackedPolicyTooLargeException.build(
          [void Function(PackedPolicyTooLargeExceptionBuilder) updates]) =
      _$PackedPolicyTooLargeException;

  const PackedPolicyTooLargeException._();

  /// Constructs a [PackedPolicyTooLargeException] from a [payload] and [response].
  factory PackedPolicyTooLargeException.fromResponse(
    PackedPolicyTooLargeException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<PackedPolicyTooLargeException>>
      serializers = [PackedPolicyTooLargeExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PackedPolicyTooLargeExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.sts',
        shape: 'PackedPolicyTooLargeException',
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
    final helper = newBuiltValueToStringHelper('PackedPolicyTooLargeException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class PackedPolicyTooLargeExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PackedPolicyTooLargeException> {
  const PackedPolicyTooLargeExceptionAwsQuerySerializer()
      : super('PackedPolicyTooLargeException');

  @override
  Iterable<Type> get types => const [
        PackedPolicyTooLargeException,
        _$PackedPolicyTooLargeException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PackedPolicyTooLargeException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PackedPolicyTooLargeExceptionBuilder();
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
    PackedPolicyTooLargeException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PackedPolicyTooLargeExceptionResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final PackedPolicyTooLargeException(:message) = object;
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
