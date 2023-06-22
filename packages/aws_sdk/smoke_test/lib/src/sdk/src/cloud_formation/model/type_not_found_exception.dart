// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.type_not_found_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'type_not_found_exception.g.dart';

/// The specified extension doesn't exist in the CloudFormation registry.
abstract class TypeNotFoundException
    with _i1.AWSEquatable<TypeNotFoundException>
    implements
        Built<TypeNotFoundException, TypeNotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified extension doesn't exist in the CloudFormation registry.
  factory TypeNotFoundException({String? message}) {
    return _$TypeNotFoundException._(message: message);
  }

  /// The specified extension doesn't exist in the CloudFormation registry.
  factory TypeNotFoundException.build(
          [void Function(TypeNotFoundExceptionBuilder) updates]) =
      _$TypeNotFoundException;

  const TypeNotFoundException._();

  /// Constructs a [TypeNotFoundException] from a [payload] and [response].
  factory TypeNotFoundException.fromResponse(
    TypeNotFoundException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<TypeNotFoundException>> serializers = [
    TypeNotFoundExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TypeNotFoundExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'TypeNotFoundException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 404;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TypeNotFoundException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class TypeNotFoundExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<TypeNotFoundException> {
  const TypeNotFoundExceptionAwsQuerySerializer()
      : super('TypeNotFoundException');

  @override
  Iterable<Type> get types => const [
        TypeNotFoundException,
        _$TypeNotFoundException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TypeNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TypeNotFoundExceptionBuilder();
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
    TypeNotFoundException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TypeNotFoundExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final TypeNotFoundException(:message) = object;
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
