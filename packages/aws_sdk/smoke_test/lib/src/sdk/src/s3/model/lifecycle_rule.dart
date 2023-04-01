// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.lifecycle_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i10;
import 'package:smoke_test/src/sdk/src/s3/model/abort_incomplete_multipart_upload.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/s3/model/expiration_status.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_expiration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule_filter.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/noncurrent_version_expiration.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/noncurrent_version_transition.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/transition.dart' as _i5;

part 'lifecycle_rule.g.dart';

/// A lifecycle rule for individual objects in an Amazon S3 bucket.
///
/// For more information see, [Managing your storage lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html) in the _Amazon S3 User Guide_.
abstract class LifecycleRule
    with _i1.AWSEquatable<LifecycleRule>
    implements Built<LifecycleRule, LifecycleRuleBuilder> {
  /// A lifecycle rule for individual objects in an Amazon S3 bucket.
  ///
  /// For more information see, [Managing your storage lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html) in the _Amazon S3 User Guide_.
  factory LifecycleRule({
    _i2.LifecycleExpiration? expiration,
    String? id,
    @Deprecated('No longer recommended for use. See API documentation for more details.')
        String? prefix,
    _i3.LifecycleRuleFilter? filter,
    required _i4.ExpirationStatus status,
    List<_i5.Transition>? transitions,
    List<_i6.NoncurrentVersionTransition>? noncurrentVersionTransitions,
    _i7.NoncurrentVersionExpiration? noncurrentVersionExpiration,
    _i8.AbortIncompleteMultipartUpload? abortIncompleteMultipartUpload,
  }) {
    return _$LifecycleRule._(
      expiration: expiration,
      id: id,
      prefix: prefix,
      filter: filter,
      status: status,
      transitions: transitions == null ? null : _i9.BuiltList(transitions),
      noncurrentVersionTransitions: noncurrentVersionTransitions == null
          ? null
          : _i9.BuiltList(noncurrentVersionTransitions),
      noncurrentVersionExpiration: noncurrentVersionExpiration,
      abortIncompleteMultipartUpload: abortIncompleteMultipartUpload,
    );
  }

  /// A lifecycle rule for individual objects in an Amazon S3 bucket.
  ///
  /// For more information see, [Managing your storage lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html) in the _Amazon S3 User Guide_.
  factory LifecycleRule.build([void Function(LifecycleRuleBuilder) updates]) =
      _$LifecycleRule;

  const LifecycleRule._();

  static const List<_i10.SmithySerializer> serializers = [
    LifecycleRuleRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LifecycleRuleBuilder b) {}

  /// Specifies the expiration for the lifecycle of the object in the form of date, days and, whether the object has a delete marker.
  _i2.LifecycleExpiration? get expiration;

  /// Unique identifier for the rule. The value cannot be longer than 255 characters.
  String? get id;

  /// Prefix identifying one or more objects to which the rule applies. This is no longer used; use `Filter` instead.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  @Deprecated(
      'No longer recommended for use. See API documentation for more details.')
  String? get prefix;

  /// The `Filter` is used to identify objects that a Lifecycle Rule applies to. A `Filter` must have exactly one of `Prefix`, `Tag`, or `And` specified. `Filter` is required if the `LifecycleRule` does not contain a `Prefix` element.
  _i3.LifecycleRuleFilter? get filter;

  /// If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not currently being applied.
  _i4.ExpirationStatus get status;

  /// Specifies when an Amazon S3 object transitions to a specified storage class.
  _i9.BuiltList<_i5.Transition>? get transitions;

  /// Specifies the transition rule for the lifecycle rule that describes when noncurrent objects transition to a specific storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to a specific storage class at a set period in the object's lifetime.
  _i9.BuiltList<_i6.NoncurrentVersionTransition>?
      get noncurrentVersionTransitions;

  /// Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in the object's lifetime.
  _i7.NoncurrentVersionExpiration? get noncurrentVersionExpiration;

  /// Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload. For more information, see [Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config) in the _Amazon S3 User Guide_.
  _i8.AbortIncompleteMultipartUpload? get abortIncompleteMultipartUpload;
  @override
  List<Object?> get props => [
        expiration,
        id,
        prefix,
        filter,
        status,
        transitions,
        noncurrentVersionTransitions,
        noncurrentVersionExpiration,
        abortIncompleteMultipartUpload,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LifecycleRule');
    helper.add(
      'expiration',
      expiration,
    );
    helper.add(
      'id',
      id,
    );
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'filter',
      filter,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'transitions',
      transitions,
    );
    helper.add(
      'noncurrentVersionTransitions',
      noncurrentVersionTransitions,
    );
    helper.add(
      'noncurrentVersionExpiration',
      noncurrentVersionExpiration,
    );
    helper.add(
      'abortIncompleteMultipartUpload',
      abortIncompleteMultipartUpload,
    );
    return helper.toString();
  }
}

class LifecycleRuleRestXmlSerializer
    extends _i10.StructuredSmithySerializer<LifecycleRule> {
  const LifecycleRuleRestXmlSerializer() : super('LifecycleRule');

  @override
  Iterable<Type> get types => const [
        LifecycleRule,
        _$LifecycleRule,
      ];
  @override
  Iterable<_i10.ShapeId> get supportedProtocols => const [
        _i10.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  LifecycleRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LifecycleRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AbortIncompleteMultipartUpload':
          if (value != null) {
            result.abortIncompleteMultipartUpload
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.AbortIncompleteMultipartUpload),
            ) as _i8.AbortIncompleteMultipartUpload));
          }
          break;
        case 'Expiration':
          if (value != null) {
            result.expiration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.LifecycleExpiration),
            ) as _i2.LifecycleExpiration));
          }
          break;
        case 'Filter':
          if (value != null) {
            result.filter = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.LifecycleRuleFilter),
            ) as _i3.LifecycleRuleFilter);
          }
          break;
        case 'ID':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NoncurrentVersionExpiration':
          if (value != null) {
            result.noncurrentVersionExpiration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.NoncurrentVersionExpiration),
            ) as _i7.NoncurrentVersionExpiration));
          }
          break;
        case 'NoncurrentVersionTransition':
          if (value != null) {
            result.noncurrentVersionTransitions.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.NoncurrentVersionTransition),
            ) as _i6.NoncurrentVersionTransition));
          }
          break;
        case 'Prefix':
          if (value != null) {
            result.prefix = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Status':
          result.status = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.ExpirationStatus),
          ) as _i4.ExpirationStatus);
          break;
        case 'Transition':
          if (value != null) {
            result.transitions.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.Transition),
            ) as _i5.Transition));
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
    final payload = (object as LifecycleRule);
    final result = <Object?>[
      const _i10.XmlElementName(
        'LifecycleRule',
        _i10.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.abortIncompleteMultipartUpload != null) {
      result
        ..add(const _i10.XmlElementName('AbortIncompleteMultipartUpload'))
        ..add(serializers.serialize(
          payload.abortIncompleteMultipartUpload!,
          specifiedType: const FullType(_i8.AbortIncompleteMultipartUpload),
        ));
    }
    if (payload.expiration != null) {
      result
        ..add(const _i10.XmlElementName('Expiration'))
        ..add(serializers.serialize(
          payload.expiration!,
          specifiedType: const FullType(_i2.LifecycleExpiration),
        ));
    }
    if (payload.filter != null) {
      result
        ..add(const _i10.XmlElementName('Filter'))
        ..add(serializers.serialize(
          payload.filter!,
          specifiedType: const FullType(_i3.LifecycleRuleFilter),
        ));
    }
    if (payload.id != null) {
      result
        ..add(const _i10.XmlElementName('ID'))
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.noncurrentVersionExpiration != null) {
      result
        ..add(const _i10.XmlElementName('NoncurrentVersionExpiration'))
        ..add(serializers.serialize(
          payload.noncurrentVersionExpiration!,
          specifiedType: const FullType(_i7.NoncurrentVersionExpiration),
        ));
    }
    if (payload.noncurrentVersionTransitions != null) {
      result.addAll(const _i10.XmlBuiltListSerializer(
              memberName: 'NoncurrentVersionTransition')
          .serialize(
        serializers,
        payload.noncurrentVersionTransitions!,
        specifiedType: const FullType.nullable(
          _i9.BuiltList,
          [FullType(_i6.NoncurrentVersionTransition)],
        ),
      ));
    }
    if (payload.prefix != null) {
      result
        ..add(const _i10.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i10.XmlElementName('Status'))
      ..add(serializers.serialize(
        payload.status,
        specifiedType: const FullType.nullable(_i4.ExpirationStatus),
      ));
    if (payload.transitions != null) {
      result.addAll(
          const _i10.XmlBuiltListSerializer(memberName: 'Transition').serialize(
        serializers,
        payload.transitions!,
        specifiedType: const FullType.nullable(
          _i9.BuiltList,
          [FullType(_i5.Transition)],
        ),
      ));
    }
    return result;
  }
}
