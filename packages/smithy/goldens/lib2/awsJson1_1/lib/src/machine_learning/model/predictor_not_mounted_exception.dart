// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library aws_json1_1_v2.machine_learning.model.predictor_not_mounted_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'predictor_not_mounted_exception.g.dart';

abstract class PredictorNotMountedException
    with
        _i1.AWSEquatable<PredictorNotMountedException>
    implements
        Built<PredictorNotMountedException,
            PredictorNotMountedExceptionBuilder>,
        _i2.SmithyHttpException {
  factory PredictorNotMountedException({String? message}) {
    return _$PredictorNotMountedException._(message: message);
  }

  factory PredictorNotMountedException.build(
          [void Function(PredictorNotMountedExceptionBuilder) updates]) =
      _$PredictorNotMountedException;

  const PredictorNotMountedException._();

  /// Constructs a [PredictorNotMountedException] from a [payload] and [response].
  factory PredictorNotMountedException.fromResponse(
    PredictorNotMountedException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    PredictorNotMountedExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PredictorNotMountedExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.machinelearning',
        shape: 'PredictorNotMountedException',
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
    final helper = newBuiltValueToStringHelper('PredictorNotMountedException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class PredictorNotMountedExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PredictorNotMountedException> {
  const PredictorNotMountedExceptionAwsJson11Serializer()
      : super('PredictorNotMountedException');

  @override
  Iterable<Type> get types => const [
        PredictorNotMountedException,
        _$PredictorNotMountedException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PredictorNotMountedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PredictorNotMountedExceptionBuilder();
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
    final payload = (object as PredictorNotMountedException);
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
