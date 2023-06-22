// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i10.SmithySerializer<LifecycleRule>> serializers = [
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

  /// Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload. For more information, see [Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config) in the _Amazon S3 User Guide_.
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
    final helper = newBuiltValueToStringHelper('LifecycleRule')
      ..add(
        'expiration',
        expiration,
      )
      ..add(
        'id',
        id,
      )
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'filter',
        filter,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'transitions',
        transitions,
      )
      ..add(
        'noncurrentVersionTransitions',
        noncurrentVersionTransitions,
      )
      ..add(
        'noncurrentVersionExpiration',
        noncurrentVersionExpiration,
      )
      ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AbortIncompleteMultipartUpload':
          result.abortIncompleteMultipartUpload
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.AbortIncompleteMultipartUpload),
          ) as _i8.AbortIncompleteMultipartUpload));
        case 'Expiration':
          result.expiration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.LifecycleExpiration),
          ) as _i2.LifecycleExpiration));
        case 'Filter':
          result.filter = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.LifecycleRuleFilter),
          ) as _i3.LifecycleRuleFilter);
        case 'ID':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NoncurrentVersionExpiration':
          result.noncurrentVersionExpiration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.NoncurrentVersionExpiration),
          ) as _i7.NoncurrentVersionExpiration));
        case 'NoncurrentVersionTransition':
          result.noncurrentVersionTransitions.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.NoncurrentVersionTransition),
          ) as _i6.NoncurrentVersionTransition));
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ExpirationStatus),
          ) as _i4.ExpirationStatus);
        case 'Transition':
          result.transitions.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.Transition),
          ) as _i5.Transition));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LifecycleRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i10.XmlElementName(
        'LifecycleRule',
        _i10.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final LifecycleRule(
      :abortIncompleteMultipartUpload,
      :expiration,
      :filter,
      :id,
      :noncurrentVersionExpiration,
      :noncurrentVersionTransitions,
      :prefix,
      :status,
      :transitions
    ) = object;
    if (abortIncompleteMultipartUpload != null) {
      result$
        ..add(const _i10.XmlElementName('AbortIncompleteMultipartUpload'))
        ..add(serializers.serialize(
          abortIncompleteMultipartUpload,
          specifiedType: const FullType(_i8.AbortIncompleteMultipartUpload),
        ));
    }
    if (expiration != null) {
      result$
        ..add(const _i10.XmlElementName('Expiration'))
        ..add(serializers.serialize(
          expiration,
          specifiedType: const FullType(_i2.LifecycleExpiration),
        ));
    }
    if (filter != null) {
      result$
        ..add(const _i10.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(_i3.LifecycleRuleFilter),
        ));
    }
    if (id != null) {
      result$
        ..add(const _i10.XmlElementName('ID'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    if (noncurrentVersionExpiration != null) {
      result$
        ..add(const _i10.XmlElementName('NoncurrentVersionExpiration'))
        ..add(serializers.serialize(
          noncurrentVersionExpiration,
          specifiedType: const FullType(_i7.NoncurrentVersionExpiration),
        ));
    }
    if (noncurrentVersionTransitions != null) {
      result$.addAll(const _i10.XmlBuiltListSerializer(
              memberName: 'NoncurrentVersionTransition')
          .serialize(
        serializers,
        noncurrentVersionTransitions,
        specifiedType: const FullType.nullable(
          _i9.BuiltList,
          [FullType(_i6.NoncurrentVersionTransition)],
        ),
      ));
    }
    if (prefix != null) {
      result$
        ..add(const _i10.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i10.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(_i4.ExpirationStatus),
      ));
    if (transitions != null) {
      result$.addAll(
          const _i10.XmlBuiltListSerializer(memberName: 'Transition').serialize(
        serializers,
        transitions,
        specifiedType: const FullType.nullable(
          _i9.BuiltList,
          [FullType(_i5.Transition)],
        ),
      ));
    }
    return result$;
  }
}
