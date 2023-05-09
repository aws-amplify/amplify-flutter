// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.metrics_and_operator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i2;

part 'metrics_and_operator.g.dart';

/// A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.
abstract class MetricsAndOperator
    with _i1.AWSEquatable<MetricsAndOperator>
    implements Built<MetricsAndOperator, MetricsAndOperatorBuilder> {
  /// A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.
  factory MetricsAndOperator({
    String? prefix,
    List<_i2.Tag>? tags,
    String? accessPointArn,
  }) {
    return _$MetricsAndOperator._(
      prefix: prefix,
      tags: tags == null ? null : _i3.BuiltList(tags),
      accessPointArn: accessPointArn,
    );
  }

  /// A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.
  factory MetricsAndOperator.build(
          [void Function(MetricsAndOperatorBuilder) updates]) =
      _$MetricsAndOperator;

  const MetricsAndOperator._();

  static const List<_i4.SmithySerializer> serializers = [
    MetricsAndOperatorRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MetricsAndOperatorBuilder b) {}

  /// The prefix used when evaluating an AND predicate.
  String? get prefix;

  /// The list of tags used when evaluating an AND predicate.
  _i3.BuiltList<_i2.Tag>? get tags;

  /// The access point ARN used when evaluating an `AND` predicate.
  String? get accessPointArn;
  @override
  List<Object?> get props => [
        prefix,
        tags,
        accessPointArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MetricsAndOperator');
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'accessPointArn',
      accessPointArn,
    );
    return helper.toString();
  }
}

class MetricsAndOperatorRestXmlSerializer
    extends _i4.StructuredSmithySerializer<MetricsAndOperator> {
  const MetricsAndOperatorRestXmlSerializer() : super('MetricsAndOperator');

  @override
  Iterable<Type> get types => const [
        MetricsAndOperator,
        _$MetricsAndOperator,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  MetricsAndOperator deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsAndOperatorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessPointArn':
          result.accessPointArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tag':
          result.tags.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Tag),
          ) as _i2.Tag));
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
    final payload = (object as MetricsAndOperator);
    final result = <Object?>[
      const _i4.XmlElementName(
        'MetricsAndOperator',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final MetricsAndOperator(:accessPointArn, :prefix, :tags) = payload;
    if (accessPointArn != null) {
      result
        ..add(const _i4.XmlElementName('AccessPointArn'))
        ..add(serializers.serialize(
          accessPointArn,
          specifiedType: const FullType(String),
        ));
    }
    if (prefix != null) {
      result
        ..add(const _i4.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result
          .addAll(const _i4.XmlBuiltListSerializer(memberName: 'Tag').serialize(
        serializers,
        tags,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.Tag)],
        ),
      ));
    }
    return result;
  }
}
