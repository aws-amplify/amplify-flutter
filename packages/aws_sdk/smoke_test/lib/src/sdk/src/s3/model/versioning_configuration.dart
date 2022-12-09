// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.versioning_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_versioning_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/mfa_delete.dart' as _i2;

part 'versioning_configuration.g.dart';

/// Describes the versioning state of an Amazon S3 bucket. For more information, see [PUT Bucket versioning](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTVersioningStatus.html) in the _Amazon S3 API Reference_.
abstract class VersioningConfiguration
    with _i1.AWSEquatable<VersioningConfiguration>
    implements Built<VersioningConfiguration, VersioningConfigurationBuilder> {
  /// Describes the versioning state of an Amazon S3 bucket. For more information, see [PUT Bucket versioning](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTVersioningStatus.html) in the _Amazon S3 API Reference_.
  factory VersioningConfiguration({
    _i2.MfaDelete? mfaDelete,
    _i3.BucketVersioningStatus? status,
  }) {
    return _$VersioningConfiguration._(
      mfaDelete: mfaDelete,
      status: status,
    );
  }

  /// Describes the versioning state of an Amazon S3 bucket. For more information, see [PUT Bucket versioning](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTVersioningStatus.html) in the _Amazon S3 API Reference_.
  factory VersioningConfiguration.build(
          [void Function(VersioningConfigurationBuilder) updates]) =
      _$VersioningConfiguration;

  const VersioningConfiguration._();

  static const List<_i4.SmithySerializer> serializers = [
    VersioningConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VersioningConfigurationBuilder b) {}

  /// Specifies whether MFA delete is enabled in the bucket versioning configuration. This element is only returned if the bucket has been configured with MFA delete. If the bucket has never been so configured, this element is not returned.
  _i2.MfaDelete? get mfaDelete;

  /// The versioning state of the bucket.
  _i3.BucketVersioningStatus? get status;
  @override
  List<Object?> get props => [
        mfaDelete,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VersioningConfiguration');
    helper.add(
      'mfaDelete',
      mfaDelete,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class VersioningConfigurationRestXmlSerializer
    extends _i4.StructuredSmithySerializer<VersioningConfiguration> {
  const VersioningConfigurationRestXmlSerializer()
      : super('VersioningConfiguration');

  @override
  Iterable<Type> get types => const [
        VersioningConfiguration,
        _$VersioningConfiguration,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  VersioningConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VersioningConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'MfaDelete':
          if (value != null) {
            result.mfaDelete = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.MfaDelete),
            ) as _i2.MfaDelete);
          }
          break;
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.BucketVersioningStatus),
            ) as _i3.BucketVersioningStatus);
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
    final payload = (object as VersioningConfiguration);
    final result = <Object?>[
      const _i4.XmlElementName(
        'VersioningConfiguration',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.mfaDelete != null) {
      result
        ..add(const _i4.XmlElementName('MfaDelete'))
        ..add(serializers.serialize(
          payload.mfaDelete!,
          specifiedType: const FullType.nullable(_i2.MfaDelete),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i4.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i3.BucketVersioningStatus),
        ));
    }
    return result;
  }
}
