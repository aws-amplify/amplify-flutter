// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.public_access_block_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'public_access_block_configuration.g.dart';

/// The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see [The Meaning of "Public"](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status) in the _Amazon S3 User Guide_.
abstract class PublicAccessBlockConfiguration
    with
        _i1.AWSEquatable<PublicAccessBlockConfiguration>
    implements
        Built<PublicAccessBlockConfiguration,
            PublicAccessBlockConfigurationBuilder> {
  /// The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see [The Meaning of "Public"](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status) in the _Amazon S3 User Guide_.
  factory PublicAccessBlockConfiguration({
    bool? blockPublicAcls,
    bool? blockPublicPolicy,
    bool? ignorePublicAcls,
    bool? restrictPublicBuckets,
  }) {
    return _$PublicAccessBlockConfiguration._(
      blockPublicAcls: blockPublicAcls,
      blockPublicPolicy: blockPublicPolicy,
      ignorePublicAcls: ignorePublicAcls,
      restrictPublicBuckets: restrictPublicBuckets,
    );
  }

  /// The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see [The Meaning of "Public"](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status) in the _Amazon S3 User Guide_.
  factory PublicAccessBlockConfiguration.build(
          [void Function(PublicAccessBlockConfigurationBuilder) updates]) =
      _$PublicAccessBlockConfiguration;

  const PublicAccessBlockConfiguration._();

  static const List<_i2.SmithySerializer> serializers = [
    PublicAccessBlockConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PublicAccessBlockConfigurationBuilder b) {}

  /// Specifies whether Amazon S3 should block public access control lists (ACLs) for this bucket and objects in this bucket. Setting this element to `TRUE` causes the following behavior:
  ///
  /// *   PUT Bucket ACL and PUT Object ACL calls fail if the specified ACL is public.
  ///
  /// *   PUT Object calls fail if the request includes a public ACL.
  ///
  /// *   PUT Bucket calls fail if the request includes a public ACL.
  ///
  ///
  /// Enabling this setting doesn't affect existing policies or ACLs.
  bool? get blockPublicAcls;

  /// Specifies whether Amazon S3 should block public bucket policies for this bucket. Setting this element to `TRUE` causes Amazon S3 to reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  ///
  /// Enabling this setting doesn't affect existing bucket policies.
  bool? get blockPublicPolicy;

  /// Specifies whether Amazon S3 should ignore public ACLs for this bucket and objects in this bucket. Setting this element to `TRUE` causes Amazon S3 to ignore all public ACLs on this bucket and objects in this bucket.
  ///
  /// Enabling this setting doesn't affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set.
  bool? get ignorePublicAcls;

  /// Specifies whether Amazon S3 should restrict public bucket policies for this bucket. Setting this element to `TRUE` restricts access to this bucket to only Amazon Web Service principals and authorized users within this account if the bucket has a public policy.
  ///
  /// Enabling this setting doesn't affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked.
  bool? get restrictPublicBuckets;
  @override
  List<Object?> get props => [
        blockPublicAcls,
        blockPublicPolicy,
        ignorePublicAcls,
        restrictPublicBuckets,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PublicAccessBlockConfiguration');
    helper.add(
      'blockPublicAcls',
      blockPublicAcls,
    );
    helper.add(
      'blockPublicPolicy',
      blockPublicPolicy,
    );
    helper.add(
      'ignorePublicAcls',
      ignorePublicAcls,
    );
    helper.add(
      'restrictPublicBuckets',
      restrictPublicBuckets,
    );
    return helper.toString();
  }
}

class PublicAccessBlockConfigurationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<PublicAccessBlockConfiguration> {
  const PublicAccessBlockConfigurationRestXmlSerializer()
      : super('PublicAccessBlockConfiguration');

  @override
  Iterable<Type> get types => const [
        PublicAccessBlockConfiguration,
        _$PublicAccessBlockConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  PublicAccessBlockConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PublicAccessBlockConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'BlockPublicAcls':
          if (value != null) {
            result.blockPublicAcls = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'BlockPublicPolicy':
          if (value != null) {
            result.blockPublicPolicy = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'IgnorePublicAcls':
          if (value != null) {
            result.ignorePublicAcls = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'RestrictPublicBuckets':
          if (value != null) {
            result.restrictPublicBuckets = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as PublicAccessBlockConfiguration);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PublicAccessBlockConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.blockPublicAcls != null) {
      result
        ..add(const _i2.XmlElementName('BlockPublicAcls'))
        ..add(serializers.serialize(
          payload.blockPublicAcls!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.blockPublicPolicy != null) {
      result
        ..add(const _i2.XmlElementName('BlockPublicPolicy'))
        ..add(serializers.serialize(
          payload.blockPublicPolicy!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.ignorePublicAcls != null) {
      result
        ..add(const _i2.XmlElementName('IgnorePublicAcls'))
        ..add(serializers.serialize(
          payload.ignorePublicAcls!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.restrictPublicBuckets != null) {
      result
        ..add(const _i2.XmlElementName('RestrictPublicBuckets'))
        ..add(serializers.serialize(
          payload.restrictPublicBuckets!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
