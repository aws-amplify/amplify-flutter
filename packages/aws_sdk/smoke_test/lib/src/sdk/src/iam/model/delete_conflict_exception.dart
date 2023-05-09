// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.delete_conflict_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_conflict_exception.g.dart';

/// The request was rejected because it attempted to delete a resource that has attached subordinate entities. The error message describes these entities.
abstract class DeleteConflictException
    with _i1.AWSEquatable<DeleteConflictException>
    implements
        Built<DeleteConflictException, DeleteConflictExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because it attempted to delete a resource that has attached subordinate entities. The error message describes these entities.
  factory DeleteConflictException({String? message}) {
    return _$DeleteConflictException._(message: message);
  }

  /// The request was rejected because it attempted to delete a resource that has attached subordinate entities. The error message describes these entities.
  factory DeleteConflictException.build(
          [void Function(DeleteConflictExceptionBuilder) updates]) =
      _$DeleteConflictException;

  const DeleteConflictException._();

  /// Constructs a [DeleteConflictException] from a [payload] and [response].
  factory DeleteConflictException.fromResponse(
    DeleteConflictException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    DeleteConflictExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteConflictExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'DeleteConflictException',
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
    final helper = newBuiltValueToStringHelper('DeleteConflictException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class DeleteConflictExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteConflictException> {
  const DeleteConflictExceptionAwsQuerySerializer()
      : super('DeleteConflictException');

  @override
  Iterable<Type> get types => const [
        DeleteConflictException,
        _$DeleteConflictException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteConflictException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteConflictExceptionBuilder();
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DeleteConflictException);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DeleteConflictExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteConflictException(:message) = payload;
    if (message != null) {
      result
        ..add(const _i2.XmlElementName('message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
