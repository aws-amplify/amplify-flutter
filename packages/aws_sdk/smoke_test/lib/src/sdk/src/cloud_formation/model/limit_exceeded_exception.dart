// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.limit_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'limit_exceeded_exception.g.dart';

/// The quota for the resource has already been reached.
///
/// For information about resource and stack limitations, see [CloudFormation quotas](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html) in the _CloudFormation User Guide_.
abstract class LimitExceededException
    with _i1.AWSEquatable<LimitExceededException>
    implements
        Built<LimitExceededException, LimitExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The quota for the resource has already been reached.
  ///
  /// For information about resource and stack limitations, see [CloudFormation quotas](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html) in the _CloudFormation User Guide_.
  factory LimitExceededException({String? message}) {
    return _$LimitExceededException._(message: message);
  }

  /// The quota for the resource has already been reached.
  ///
  /// For information about resource and stack limitations, see [CloudFormation quotas](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html) in the _CloudFormation User Guide_.
  factory LimitExceededException.build(
          [void Function(LimitExceededExceptionBuilder) updates]) =
      _$LimitExceededException;

  const LimitExceededException._();

  /// Constructs a [LimitExceededException] from a [payload] and [response].
  factory LimitExceededException.fromResponse(
    LimitExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<LimitExceededException>> serializers =
      [LimitExceededExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LimitExceededExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'LimitExceededException',
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
    final helper = newBuiltValueToStringHelper('LimitExceededException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class LimitExceededExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<LimitExceededException> {
  const LimitExceededExceptionAwsQuerySerializer()
      : super('LimitExceededException');

  @override
  Iterable<Type> get types => const [
        LimitExceededException,
        _$LimitExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  LimitExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LimitExceededExceptionBuilder();
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
    LimitExceededException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LimitExceededExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final LimitExceededException(:message) = object;
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
