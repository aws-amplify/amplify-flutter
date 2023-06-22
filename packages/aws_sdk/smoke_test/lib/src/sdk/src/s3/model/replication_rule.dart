// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.replication_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/model/delete_marker_replication.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/destination.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/existing_object_replication.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule_filter.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/source_selection_criteria.dart'
    as _i4;

part 'replication_rule.g.dart';

/// Specifies which Amazon S3 objects to replicate and where to store the replicas.
abstract class ReplicationRule
    with _i1.AWSEquatable<ReplicationRule>
    implements Built<ReplicationRule, ReplicationRuleBuilder> {
  /// Specifies which Amazon S3 objects to replicate and where to store the replicas.
  factory ReplicationRule({
    String? id,
    int? priority,
    @Deprecated('No longer recommended for use. See API documentation for more details.')
        String? prefix,
    _i2.ReplicationRuleFilter? filter,
    required _i3.ReplicationRuleStatus status,
    _i4.SourceSelectionCriteria? sourceSelectionCriteria,
    _i5.ExistingObjectReplication? existingObjectReplication,
    required _i6.Destination destination,
    _i7.DeleteMarkerReplication? deleteMarkerReplication,
  }) {
    return _$ReplicationRule._(
      id: id,
      priority: priority,
      prefix: prefix,
      filter: filter,
      status: status,
      sourceSelectionCriteria: sourceSelectionCriteria,
      existingObjectReplication: existingObjectReplication,
      destination: destination,
      deleteMarkerReplication: deleteMarkerReplication,
    );
  }

  /// Specifies which Amazon S3 objects to replicate and where to store the replicas.
  factory ReplicationRule.build(
      [void Function(ReplicationRuleBuilder) updates]) = _$ReplicationRule;

  const ReplicationRule._();

  static const List<_i8.SmithySerializer<ReplicationRule>> serializers = [
    ReplicationRuleRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicationRuleBuilder b) {}

  /// A unique identifier for the rule. The maximum value is 255 characters.
  String? get id;

  /// The priority indicates which rule has precedence whenever two or more replication rules conflict. Amazon S3 will attempt to replicate objects according to all replication rules. However, if there are two or more rules with the same destination bucket, then objects will be replicated according to the rule with the highest priority. The higher the number, the higher the priority.
  ///
  /// For more information, see [Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html) in the _Amazon S3 User Guide_.
  int? get priority;

  /// An object key name prefix that identifies the object or objects to which the rule applies. The maximum prefix length is 1,024 characters. To include all objects in a bucket, specify an empty string.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  @Deprecated(
      'No longer recommended for use. See API documentation for more details.')
  String? get prefix;

  /// A filter that identifies the subset of objects to which the replication rule applies. A `Filter` must specify exactly one `Prefix`, `Tag`, or an `And` child element.
  _i2.ReplicationRuleFilter? get filter;

  /// Specifies whether the rule is enabled.
  _i3.ReplicationRuleStatus get status;

  /// A container that describes additional filters for identifying the source objects that you want to replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer managed key stored in Amazon Web Services Key Management Service (SSE-KMS).
  _i4.SourceSelectionCriteria? get sourceSelectionCriteria;

  /// Optional configuration to replicate existing source bucket objects. For more information, see [Replicating Existing Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-what-is-isnot-replicated.html#existing-object-replication) in the _Amazon S3 User Guide_.
  _i5.ExistingObjectReplication? get existingObjectReplication;

  /// A container for information about the replication destination and its configurations including enabling the S3 Replication Time Control (S3 RTC).
  _i6.Destination get destination;

  /// Specifies whether Amazon S3 replicates delete markers. If you specify a `Filter` in your replication configuration, you must also include a `DeleteMarkerReplication` element. If your `Filter` includes a `Tag` element, the `DeleteMarkerReplication` `Status` must be set to Disabled, because Amazon S3 does not support replicating delete markers for tag-based rules. For an example configuration, see [Basic Rule Configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-config-min-rule-config).
  ///
  /// For more information about delete marker replication, see [Basic Rule Configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/delete-marker-replication.html).
  ///
  /// If you are using an earlier version of the replication configuration, Amazon S3 handles replication of delete markers differently. For more information, see [Backward Compatibility](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations).
  _i7.DeleteMarkerReplication? get deleteMarkerReplication;
  @override
  List<Object?> get props => [
        id,
        priority,
        prefix,
        filter,
        status,
        sourceSelectionCriteria,
        existingObjectReplication,
        destination,
        deleteMarkerReplication,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicationRule')
      ..add(
        'id',
        id,
      )
      ..add(
        'priority',
        priority,
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
        'sourceSelectionCriteria',
        sourceSelectionCriteria,
      )
      ..add(
        'existingObjectReplication',
        existingObjectReplication,
      )
      ..add(
        'destination',
        destination,
      )
      ..add(
        'deleteMarkerReplication',
        deleteMarkerReplication,
      );
    return helper.toString();
  }
}

class ReplicationRuleRestXmlSerializer
    extends _i8.StructuredSmithySerializer<ReplicationRule> {
  const ReplicationRuleRestXmlSerializer() : super('ReplicationRule');

  @override
  Iterable<Type> get types => const [
        ReplicationRule,
        _$ReplicationRule,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ReplicationRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicationRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeleteMarkerReplication':
          result.deleteMarkerReplication.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.DeleteMarkerReplication),
          ) as _i7.DeleteMarkerReplication));
        case 'Destination':
          result.destination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Destination),
          ) as _i6.Destination));
        case 'ExistingObjectReplication':
          result.existingObjectReplication.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ExistingObjectReplication),
          ) as _i5.ExistingObjectReplication));
        case 'Filter':
          result.filter = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ReplicationRuleFilter),
          ) as _i2.ReplicationRuleFilter);
        case 'ID':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Priority':
          result.priority = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'SourceSelectionCriteria':
          result.sourceSelectionCriteria.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.SourceSelectionCriteria),
          ) as _i4.SourceSelectionCriteria));
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ReplicationRuleStatus),
          ) as _i3.ReplicationRuleStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicationRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i8.XmlElementName(
        'ReplicationRule',
        _i8.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ReplicationRule(
      :deleteMarkerReplication,
      :destination,
      :existingObjectReplication,
      :filter,
      :id,
      :prefix,
      :priority,
      :sourceSelectionCriteria,
      :status
    ) = object;
    if (deleteMarkerReplication != null) {
      result$
        ..add(const _i8.XmlElementName('DeleteMarkerReplication'))
        ..add(serializers.serialize(
          deleteMarkerReplication,
          specifiedType: const FullType(_i7.DeleteMarkerReplication),
        ));
    }
    result$
      ..add(const _i8.XmlElementName('Destination'))
      ..add(serializers.serialize(
        destination,
        specifiedType: const FullType(_i6.Destination),
      ));
    if (existingObjectReplication != null) {
      result$
        ..add(const _i8.XmlElementName('ExistingObjectReplication'))
        ..add(serializers.serialize(
          existingObjectReplication,
          specifiedType: const FullType(_i5.ExistingObjectReplication),
        ));
    }
    if (filter != null) {
      result$
        ..add(const _i8.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(_i2.ReplicationRuleFilter),
        ));
    }
    if (id != null) {
      result$
        ..add(const _i8.XmlElementName('ID'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    if (prefix != null) {
      result$
        ..add(const _i8.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    if (priority != null) {
      result$
        ..add(const _i8.XmlElementName('Priority'))
        ..add(serializers.serialize(
          priority,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (sourceSelectionCriteria != null) {
      result$
        ..add(const _i8.XmlElementName('SourceSelectionCriteria'))
        ..add(serializers.serialize(
          sourceSelectionCriteria,
          specifiedType: const FullType(_i4.SourceSelectionCriteria),
        ));
    }
    result$
      ..add(const _i8.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(_i3.ReplicationRuleStatus),
      ));
    return result$;
  }
}
