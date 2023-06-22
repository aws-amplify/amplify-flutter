// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.created_but_modified_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'created_but_modified_exception.g.dart';

/// The specified resource exists, but has been changed.
abstract class CreatedButModifiedException
    with _i1.AWSEquatable<CreatedButModifiedException>
    implements
        Built<CreatedButModifiedException, CreatedButModifiedExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified resource exists, but has been changed.
  factory CreatedButModifiedException({String? message}) {
    return _$CreatedButModifiedException._(message: message);
  }

  /// The specified resource exists, but has been changed.
  factory CreatedButModifiedException.build(
          [void Function(CreatedButModifiedExceptionBuilder) updates]) =
      _$CreatedButModifiedException;

  const CreatedButModifiedException._();

  /// Constructs a [CreatedButModifiedException] from a [payload] and [response].
  factory CreatedButModifiedException.fromResponse(
    CreatedButModifiedException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<CreatedButModifiedException>>
      serializers = [CreatedButModifiedExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreatedButModifiedExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'CreatedButModifiedException',
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
    final helper = newBuiltValueToStringHelper('CreatedButModifiedException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class CreatedButModifiedExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CreatedButModifiedException> {
  const CreatedButModifiedExceptionAwsQuerySerializer()
      : super('CreatedButModifiedException');

  @override
  Iterable<Type> get types => const [
        CreatedButModifiedException,
        _$CreatedButModifiedException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreatedButModifiedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatedButModifiedExceptionBuilder();
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
    CreatedButModifiedException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreatedButModifiedExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final CreatedButModifiedException(:message) = object;
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
