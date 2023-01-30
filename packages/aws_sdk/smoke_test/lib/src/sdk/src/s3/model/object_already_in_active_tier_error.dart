// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.object_already_in_active_tier_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'object_already_in_active_tier_error.g.dart';

/// This action is not allowed against this storage tier.
abstract class ObjectAlreadyInActiveTierError
    with
        _i1.AWSEquatable<ObjectAlreadyInActiveTierError>
    implements
        Built<ObjectAlreadyInActiveTierError,
            ObjectAlreadyInActiveTierErrorBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  /// This action is not allowed against this storage tier.
  factory ObjectAlreadyInActiveTierError() {
    return _$ObjectAlreadyInActiveTierError._();
  }

  /// This action is not allowed against this storage tier.
  factory ObjectAlreadyInActiveTierError.build(
          [void Function(ObjectAlreadyInActiveTierErrorBuilder) updates]) =
      _$ObjectAlreadyInActiveTierError;

  const ObjectAlreadyInActiveTierError._();

  /// Constructs a [ObjectAlreadyInActiveTierError] from a [payload] and [response].
  factory ObjectAlreadyInActiveTierError.fromResponse(
    ObjectAlreadyInActiveTierError payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ObjectAlreadyInActiveTierErrorRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ObjectAlreadyInActiveTierErrorBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.s3',
        shape: 'ObjectAlreadyInActiveTierError',
      );
  @override
  String? get message => null;
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
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ObjectAlreadyInActiveTierError');
    return helper.toString();
  }
}

class ObjectAlreadyInActiveTierErrorRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ObjectAlreadyInActiveTierError> {
  const ObjectAlreadyInActiveTierErrorRestXmlSerializer()
      : super('ObjectAlreadyInActiveTierError');

  @override
  Iterable<Type> get types => const [
        ObjectAlreadyInActiveTierError,
        _$ObjectAlreadyInActiveTierError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ObjectAlreadyInActiveTierError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ObjectAlreadyInActiveTierErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'ObjectAlreadyInActiveTierError',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
