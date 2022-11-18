// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library custom_v2.s3.model.copy_object_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'copy_object_error.g.dart';

abstract class CopyObjectError
    with _i1.AWSEquatable<CopyObjectError>
    implements
        Built<CopyObjectError, CopyObjectErrorBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  factory CopyObjectError() {
    return _$CopyObjectError._();
  }

  factory CopyObjectError.build(
      [void Function(CopyObjectErrorBuilder) updates]) = _$CopyObjectError;

  const CopyObjectError._();

  /// Constructs a [CopyObjectError] from a [payload] and [response].
  factory CopyObjectError.fromResponse(
    CopyObjectError payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    CopyObjectErrorRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopyObjectErrorBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.s3',
        shape: 'CopyObjectError',
      );
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 500;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyObjectError');
    return helper.toString();
  }
}

class CopyObjectErrorRestXmlSerializer
    extends _i2.StructuredSmithySerializer<CopyObjectError> {
  const CopyObjectErrorRestXmlSerializer() : super('CopyObjectError');

  @override
  Iterable<Type> get types => const [
        CopyObjectError,
        _$CopyObjectError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CopyObjectError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return CopyObjectErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'CopyObjectError',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
