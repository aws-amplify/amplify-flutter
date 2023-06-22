// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? name,
    DateTime? creationDate,
  }) {
    return _$Bucket._(
      name: name,
      creationDate: creationDate,
    );
  }

  /// In terms of implementation, a Bucket is a resource. An Amazon S3 bucket name is globally unique, and the namespace is shared by all Amazon Web Services accounts.
  factory Bucket.build([void Function(BucketBuilder) updates]) = _$Bucket;

  const Bucket._();

  static const List<_i2.SmithySerializer<Bucket>> serializers = [
    BucketRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BucketBuilder b) {}

  /// The name of the bucket.
  String? get name;

  /// Date the bucket was created. This date can change when making changes to your bucket, such as editing its bucket policy.
  DateTime? get creationDate;
  @override
  List<Object?> get props => [
        name,
        creationDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Bucket')
      ..add(
        'name',
        name,
      )
      ..add(
        'creationDate',
        creationDate,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CreationDate':
          result.creationDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Name':
          result.name = (serializers.deserialize(
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
    Bucket object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Bucket',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Bucket(:creationDate, :name) = object;
    if (creationDate != null) {
      result$
        ..add(const _i2.XmlElementName('CreationDate'))
        ..add(serializers.serialize(
          creationDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
