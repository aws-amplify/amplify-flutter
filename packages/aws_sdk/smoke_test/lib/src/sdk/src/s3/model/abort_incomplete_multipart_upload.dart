// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.abort_incomplete_multipart_upload; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'abort_incomplete_multipart_upload.g.dart';

/// Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload. For more information, see [Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config) in the _Amazon S3 User Guide_.
abstract class AbortIncompleteMultipartUpload
    with
        _i1.AWSEquatable<AbortIncompleteMultipartUpload>
    implements
        Built<AbortIncompleteMultipartUpload,
            AbortIncompleteMultipartUploadBuilder> {
  /// Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload. For more information, see [Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config) in the _Amazon S3 User Guide_.
  factory AbortIncompleteMultipartUpload({int? daysAfterInitiation}) {
    return _$AbortIncompleteMultipartUpload._(
        daysAfterInitiation: daysAfterInitiation);
  }

  /// Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload. For more information, see [Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config) in the _Amazon S3 User Guide_.
  factory AbortIncompleteMultipartUpload.build(
          [void Function(AbortIncompleteMultipartUploadBuilder) updates]) =
      _$AbortIncompleteMultipartUpload;

  const AbortIncompleteMultipartUpload._();

  static const List<_i2.SmithySerializer> serializers = [
    AbortIncompleteMultipartUploadRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AbortIncompleteMultipartUploadBuilder b) {}

  /// Specifies the number of days after which Amazon S3 aborts an incomplete multipart upload.
  int? get daysAfterInitiation;
  @override
  List<Object?> get props => [daysAfterInitiation];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AbortIncompleteMultipartUpload');
    helper.add(
      'daysAfterInitiation',
      daysAfterInitiation,
    );
    return helper.toString();
  }
}

class AbortIncompleteMultipartUploadRestXmlSerializer
    extends _i2.StructuredSmithySerializer<AbortIncompleteMultipartUpload> {
  const AbortIncompleteMultipartUploadRestXmlSerializer()
      : super('AbortIncompleteMultipartUpload');

  @override
  Iterable<Type> get types => const [
        AbortIncompleteMultipartUpload,
        _$AbortIncompleteMultipartUpload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  AbortIncompleteMultipartUpload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AbortIncompleteMultipartUploadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DaysAfterInitiation':
          if (value != null) {
            result.daysAfterInitiation = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as AbortIncompleteMultipartUpload);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AbortIncompleteMultipartUpload',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.daysAfterInitiation != null) {
      result
        ..add(const _i2.XmlElementName('DaysAfterInitiation'))
        ..add(serializers.serialize(
          payload.daysAfterInitiation!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
