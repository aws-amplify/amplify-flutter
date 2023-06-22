// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.credential_report_expired_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'credential_report_expired_exception.g.dart';

/// The request was rejected because the most recent credential report has expired. To generate a new credential report, use GenerateCredentialReport. For more information about credential report expiration, see [Getting credential reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html) in the _IAM User Guide_.
abstract class CredentialReportExpiredException
    with
        _i1.AWSEquatable<CredentialReportExpiredException>
    implements
        Built<CredentialReportExpiredException,
            CredentialReportExpiredExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because the most recent credential report has expired. To generate a new credential report, use GenerateCredentialReport. For more information about credential report expiration, see [Getting credential reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html) in the _IAM User Guide_.
  factory CredentialReportExpiredException({String? message}) {
    return _$CredentialReportExpiredException._(message: message);
  }

  /// The request was rejected because the most recent credential report has expired. To generate a new credential report, use GenerateCredentialReport. For more information about credential report expiration, see [Getting credential reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html) in the _IAM User Guide_.
  factory CredentialReportExpiredException.build(
          [void Function(CredentialReportExpiredExceptionBuilder) updates]) =
      _$CredentialReportExpiredException;

  const CredentialReportExpiredException._();

  /// Constructs a [CredentialReportExpiredException] from a [payload] and [response].
  factory CredentialReportExpiredException.fromResponse(
    CredentialReportExpiredException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<CredentialReportExpiredException>>
      serializers = [CredentialReportExpiredExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CredentialReportExpiredExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'CredentialReportExpiredException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 410;
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
        newBuiltValueToStringHelper('CredentialReportExpiredException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class CredentialReportExpiredExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CredentialReportExpiredException> {
  const CredentialReportExpiredExceptionAwsQuerySerializer()
      : super('CredentialReportExpiredException');

  @override
  Iterable<Type> get types => const [
        CredentialReportExpiredException,
        _$CredentialReportExpiredException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CredentialReportExpiredException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialReportExpiredExceptionBuilder();
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
    CredentialReportExpiredException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CredentialReportExpiredExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CredentialReportExpiredException(:message) = object;
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
