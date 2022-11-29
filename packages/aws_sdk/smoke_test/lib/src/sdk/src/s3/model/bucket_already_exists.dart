// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.bucket_already_exists; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'bucket_already_exists.g.dart';

/// The requested bucket name is not available. The bucket namespace is shared by all users of the system. Select a different name and try again.
abstract class BucketAlreadyExists
    with _i1.AWSEquatable<BucketAlreadyExists>
    implements
        Built<BucketAlreadyExists, BucketAlreadyExistsBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  /// The requested bucket name is not available. The bucket namespace is shared by all users of the system. Select a different name and try again.
  factory BucketAlreadyExists() {
    return _$BucketAlreadyExists._();
  }

  /// The requested bucket name is not available. The bucket namespace is shared by all users of the system. Select a different name and try again.
  factory BucketAlreadyExists.build(
          [void Function(BucketAlreadyExistsBuilder) updates]) =
      _$BucketAlreadyExists;

  const BucketAlreadyExists._();

  /// Constructs a [BucketAlreadyExists] from a [payload] and [response].
  factory BucketAlreadyExists.fromResponse(
    BucketAlreadyExists payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    BucketAlreadyExistsRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BucketAlreadyExistsBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.s3',
        shape: 'BucketAlreadyExists',
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
    final helper = newBuiltValueToStringHelper('BucketAlreadyExists');
    return helper.toString();
  }
}

class BucketAlreadyExistsRestXmlSerializer
    extends _i2.StructuredSmithySerializer<BucketAlreadyExists> {
  const BucketAlreadyExistsRestXmlSerializer() : super('BucketAlreadyExists');

  @override
  Iterable<Type> get types => const [
        BucketAlreadyExists,
        _$BucketAlreadyExists,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  BucketAlreadyExists deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return BucketAlreadyExistsBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'BucketAlreadyExists',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
