// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.noncurrent_version_expiration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'noncurrent_version_expiration.g.dart';

/// Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in the object's lifetime.
abstract class NoncurrentVersionExpiration
    with _i1.AWSEquatable<NoncurrentVersionExpiration>
    implements
        Built<NoncurrentVersionExpiration, NoncurrentVersionExpirationBuilder> {
  /// Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in the object's lifetime.
  factory NoncurrentVersionExpiration({
    int? noncurrentDays,
    int? newerNoncurrentVersions,
  }) {
    return _$NoncurrentVersionExpiration._(
      noncurrentDays: noncurrentDays,
      newerNoncurrentVersions: newerNoncurrentVersions,
    );
  }

  /// Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in the object's lifetime.
  factory NoncurrentVersionExpiration.build(
          [void Function(NoncurrentVersionExpirationBuilder) updates]) =
      _$NoncurrentVersionExpiration;

  const NoncurrentVersionExpiration._();

  static const List<_i2.SmithySerializer<NoncurrentVersionExpiration>>
      serializers = [NoncurrentVersionExpirationRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoncurrentVersionExpirationBuilder b) {}

  /// Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action. The value must be a non-zero positive integer. For information about the noncurrent days calculations, see [How Amazon S3 Calculates When an Object Became Noncurrent](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations) in the _Amazon S3 User Guide_.
  int? get noncurrentDays;

  /// Specifies how many noncurrent versions Amazon S3 will retain. If there are this many more recent noncurrent versions, Amazon S3 will take the associated action. For more information about noncurrent versions, see [Lifecycle configuration elements](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html) in the _Amazon S3 User Guide_.
  int? get newerNoncurrentVersions;
  @override
  List<Object?> get props => [
        noncurrentDays,
        newerNoncurrentVersions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NoncurrentVersionExpiration')
      ..add(
        'noncurrentDays',
        noncurrentDays,
      )
      ..add(
        'newerNoncurrentVersions',
        newerNoncurrentVersions,
      );
    return helper.toString();
  }
}

class NoncurrentVersionExpirationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<NoncurrentVersionExpiration> {
  const NoncurrentVersionExpirationRestXmlSerializer()
      : super('NoncurrentVersionExpiration');

  @override
  Iterable<Type> get types => const [
        NoncurrentVersionExpiration,
        _$NoncurrentVersionExpiration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  NoncurrentVersionExpiration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoncurrentVersionExpirationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'NewerNoncurrentVersions':
          result.newerNoncurrentVersions = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NoncurrentDays':
          result.noncurrentDays = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NoncurrentVersionExpiration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NoncurrentVersionExpiration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final NoncurrentVersionExpiration(
      :newerNoncurrentVersions,
      :noncurrentDays
    ) = object;
    if (newerNoncurrentVersions != null) {
      result$
        ..add(const _i2.XmlElementName('NewerNoncurrentVersions'))
        ..add(serializers.serialize(
          newerNoncurrentVersions,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (noncurrentDays != null) {
      result$
        ..add(const _i2.XmlElementName('NoncurrentDays'))
        ..add(serializers.serialize(
          noncurrentDays,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
