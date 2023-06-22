// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.lifecycle_rule_and_operator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i2;

part 'lifecycle_rule_and_operator.g.dart';

/// This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
abstract class LifecycleRuleAndOperator
    with _i1.AWSEquatable<LifecycleRuleAndOperator>
    implements
        Built<LifecycleRuleAndOperator, LifecycleRuleAndOperatorBuilder> {
  /// This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
  factory LifecycleRuleAndOperator({
    String? prefix,
    List<_i2.Tag>? tags,
    _i3.Int64? objectSizeGreaterThan,
    _i3.Int64? objectSizeLessThan,
  }) {
    return _$LifecycleRuleAndOperator._(
      prefix: prefix,
      tags: tags == null ? null : _i4.BuiltList(tags),
      objectSizeGreaterThan: objectSizeGreaterThan,
      objectSizeLessThan: objectSizeLessThan,
    );
  }

  /// This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
  factory LifecycleRuleAndOperator.build(
          [void Function(LifecycleRuleAndOperatorBuilder) updates]) =
      _$LifecycleRuleAndOperator;

  const LifecycleRuleAndOperator._();

  static const List<_i5.SmithySerializer<LifecycleRuleAndOperator>>
      serializers = [LifecycleRuleAndOperatorRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LifecycleRuleAndOperatorBuilder b) {}

  /// Prefix identifying one or more objects to which the rule applies.
  String? get prefix;

  /// All of these tags must exist in the object's tag set in order for the rule to apply.
  _i4.BuiltList<_i2.Tag>? get tags;

  /// Minimum object size to which the rule applies.
  _i3.Int64? get objectSizeGreaterThan;

  /// Maximum object size to which the rule applies.
  _i3.Int64? get objectSizeLessThan;
  @override
  List<Object?> get props => [
        prefix,
        tags,
        objectSizeGreaterThan,
        objectSizeLessThan,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LifecycleRuleAndOperator')
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'objectSizeGreaterThan',
        objectSizeGreaterThan,
      )
      ..add(
        'objectSizeLessThan',
        objectSizeLessThan,
      );
    return helper.toString();
  }
}

class LifecycleRuleAndOperatorRestXmlSerializer
    extends _i5.StructuredSmithySerializer<LifecycleRuleAndOperator> {
  const LifecycleRuleAndOperatorRestXmlSerializer()
      : super('LifecycleRuleAndOperator');

  @override
  Iterable<Type> get types => const [
        LifecycleRuleAndOperator,
        _$LifecycleRuleAndOperator,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  LifecycleRuleAndOperator deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LifecycleRuleAndOperatorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ObjectSizeGreaterThan':
          result.objectSizeGreaterThan = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
        case 'ObjectSizeLessThan':
          result.objectSizeLessThan = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
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
    LifecycleRuleAndOperator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'LifecycleRuleAndOperator',
        _i5.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final LifecycleRuleAndOperator(
      :objectSizeGreaterThan,
      :objectSizeLessThan,
      :prefix,
      :tags
    ) = object;
    if (objectSizeGreaterThan != null) {
      result$
        ..add(const _i5.XmlElementName('ObjectSizeGreaterThan'))
        ..add(serializers.serialize(
          objectSizeGreaterThan,
          specifiedType: const FullType.nullable(_i3.Int64),
        ));
    }
    if (objectSizeLessThan != null) {
      result$
        ..add(const _i5.XmlElementName('ObjectSizeLessThan'))
        ..add(serializers.serialize(
          objectSizeLessThan,
          specifiedType: const FullType.nullable(_i3.Int64),
        ));
    }
    if (prefix != null) {
      result$
        ..add(const _i5.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
          .addAll(const _i5.XmlBuiltListSerializer(memberName: 'Tag').serialize(
        serializers,
        tags,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(_i2.Tag)],
        ),
      ));
    }
    return result$;
  }
}
