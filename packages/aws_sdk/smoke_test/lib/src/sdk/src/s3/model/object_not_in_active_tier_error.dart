// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.object_not_in_active_tier_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'object_not_in_active_tier_error.g.dart';

/// The source object of the COPY action is not in the active tier and is only stored in Amazon S3 Glacier.
abstract class ObjectNotInActiveTierError
    with _i1.AWSEquatable<ObjectNotInActiveTierError>
    implements
        Built<ObjectNotInActiveTierError, ObjectNotInActiveTierErrorBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  /// The source object of the COPY action is not in the active tier and is only stored in Amazon S3 Glacier.
  factory ObjectNotInActiveTierError() {
    return _$ObjectNotInActiveTierError._();
  }

  /// The source object of the COPY action is not in the active tier and is only stored in Amazon S3 Glacier.
  factory ObjectNotInActiveTierError.build(
          [void Function(ObjectNotInActiveTierErrorBuilder) updates]) =
      _$ObjectNotInActiveTierError;

  const ObjectNotInActiveTierError._();

  /// Constructs a [ObjectNotInActiveTierError] from a [payload] and [response].
  factory ObjectNotInActiveTierError.fromResponse(
    ObjectNotInActiveTierError payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ObjectNotInActiveTierErrorRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ObjectNotInActiveTierErrorBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.s3',
        shape: 'ObjectNotInActiveTierError',
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
    final helper = newBuiltValueToStringHelper('ObjectNotInActiveTierError');
    return helper.toString();
  }
}

class ObjectNotInActiveTierErrorRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ObjectNotInActiveTierError> {
  const ObjectNotInActiveTierErrorRestXmlSerializer()
      : super('ObjectNotInActiveTierError');

  @override
  Iterable<Type> get types => const [
        ObjectNotInActiveTierError,
        _$ObjectNotInActiveTierError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ObjectNotInActiveTierError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ObjectNotInActiveTierErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'ObjectNotInActiveTierError',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
