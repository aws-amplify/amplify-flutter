// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.bucket_already_owned_by_you; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'bucket_already_owned_by_you.g.dart';

/// The bucket you tried to create already exists, and you own it. Amazon S3 returns this error in all Amazon Web Services Regions except in the North Virginia Region. For legacy compatibility, if you re-create an existing bucket that you already own in the North Virginia Region, Amazon S3 returns 200 OK and resets the bucket access control lists (ACLs).
abstract class BucketAlreadyOwnedByYou
    with _i1.AWSEquatable<BucketAlreadyOwnedByYou>
    implements
        Built<BucketAlreadyOwnedByYou, BucketAlreadyOwnedByYouBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  /// The bucket you tried to create already exists, and you own it. Amazon S3 returns this error in all Amazon Web Services Regions except in the North Virginia Region. For legacy compatibility, if you re-create an existing bucket that you already own in the North Virginia Region, Amazon S3 returns 200 OK and resets the bucket access control lists (ACLs).
  factory BucketAlreadyOwnedByYou() {
    return _$BucketAlreadyOwnedByYou._();
  }

  /// The bucket you tried to create already exists, and you own it. Amazon S3 returns this error in all Amazon Web Services Regions except in the North Virginia Region. For legacy compatibility, if you re-create an existing bucket that you already own in the North Virginia Region, Amazon S3 returns 200 OK and resets the bucket access control lists (ACLs).
  factory BucketAlreadyOwnedByYou.build(
          [void Function(BucketAlreadyOwnedByYouBuilder) updates]) =
      _$BucketAlreadyOwnedByYou;

  const BucketAlreadyOwnedByYou._();

  /// Constructs a [BucketAlreadyOwnedByYou] from a [payload] and [response].
  factory BucketAlreadyOwnedByYou.fromResponse(
    BucketAlreadyOwnedByYou payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<BucketAlreadyOwnedByYou>> serializers =
      [BucketAlreadyOwnedByYouRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BucketAlreadyOwnedByYouBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.s3',
        shape: 'BucketAlreadyOwnedByYou',
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
    final helper = newBuiltValueToStringHelper('BucketAlreadyOwnedByYou');
    return helper.toString();
  }
}

class BucketAlreadyOwnedByYouRestXmlSerializer
    extends _i2.StructuredSmithySerializer<BucketAlreadyOwnedByYou> {
  const BucketAlreadyOwnedByYouRestXmlSerializer()
      : super('BucketAlreadyOwnedByYou');

  @override
  Iterable<Type> get types => const [
        BucketAlreadyOwnedByYou,
        _$BucketAlreadyOwnedByYou,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  BucketAlreadyOwnedByYou deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return BucketAlreadyOwnedByYouBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BucketAlreadyOwnedByYou object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'BucketAlreadyOwnedByYou',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
