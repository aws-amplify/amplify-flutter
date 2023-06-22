// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.destination; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/access_control_translation.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/encryption_configuration.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/metrics.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/replication_time.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class.dart' as _i2;

part 'destination.g.dart';

/// Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket and S3 Replication Time Control (S3 RTC).
abstract class Destination
    with _i1.AWSEquatable<Destination>
    implements Built<Destination, DestinationBuilder> {
  /// Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket and S3 Replication Time Control (S3 RTC).
  factory Destination({
    required String bucket,
    String? account,
    _i2.StorageClass? storageClass,
    _i3.AccessControlTranslation? accessControlTranslation,
    _i4.EncryptionConfiguration? encryptionConfiguration,
    _i5.ReplicationTime? replicationTime,
    _i6.Metrics? metrics,
  }) {
    return _$Destination._(
      bucket: bucket,
      account: account,
      storageClass: storageClass,
      accessControlTranslation: accessControlTranslation,
      encryptionConfiguration: encryptionConfiguration,
      replicationTime: replicationTime,
      metrics: metrics,
    );
  }

  /// Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket and S3 Replication Time Control (S3 RTC).
  factory Destination.build([void Function(DestinationBuilder) updates]) =
      _$Destination;

  const Destination._();

  static const List<_i7.SmithySerializer<Destination>> serializers = [
    DestinationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DestinationBuilder b) {}

  /// The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to store the results.
  String get bucket;

  /// Destination bucket owner account ID. In a cross-account scenario, if you direct Amazon S3 to change replica ownership to the Amazon Web Services account that owns the destination bucket by specifying the `AccessControlTranslation` property, this is the account ID of the destination bucket owner. For more information, see [Replication Additional Configuration: Changing the Replica Owner](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-change-owner.html) in the _Amazon S3 User Guide_.
  String? get account;

  /// The storage class to use when replicating objects, such as S3 Standard or reduced redundancy. By default, Amazon S3 uses the storage class of the source object to create the object replica.
  ///
  /// For valid values, see the `StorageClass` element of the [PUT Bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) action in the _Amazon S3 API Reference_.
  _i2.StorageClass? get storageClass;

  /// Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the Amazon Web Services account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same Amazon Web Services account that owns the source object.
  _i3.AccessControlTranslation? get accessControlTranslation;

  /// A container that provides information about encryption. If `SourceSelectionCriteria` is specified, you must specify this element.
  _i4.EncryptionConfiguration? get encryptionConfiguration;

  /// A container specifying S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a `Metrics` block.
  _i5.ReplicationTime? get replicationTime;

  /// A container specifying replication metrics-related settings enabling replication metrics and events.
  _i6.Metrics? get metrics;
  @override
  List<Object?> get props => [
        bucket,
        account,
        storageClass,
        accessControlTranslation,
        encryptionConfiguration,
        replicationTime,
        metrics,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Destination')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'account',
        account,
      )
      ..add(
        'storageClass',
        storageClass,
      )
      ..add(
        'accessControlTranslation',
        accessControlTranslation,
      )
      ..add(
        'encryptionConfiguration',
        encryptionConfiguration,
      )
      ..add(
        'replicationTime',
        replicationTime,
      )
      ..add(
        'metrics',
        metrics,
      );
    return helper.toString();
  }
}

class DestinationRestXmlSerializer
    extends _i7.StructuredSmithySerializer<Destination> {
  const DestinationRestXmlSerializer() : super('Destination');

  @override
  Iterable<Type> get types => const [
        Destination,
        _$Destination,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Destination deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DestinationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessControlTranslation':
          result.accessControlTranslation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AccessControlTranslation),
          ) as _i3.AccessControlTranslation));
        case 'Account':
          result.account = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Bucket':
          result.bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EncryptionConfiguration':
          result.encryptionConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.EncryptionConfiguration),
          ) as _i4.EncryptionConfiguration));
        case 'Metrics':
          result.metrics.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Metrics),
          ) as _i6.Metrics));
        case 'ReplicationTime':
          result.replicationTime.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ReplicationTime),
          ) as _i5.ReplicationTime));
        case 'StorageClass':
          result.storageClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StorageClass),
          ) as _i2.StorageClass);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Destination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i7.XmlElementName(
        'Destination',
        _i7.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Destination(
      :accessControlTranslation,
      :account,
      :bucket,
      :encryptionConfiguration,
      :metrics,
      :replicationTime,
      :storageClass
    ) = object;
    if (accessControlTranslation != null) {
      result$
        ..add(const _i7.XmlElementName('AccessControlTranslation'))
        ..add(serializers.serialize(
          accessControlTranslation,
          specifiedType: const FullType(_i3.AccessControlTranslation),
        ));
    }
    if (account != null) {
      result$
        ..add(const _i7.XmlElementName('Account'))
        ..add(serializers.serialize(
          account,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i7.XmlElementName('Bucket'))
      ..add(serializers.serialize(
        bucket,
        specifiedType: const FullType(String),
      ));
    if (encryptionConfiguration != null) {
      result$
        ..add(const _i7.XmlElementName('EncryptionConfiguration'))
        ..add(serializers.serialize(
          encryptionConfiguration,
          specifiedType: const FullType(_i4.EncryptionConfiguration),
        ));
    }
    if (metrics != null) {
      result$
        ..add(const _i7.XmlElementName('Metrics'))
        ..add(serializers.serialize(
          metrics,
          specifiedType: const FullType(_i6.Metrics),
        ));
    }
    if (replicationTime != null) {
      result$
        ..add(const _i7.XmlElementName('ReplicationTime'))
        ..add(serializers.serialize(
          replicationTime,
          specifiedType: const FullType(_i5.ReplicationTime),
        ));
    }
    if (storageClass != null) {
      result$
        ..add(const _i7.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          storageClass,
          specifiedType: const FullType.nullable(_i2.StorageClass),
        ));
    }
    return result$;
  }
}
