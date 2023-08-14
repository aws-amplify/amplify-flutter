// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.analytics_and_operator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart';

part 'analytics_and_operator.g.dart';

/// A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates in any combination, and an object must match all of the predicates for the filter to apply.
abstract class AnalyticsAndOperator
    with _i1.AWSEquatable<AnalyticsAndOperator>
    implements Built<AnalyticsAndOperator, AnalyticsAndOperatorBuilder> {
  /// A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates in any combination, and an object must match all of the predicates for the filter to apply.
  factory AnalyticsAndOperator({
    String? prefix,
    List<Tag>? tags,
  }) {
    return _$AnalyticsAndOperator._(
      prefix: prefix,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates in any combination, and an object must match all of the predicates for the filter to apply.
  factory AnalyticsAndOperator.build(
          [void Function(AnalyticsAndOperatorBuilder) updates]) =
      _$AnalyticsAndOperator;

  const AnalyticsAndOperator._();

  static const List<_i3.SmithySerializer<AnalyticsAndOperator>> serializers = [
    AnalyticsAndOperatorRestXmlSerializer()
  ];

  /// The prefix to use when evaluating an AND predicate: The prefix that an object must have to be included in the metrics results.
  String? get prefix;

  /// The list of tags to use when evaluating an AND predicate.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        prefix,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalyticsAndOperator')
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

class AnalyticsAndOperatorRestXmlSerializer
    extends _i3.StructuredSmithySerializer<AnalyticsAndOperator> {
  const AnalyticsAndOperatorRestXmlSerializer() : super('AnalyticsAndOperator');

  @override
  Iterable<Type> get types => const [
        AnalyticsAndOperator,
        _$AnalyticsAndOperator,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  AnalyticsAndOperator deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalyticsAndOperatorBuilder();
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
    AnalyticsAndOperator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AnalyticsAndOperator',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final AnalyticsAndOperator(:prefix, :tags) = object;
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
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(Tag)],
        ),
      ));
    }
    return result$;
  }
}
