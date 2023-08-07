// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.logging_enabled; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/target_grant.dart';

part 'logging_enabled.g.dart';

/// Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket. For more information, see [PUT Bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html) in the _Amazon S3 API Reference_.
abstract class LoggingEnabled
    with _i1.AWSEquatable<LoggingEnabled>
    implements Built<LoggingEnabled, LoggingEnabledBuilder> {
  /// Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket. For more information, see [PUT Bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html) in the _Amazon S3 API Reference_.
  factory LoggingEnabled({
    required String targetBucket,
    List<TargetGrant>? targetGrants,
    required String targetPrefix,
  }) {
    return _$LoggingEnabled._(
      targetBucket: targetBucket,
      targetGrants: targetGrants == null ? null : _i2.BuiltList(targetGrants),
      targetPrefix: targetPrefix,
    );
  }

  /// Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket. For more information, see [PUT Bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html) in the _Amazon S3 API Reference_.
  factory LoggingEnabled.build([void Function(LoggingEnabledBuilder) updates]) =
      _$LoggingEnabled;

  const LoggingEnabled._();

  static const List<_i3.SmithySerializer<LoggingEnabled>> serializers = [
    LoggingEnabledRestXmlSerializer()
  ];

  /// Specifies the bucket where you want Amazon S3 to store server access logs. You can have your logs delivered to any bucket that you own, including the same bucket that is being logged. You can also configure multiple buckets to deliver their logs to the same target bucket. In this case, you should choose a different `TargetPrefix` for each source bucket so that the delivered log files can be distinguished by key.
  String get targetBucket;

  /// Container for granting information.
  ///
  /// Buckets that use the bucket owner enforced setting for Object Ownership don't support target grants. For more information, see [Permissions for server access log delivery](https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general) in the _Amazon S3 User Guide_.
  _i2.BuiltList<TargetGrant>? get targetGrants;

  /// A prefix for all log object keys. If you store log files from multiple Amazon S3 buckets in a single bucket, you can use a prefix to distinguish which log files came from which bucket.
  String get targetPrefix;
  @override
  List<Object?> get props => [
        targetBucket,
        targetGrants,
        targetPrefix,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LoggingEnabled')
      ..add(
        'targetBucket',
        targetBucket,
      )
      ..add(
        'targetGrants',
        targetGrants,
      )
      ..add(
        'targetPrefix',
        targetPrefix,
      );
    return helper.toString();
  }
}

class LoggingEnabledRestXmlSerializer
    extends _i3.StructuredSmithySerializer<LoggingEnabled> {
  const LoggingEnabledRestXmlSerializer() : super('LoggingEnabled');

  @override
  Iterable<Type> get types => const [
        LoggingEnabled,
        _$LoggingEnabled,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  LoggingEnabled deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoggingEnabledBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TargetBucket':
          result.targetBucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TargetGrants':
          result.targetGrants.replace(
              (const _i3.XmlBuiltListSerializer(memberName: 'Grant')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TargetGrant)],
            ),
          ) as _i2.BuiltList<TargetGrant>));
        case 'TargetPrefix':
          result.targetPrefix = (serializers.deserialize(
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
    LoggingEnabled object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LoggingEnabled',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final LoggingEnabled(:targetBucket, :targetGrants, :targetPrefix) = object;
    result$
      ..add(const _i3.XmlElementName('TargetBucket'))
      ..add(serializers.serialize(
        targetBucket,
        specifiedType: const FullType(String),
      ));
    if (targetGrants != null) {
      result$
        ..add(const _i3.XmlElementName('TargetGrants'))
        ..add(const _i3.XmlBuiltListSerializer(memberName: 'Grant').serialize(
          serializers,
          targetGrants,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TargetGrant)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('TargetPrefix'))
      ..add(serializers.serialize(
        targetPrefix,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
