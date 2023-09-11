// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.lifecycle_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/abort_incomplete_multipart_upload.dart';
import 'package:smoke_test/src/sdk/src/s3/model/expiration_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_expiration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/noncurrent_version_expiration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/noncurrent_version_transition.dart';
import 'package:smoke_test/src/sdk/src/s3/model/transition.dart';

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
    LifecycleExpiration? expiration,
    String? id,
    @Deprecated(
        'No longer recommended for use. See API documentation for more details.')
    String? prefix,
    LifecycleRuleFilter? filter,
    required ExpirationStatus status,
    List<Transition>? transitions,
    List<NoncurrentVersionTransition>? noncurrentVersionTransitions,
    NoncurrentVersionExpiration? noncurrentVersionExpiration,
    AbortIncompleteMultipartUpload? abortIncompleteMultipartUpload,
  }) {
    return _$LifecycleRule._(
      expiration: expiration,
      id: id,
      prefix: prefix,
      filter: filter,
      status: status,
      transitions: transitions == null ? null : _i2.BuiltList(transitions),
      noncurrentVersionTransitions: noncurrentVersionTransitions == null
          ? null
          : _i2.BuiltList(noncurrentVersionTransitions),
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

  static const List<_i3.SmithySerializer<LifecycleRule>> serializers = [
    LifecycleRuleRestXmlSerializer()
  ];

  /// Specifies the expiration for the lifecycle of the object in the form of date, days and, whether the object has a delete marker.
  LifecycleExpiration? get expiration;

  /// Unique identifier for the rule. The value cannot be longer than 255 characters.
  String? get id;

  /// Prefix identifying one or more objects to which the rule applies. This is no longer used; use `Filter` instead.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  @Deprecated(
      'No longer recommended for use. See API documentation for more details.')
  String? get prefix;

  /// The `Filter` is used to identify objects that a Lifecycle Rule applies to. A `Filter` must have exactly one of `Prefix`, `Tag`, or `And` specified. `Filter` is required if the `LifecycleRule` does not contain a `Prefix` element.
  LifecycleRuleFilter? get filter;

  /// If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not currently being applied.
  ExpirationStatus get status;

  /// Specifies when an Amazon S3 object transitions to a specified storage class.
  _i2.BuiltList<Transition>? get transitions;

  /// Specifies the transition rule for the lifecycle rule that describes when noncurrent objects transition to a specific storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to a specific storage class at a set period in the object's lifetime.
  _i2.BuiltList<NoncurrentVersionTransition>? get noncurrentVersionTransitions;

  /// Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in the object's lifetime.
  NoncurrentVersionExpiration? get noncurrentVersionExpiration;

  /// Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload. For more information, see [Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config) in the _Amazon S3 User Guide_.
  AbortIncompleteMultipartUpload? get abortIncompleteMultipartUpload;
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
    extends _i3.StructuredSmithySerializer<LifecycleRule> {
  const LifecycleRuleRestXmlSerializer() : super('LifecycleRule');

  @override
  Iterable<Type> get types => const [
        LifecycleRule,
        _$LifecycleRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
            specifiedType: const FullType(AbortIncompleteMultipartUpload),
          ) as AbortIncompleteMultipartUpload));
        case 'Expiration':
          result.expiration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LifecycleExpiration),
          ) as LifecycleExpiration));
        case 'Filter':
          result.filter = (serializers.deserialize(
            value,
            specifiedType: const FullType(LifecycleRuleFilter),
          ) as LifecycleRuleFilter);
        case 'ID':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NoncurrentVersionExpiration':
          result.noncurrentVersionExpiration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NoncurrentVersionExpiration),
          ) as NoncurrentVersionExpiration));
        case 'NoncurrentVersionTransition':
          result.noncurrentVersionTransitions.add((serializers.deserialize(
            value,
            specifiedType: const FullType(NoncurrentVersionTransition),
          ) as NoncurrentVersionTransition));
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(ExpirationStatus),
          ) as ExpirationStatus);
        case 'Transition':
          result.transitions.add((serializers.deserialize(
            value,
            specifiedType: const FullType(Transition),
          ) as Transition));
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
      const _i3.XmlElementName(
        'LifecycleRule',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
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
        ..add(const _i3.XmlElementName('AbortIncompleteMultipartUpload'))
        ..add(serializers.serialize(
          abortIncompleteMultipartUpload,
          specifiedType: const FullType(AbortIncompleteMultipartUpload),
        ));
    }
    if (expiration != null) {
      result$
        ..add(const _i3.XmlElementName('Expiration'))
        ..add(serializers.serialize(
          expiration,
          specifiedType: const FullType(LifecycleExpiration),
        ));
    }
    if (filter != null) {
      result$
        ..add(const _i3.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(LifecycleRuleFilter),
        ));
    }
    if (id != null) {
      result$
        ..add(const _i3.XmlElementName('ID'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    if (noncurrentVersionExpiration != null) {
      result$
        ..add(const _i3.XmlElementName('NoncurrentVersionExpiration'))
        ..add(serializers.serialize(
          noncurrentVersionExpiration,
          specifiedType: const FullType(NoncurrentVersionExpiration),
        ));
    }
    if (noncurrentVersionTransitions != null) {
      result$.addAll(const _i3.XmlBuiltListSerializer(
              memberName: 'NoncurrentVersionTransition')
          .serialize(
        serializers,
        noncurrentVersionTransitions,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(NoncurrentVersionTransition)],
        ),
      ));
    }
    if (prefix != null) {
      result$
        ..add(const _i3.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType(ExpirationStatus),
      ));
    if (transitions != null) {
      result$.addAll(
          const _i3.XmlBuiltListSerializer(memberName: 'Transition').serialize(
        serializers,
        transitions,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(Transition)],
        ),
      ));
    }
    return result$;
  }
}
