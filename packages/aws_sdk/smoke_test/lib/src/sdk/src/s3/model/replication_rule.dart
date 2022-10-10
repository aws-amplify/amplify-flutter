// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.replication_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/model/delete_marker_replication.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/destination.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/existing_object_replication.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule_filter.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule_status.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/source_selection_criteria.dart'
    as _i6;

part 'replication_rule.g.dart';

/// Specifies which Amazon S3 objects to replicate and where to store the replicas.
abstract class ReplicationRule
    with _i1.AWSEquatable<ReplicationRule>
    implements Built<ReplicationRule, ReplicationRuleBuilder> {
  /// Specifies which Amazon S3 objects to replicate and where to store the replicas.
  factory ReplicationRule({
    _i2.DeleteMarkerReplication? deleteMarkerReplication,
    required _i3.Destination destination,
    _i4.ExistingObjectReplication? existingObjectReplication,
    _i5.ReplicationRuleFilter? filter,
    String? id,
    @Deprecated('No longer recommended for use. See API documentation for more details.')
        String? prefix,
    int? priority,
    _i6.SourceSelectionCriteria? sourceSelectionCriteria,
    required _i7.ReplicationRuleStatus status,
  }) {
    return _$ReplicationRule._(
      deleteMarkerReplication: deleteMarkerReplication,
      destination: destination,
      existingObjectReplication: existingObjectReplication,
      filter: filter,
      id: id,
      prefix: prefix,
      priority: priority,
      sourceSelectionCriteria: sourceSelectionCriteria,
      status: status,
    );
  }

  /// Specifies which Amazon S3 objects to replicate and where to store the replicas.
  factory ReplicationRule.build(
      [void Function(ReplicationRuleBuilder) updates]) = _$ReplicationRule;

  const ReplicationRule._();

  static const List<_i8.SmithySerializer> serializers = [
    ReplicationRuleRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicationRuleBuilder b) {}

  /// Specifies whether Amazon S3 replicates delete markers. If you specify a `Filter` in your replication configuration, you must also include a `DeleteMarkerReplication` element. If your `Filter` includes a `Tag` element, the `DeleteMarkerReplication` `Status` must be set to Disabled, because Amazon S3 does not support replicating delete markers for tag-based rules. For an example configuration, see [Basic Rule Configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-config-min-rule-config).
  ///
  /// For more information about delete marker replication, see [Basic Rule Configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/delete-marker-replication.html).
  ///
  /// If you are using an earlier version of the replication configuration, Amazon S3 handles replication of delete markers differently. For more information, see [Backward Compatibility](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations).
  _i2.DeleteMarkerReplication? get deleteMarkerReplication;

  /// A container for information about the replication destination and its configurations including enabling the S3 Replication Time Control (S3 RTC).
  _i3.Destination get destination;

  _i4.ExistingObjectReplication? get existingObjectReplication;

  /// A filter that identifies the subset of objects to which the replication rule applies. A `Filter` must specify exactly one `Prefix`, `Tag`, or an `And` child element.
  _i5.ReplicationRuleFilter? get filter;

  /// A unique identifier for the rule. The maximum value is 255 characters.
  String? get id;

  /// An object key name prefix that identifies the object or objects to which the rule applies. The maximum prefix length is 1,024 characters. To include all objects in a bucket, specify an empty string.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  @Deprecated(
      'No longer recommended for use. See API documentation for more details.')
  String? get prefix;

  /// The priority indicates which rule has precedence whenever two or more replication rules conflict. Amazon S3 will attempt to replicate objects according to all replication rules. However, if there are two or more rules with the same destination bucket, then objects will be replicated according to the rule with the highest priority. The higher the number, the higher the priority.
  ///
  /// For more information, see [Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html) in the _Amazon S3 User Guide_.
  int? get priority;

  /// A container that describes additional filters for identifying the source objects that you want to replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer managed key stored in Amazon Web Services Key Management Service (SSE-KMS).
  _i6.SourceSelectionCriteria? get sourceSelectionCriteria;

  /// Specifies whether the rule is enabled.
  _i7.ReplicationRuleStatus get status;
  @override
  List<Object?> get props => [
        deleteMarkerReplication,
        destination,
        existingObjectReplication,
        filter,
        id,
        prefix,
        priority,
        sourceSelectionCriteria,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicationRule');
    helper.add(
      'deleteMarkerReplication',
      deleteMarkerReplication,
    );
    helper.add(
      'destination',
      destination,
    );
    helper.add(
      'existingObjectReplication',
      existingObjectReplication,
    );
    helper.add(
      'filter',
      filter,
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
      'priority',
      priority,
    );
    helper.add(
      'sourceSelectionCriteria',
      sourceSelectionCriteria,
    );
    helper.add(
      'status',
      status,
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DeleteMarkerReplication':
          if (value != null) {
            result.deleteMarkerReplication.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DeleteMarkerReplication),
            ) as _i2.DeleteMarkerReplication));
          }
          break;
        case 'Destination':
          result.destination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Destination),
          ) as _i3.Destination));
          break;
        case 'ExistingObjectReplication':
          if (value != null) {
            result.existingObjectReplication.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ExistingObjectReplication),
            ) as _i4.ExistingObjectReplication));
          }
          break;
        case 'Filter':
          if (value != null) {
            result.filter = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ReplicationRuleFilter),
            ) as _i5.ReplicationRuleFilter);
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
        case 'Prefix':
          if (value != null) {
            result.prefix = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Priority':
          if (value != null) {
            result.priority = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'SourceSelectionCriteria':
          if (value != null) {
            result.sourceSelectionCriteria.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.SourceSelectionCriteria),
            ) as _i6.SourceSelectionCriteria));
          }
          break;
        case 'Status':
          result.status = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i7.ReplicationRuleStatus),
          ) as _i7.ReplicationRuleStatus);
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
    final payload = (object as ReplicationRule);
    final result = <Object?>[
      const _i8.XmlElementName(
        'ReplicationRule',
        _i8.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.deleteMarkerReplication != null) {
      result
        ..add(const _i8.XmlElementName('DeleteMarkerReplication'))
        ..add(serializers.serialize(
          payload.deleteMarkerReplication!,
          specifiedType: const FullType(_i2.DeleteMarkerReplication),
        ));
    }
    result
      ..add(const _i8.XmlElementName('Destination'))
      ..add(serializers.serialize(
        payload.destination,
        specifiedType: const FullType(_i3.Destination),
      ));
    if (payload.existingObjectReplication != null) {
      result
        ..add(const _i8.XmlElementName('ExistingObjectReplication'))
        ..add(serializers.serialize(
          payload.existingObjectReplication!,
          specifiedType: const FullType(_i4.ExistingObjectReplication),
        ));
    }
    if (payload.filter != null) {
      result
        ..add(const _i8.XmlElementName('Filter'))
        ..add(serializers.serialize(
          payload.filter!,
          specifiedType: const FullType(_i5.ReplicationRuleFilter),
        ));
    }
    if (payload.id != null) {
      result
        ..add(const _i8.XmlElementName('ID'))
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefix != null) {
      result
        ..add(const _i8.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.priority != null) {
      result
        ..add(const _i8.XmlElementName('Priority'))
        ..add(serializers.serialize(
          payload.priority!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.sourceSelectionCriteria != null) {
      result
        ..add(const _i8.XmlElementName('SourceSelectionCriteria'))
        ..add(serializers.serialize(
          payload.sourceSelectionCriteria!,
          specifiedType: const FullType(_i6.SourceSelectionCriteria),
        ));
    }
    result
      ..add(const _i8.XmlElementName('Status'))
      ..add(serializers.serialize(
        payload.status,
        specifiedType: const FullType.nullable(_i7.ReplicationRuleStatus),
      ));
    return result;
  }
}
