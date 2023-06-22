// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.report_generation_limit_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'report_generation_limit_exceeded_exception.g.dart';

/// The request failed because the maximum number of concurrent requests for this account are already running.
abstract class ReportGenerationLimitExceededException
    with
        _i1.AWSEquatable<ReportGenerationLimitExceededException>
    implements
        Built<ReportGenerationLimitExceededException,
            ReportGenerationLimitExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request failed because the maximum number of concurrent requests for this account are already running.
  factory ReportGenerationLimitExceededException({String? message}) {
    return _$ReportGenerationLimitExceededException._(message: message);
  }

  /// The request failed because the maximum number of concurrent requests for this account are already running.
  factory ReportGenerationLimitExceededException.build(
      [void Function(ReportGenerationLimitExceededExceptionBuilder)
          updates]) = _$ReportGenerationLimitExceededException;

  const ReportGenerationLimitExceededException._();

  /// Constructs a [ReportGenerationLimitExceededException] from a [payload] and [response].
  factory ReportGenerationLimitExceededException.fromResponse(
    ReportGenerationLimitExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<ReportGenerationLimitExceededException>>
      serializers = [
    ReportGenerationLimitExceededExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReportGenerationLimitExceededExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'ReportGenerationLimitExceededException',
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
    final helper =
        newBuiltValueToStringHelper('ReportGenerationLimitExceededException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class ReportGenerationLimitExceededExceptionAwsQuerySerializer extends _i2
    .StructuredSmithySerializer<ReportGenerationLimitExceededException> {
  const ReportGenerationLimitExceededExceptionAwsQuerySerializer()
      : super('ReportGenerationLimitExceededException');

  @override
  Iterable<Type> get types => const [
        ReportGenerationLimitExceededException,
        _$ReportGenerationLimitExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ReportGenerationLimitExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportGenerationLimitExceededExceptionBuilder();
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
    ReportGenerationLimitExceededException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReportGenerationLimitExceededExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ReportGenerationLimitExceededException(:message) = object;
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
