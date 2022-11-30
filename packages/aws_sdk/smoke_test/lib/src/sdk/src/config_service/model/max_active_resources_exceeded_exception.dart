// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.max_active_resources_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'max_active_resources_exceeded_exception.g.dart';

/// You have reached the limit (100,000) of active custom resource types in your account. Delete unused resources using `DeleteResourceConfig`.
abstract class MaxActiveResourcesExceededException
    with
        _i1.AWSEquatable<MaxActiveResourcesExceededException>
    implements
        Built<MaxActiveResourcesExceededException,
            MaxActiveResourcesExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have reached the limit (100,000) of active custom resource types in your account. Delete unused resources using `DeleteResourceConfig`.
  factory MaxActiveResourcesExceededException({String? message}) {
    return _$MaxActiveResourcesExceededException._(message: message);
  }

  /// You have reached the limit (100,000) of active custom resource types in your account. Delete unused resources using `DeleteResourceConfig`.
  factory MaxActiveResourcesExceededException.build(
          [void Function(MaxActiveResourcesExceededExceptionBuilder) updates]) =
      _$MaxActiveResourcesExceededException;

  const MaxActiveResourcesExceededException._();

  /// Constructs a [MaxActiveResourcesExceededException] from a [payload] and [response].
  factory MaxActiveResourcesExceededException.fromResponse(
    MaxActiveResourcesExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    MaxActiveResourcesExceededExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MaxActiveResourcesExceededExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'MaxActiveResourcesExceededException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
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
        newBuiltValueToStringHelper('MaxActiveResourcesExceededException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class MaxActiveResourcesExceededExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<MaxActiveResourcesExceededException> {
  const MaxActiveResourcesExceededExceptionAwsJson11Serializer()
      : super('MaxActiveResourcesExceededException');

  @override
  Iterable<Type> get types => const [
        MaxActiveResourcesExceededException,
        _$MaxActiveResourcesExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  MaxActiveResourcesExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaxActiveResourcesExceededExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as MaxActiveResourcesExceededException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
