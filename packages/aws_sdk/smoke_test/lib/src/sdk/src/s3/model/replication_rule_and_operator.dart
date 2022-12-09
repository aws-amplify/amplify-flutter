// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.replication_rule_and_operator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i2;

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
    List<_i2.Tag>? tags,
  }) {
    return _$ReplicationRuleAndOperator._(
      prefix: prefix,
      tags: tags == null ? null : _i3.BuiltList(tags),
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

  static const List<_i4.SmithySerializer> serializers = [
    ReplicationRuleAndOperatorRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicationRuleAndOperatorBuilder b) {}

  /// An object key name prefix that identifies the subset of objects to which the rule applies.
  String? get prefix;

  /// An array of tags containing key and value pairs.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        prefix,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicationRuleAndOperator');
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class ReplicationRuleAndOperatorRestXmlSerializer
    extends _i4.StructuredSmithySerializer<ReplicationRuleAndOperator> {
  const ReplicationRuleAndOperatorRestXmlSerializer()
      : super('ReplicationRuleAndOperator');

  @override
  Iterable<Type> get types => const [
        ReplicationRuleAndOperator,
        _$ReplicationRuleAndOperator,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Prefix':
          if (value != null) {
            result.prefix = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Tag':
          if (value != null) {
            result.tags.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Tag),
            ) as _i2.Tag));
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
    final payload = (object as ReplicationRuleAndOperator);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ReplicationRuleAndOperator',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.prefix != null) {
      result
        ..add(const _i4.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
          .addAll(const _i4.XmlBuiltListSerializer(memberName: 'Tag').serialize(
        serializers,
        payload.tags!,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.Tag)],
        ),
      ));
    }
    return result;
  }
}
