// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.insufficient_capabilities_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'insufficient_capabilities_exception.g.dart';

/// The template contains resources with capabilities that weren't specified in the Capabilities parameter.
abstract class InsufficientCapabilitiesException
    with
        _i1.AWSEquatable<InsufficientCapabilitiesException>
    implements
        Built<InsufficientCapabilitiesException,
            InsufficientCapabilitiesExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The template contains resources with capabilities that weren't specified in the Capabilities parameter.
  factory InsufficientCapabilitiesException({String? message}) {
    return _$InsufficientCapabilitiesException._(message: message);
  }

  /// The template contains resources with capabilities that weren't specified in the Capabilities parameter.
  factory InsufficientCapabilitiesException.build(
          [void Function(InsufficientCapabilitiesExceptionBuilder) updates]) =
      _$InsufficientCapabilitiesException;

  const InsufficientCapabilitiesException._();

  /// Constructs a [InsufficientCapabilitiesException] from a [payload] and [response].
  factory InsufficientCapabilitiesException.fromResponse(
    InsufficientCapabilitiesException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InsufficientCapabilitiesException>>
      serializers = [InsufficientCapabilitiesExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InsufficientCapabilitiesExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'InsufficientCapabilitiesException',
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
    final helper =
        newBuiltValueToStringHelper('InsufficientCapabilitiesException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class InsufficientCapabilitiesExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<InsufficientCapabilitiesException> {
  const InsufficientCapabilitiesExceptionAwsQuerySerializer()
      : super('InsufficientCapabilitiesException');

  @override
  Iterable<Type> get types => const [
        InsufficientCapabilitiesException,
        _$InsufficientCapabilitiesException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  InsufficientCapabilitiesException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InsufficientCapabilitiesExceptionBuilder();
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
    InsufficientCapabilitiesException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InsufficientCapabilitiesExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final InsufficientCapabilitiesException(:message) = object;
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
