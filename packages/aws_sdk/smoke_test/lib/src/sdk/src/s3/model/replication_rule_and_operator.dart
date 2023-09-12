// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.replication_rule_and_operator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart';

part 'replication_rule_and_operator.g.dart';

/// A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter.
///
/// For example:
///
/// *   If you specify both a `Prefix` and a `Tag` filter, wrap these filters in an `And` tag.
///
/// *   If you specify a filter based on multiple tags, wrap the `Tag` elements in an `And` tag.
abstract class ReplicationRuleAndOperator
    with _i1.AWSEquatable<ReplicationRuleAndOperator>
    implements
        Built<ReplicationRuleAndOperator, ReplicationRuleAndOperatorBuilder> {
  /// A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter.
  ///
  /// For example:
  ///
  /// *   If you specify both a `Prefix` and a `Tag` filter, wrap these filters in an `And` tag.
  ///
  /// *   If you specify a filter based on multiple tags, wrap the `Tag` elements in an `And` tag.
  factory ReplicationRuleAndOperator({
    String? prefix,
    List<Tag>? tags,
  }) {
    return _$ReplicationRuleAndOperator._(
      prefix: prefix,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter.
  ///
  /// For example:
  ///
  /// *   If you specify both a `Prefix` and a `Tag` filter, wrap these filters in an `And` tag.
  ///
  /// *   If you specify a filter based on multiple tags, wrap the `Tag` elements in an `And` tag.
  factory ReplicationRuleAndOperator.build(
          [void Function(ReplicationRuleAndOperatorBuilder) updates]) =
      _$ReplicationRuleAndOperator;

  const ReplicationRuleAndOperator._();

  static const List<_i3.SmithySerializer<ReplicationRuleAndOperator>>
      serializers = [ReplicationRuleAndOperatorRestXmlSerializer()];

  /// An object key name prefix that identifies the subset of objects to which the rule applies.
  String? get prefix;

  /// An array of tags containing key and value pairs.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        prefix,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicationRuleAndOperator')
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class ReplicationRuleAndOperatorRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ReplicationRuleAndOperator> {
  const ReplicationRuleAndOperatorRestXmlSerializer()
      : super('ReplicationRuleAndOperator');

  @override
  Iterable<Type> get types => const [
        ReplicationRuleAndOperator,
        _$ReplicationRuleAndOperator,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ReplicationRuleAndOperator deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicationRuleAndOperatorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tag':
          result.tags.add((serializers.deserialize(
            value,
            specifiedType: const FullType(Tag),
          ) as Tag));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicationRuleAndOperator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ReplicationRuleAndOperator',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ReplicationRuleAndOperator(:prefix, :tags) = object;
    if (prefix != null) {
      result$
        ..add(const _i3.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
          .addAll(const _i3.XmlBuiltListSerializer(memberName: 'Tag').serialize(
        serializers,
        tags,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(Tag)],
        ),
      ));
    }
    return result$;
  }
}
