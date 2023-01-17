// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.bucket; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'bucket.g.dart';

/// In terms of implementation, a Bucket is a resource. An Amazon S3 bucket name is globally unique, and the namespace is shared by all Amazon Web Services accounts.
abstract class Bucket
    with _i1.AWSEquatable<Bucket>
    implements Built<Bucket, BucketBuilder> {
  /// In terms of implementation, a Bucket is a resource. An Amazon S3 bucket name is globally unique, and the namespace is shared by all Amazon Web Services accounts.
  factory Bucket({
    DateTime? creationDate,
    String? name,
  }) {
    return _$Bucket._(
      creationDate: creationDate,
      name: name,
    );
  }

  /// In terms of implementation, a Bucket is a resource. An Amazon S3 bucket name is globally unique, and the namespace is shared by all Amazon Web Services accounts.
  factory Bucket.build([void Function(BucketBuilder) updates]) = _$Bucket;

  const Bucket._();

  static const List<_i2.SmithySerializer> serializers = [
    BucketRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BucketBuilder b) {}

  /// Date the bucket was created. This date can change when making changes to your bucket, such as editing its bucket policy.
  DateTime? get creationDate;

  /// The name of the bucket.
  String? get name;
  @override
  List<Object?> get props => [
        creationDate,
        name,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Bucket');
    helper.add(
      'creationDate',
      creationDate,
    );
    helper.add(
      'name',
      name,
    );
    return helper.toString();
  }
}

class BucketRestXmlSerializer extends _i2.StructuredSmithySerializer<Bucket> {
  const BucketRestXmlSerializer() : super('Bucket');

  @override
  Iterable<Type> get types => const [
        Bucket,
        _$Bucket,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Bucket deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BucketBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CreationDate':
          if (value != null) {
            result.creationDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as Bucket);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Bucket',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.creationDate != null) {
      result
        ..add(const _i2.XmlElementName('CreationDate'))
        ..add(serializers.serialize(
          payload.creationDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
