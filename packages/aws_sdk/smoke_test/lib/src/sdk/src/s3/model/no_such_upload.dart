// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.no_such_upload; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_such_upload.g.dart';

/// The specified multipart upload does not exist.
abstract class NoSuchUpload
    with _i1.AWSEquatable<NoSuchUpload>
    implements
        Built<NoSuchUpload, NoSuchUploadBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  /// The specified multipart upload does not exist.
  factory NoSuchUpload() {
    return _$NoSuchUpload._();
  }

  /// The specified multipart upload does not exist.
  factory NoSuchUpload.build([void Function(NoSuchUploadBuilder) updates]) =
      _$NoSuchUpload;

  const NoSuchUpload._();

  /// Constructs a [NoSuchUpload] from a [payload] and [response].
  factory NoSuchUpload.fromResponse(
    NoSuchUpload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    NoSuchUploadRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoSuchUploadBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.s3',
        shape: 'NoSuchUpload',
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
    final helper = newBuiltValueToStringHelper('NoSuchUpload');
    return helper.toString();
  }
}

class NoSuchUploadRestXmlSerializer
    extends _i2.StructuredSmithySerializer<NoSuchUpload> {
  const NoSuchUploadRestXmlSerializer() : super('NoSuchUpload');

  @override
  Iterable<Type> get types => const [
        NoSuchUpload,
        _$NoSuchUpload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  NoSuchUpload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return NoSuchUploadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'NoSuchUpload',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
