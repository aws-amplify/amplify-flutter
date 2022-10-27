// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.index_not_found_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'index_not_found_exception.g.dart';

/// The operation tried to access a nonexistent index.
abstract class IndexNotFoundException
    with _i1.AWSEquatable<IndexNotFoundException>
    implements
        Built<IndexNotFoundException, IndexNotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The operation tried to access a nonexistent index.
  factory IndexNotFoundException({String? message}) {
    return _$IndexNotFoundException._(message: message);
  }

  /// The operation tried to access a nonexistent index.
  factory IndexNotFoundException.build(
          [void Function(IndexNotFoundExceptionBuilder) updates]) =
      _$IndexNotFoundException;

  const IndexNotFoundException._();

  /// Constructs a [IndexNotFoundException] from a [payload] and [response].
  factory IndexNotFoundException.fromResponse(
    IndexNotFoundException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    IndexNotFoundExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IndexNotFoundExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'IndexNotFoundException',
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
    final helper = newBuiltValueToStringHelper('IndexNotFoundException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class IndexNotFoundExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<IndexNotFoundException> {
  const IndexNotFoundExceptionAwsJson10Serializer()
      : super('IndexNotFoundException');

  @override
  Iterable<Type> get types => const [
        IndexNotFoundException,
        _$IndexNotFoundException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  IndexNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexNotFoundExceptionBuilder();
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
    final payload = (object as IndexNotFoundException);
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
