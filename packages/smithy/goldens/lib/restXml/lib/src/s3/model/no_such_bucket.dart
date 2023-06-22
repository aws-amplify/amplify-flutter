// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v1.s3.model.no_such_bucket; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_such_bucket.g.dart';

abstract class NoSuchBucket
    with _i1.AWSEquatable<NoSuchBucket>
    implements
        Built<NoSuchBucket, NoSuchBucketBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  factory NoSuchBucket() {
    return _$NoSuchBucket._();
  }

  factory NoSuchBucket.build([void Function(NoSuchBucketBuilder) updates]) =
      _$NoSuchBucket;

  const NoSuchBucket._();

  /// Constructs a [NoSuchBucket] from a [payload] and [response].
  factory NoSuchBucket.fromResponse(
    NoSuchBucket payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<NoSuchBucket>> serializers = [
    NoSuchBucketRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoSuchBucketBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.s3',
        shape: 'NoSuchBucket',
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
    final helper = newBuiltValueToStringHelper('NoSuchBucket');
    return helper.toString();
  }
}

class NoSuchBucketRestXmlSerializer
    extends _i2.StructuredSmithySerializer<NoSuchBucket> {
  const NoSuchBucketRestXmlSerializer() : super('NoSuchBucket');

  @override
  Iterable<Type> get types => const [
        NoSuchBucket,
        _$NoSuchBucket,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  NoSuchBucket deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return NoSuchBucketBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NoSuchBucket object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NoSuchBucket',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
