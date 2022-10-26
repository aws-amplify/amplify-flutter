// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.lifecycle_rule_and_operator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i3;

part 'lifecycle_rule_and_operator.g.dart';

/// This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
abstract class LifecycleRuleAndOperator
    with _i1.AWSEquatable<LifecycleRuleAndOperator>
    implements
        Built<LifecycleRuleAndOperator, LifecycleRuleAndOperatorBuilder> {
  /// This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
  factory LifecycleRuleAndOperator({
    _i2.Int64? objectSizeGreaterThan,
    _i2.Int64? objectSizeLessThan,
    String? prefix,
    List<_i3.Tag>? tags,
  }) {
    return _$LifecycleRuleAndOperator._(
      objectSizeGreaterThan: objectSizeGreaterThan,
      objectSizeLessThan: objectSizeLessThan,
      prefix: prefix,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
  factory LifecycleRuleAndOperator.build(
          [void Function(LifecycleRuleAndOperatorBuilder) updates]) =
      _$LifecycleRuleAndOperator;

  const LifecycleRuleAndOperator._();

  static const List<_i5.SmithySerializer> serializers = [
    LifecycleRuleAndOperatorRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LifecycleRuleAndOperatorBuilder b) {}

  /// Minimum object size to which the rule applies.
  _i2.Int64? get objectSizeGreaterThan;

  /// Maximum object size to which the rule applies.
  _i2.Int64? get objectSizeLessThan;

  /// Prefix identifying one or more objects to which the rule applies.
  String? get prefix;

  /// All of these tags must exist in the object's tag set in order for the rule to apply.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        objectSizeGreaterThan,
        objectSizeLessThan,
        prefix,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LifecycleRuleAndOperator');
    helper.add(
      'objectSizeGreaterThan',
      objectSizeGreaterThan,
    );
    helper.add(
      'objectSizeLessThan',
      objectSizeLessThan,
    );
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ObjectSizeGreaterThan':
          if (value != null) {
            result.objectSizeGreaterThan = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'ObjectSizeLessThan':
          if (value != null) {
            result.objectSizeLessThan = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
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
        case 'Tag':
          if (value != null) {
            result.tags.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Tag),
            ) as _i3.Tag));
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
    final payload = (object as LifecycleRuleAndOperator);
    final result = <Object?>[
      const _i5.XmlElementName(
        'LifecycleRuleAndOperator',
        _i5.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.objectSizeGreaterThan != null) {
      result
        ..add(const _i5.XmlElementName('ObjectSizeGreaterThan'))
        ..add(serializers.serialize(
          payload.objectSizeGreaterThan!,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    if (payload.objectSizeLessThan != null) {
      result
        ..add(const _i5.XmlElementName('ObjectSizeLessThan'))
        ..add(serializers.serialize(
          payload.objectSizeLessThan!,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    if (payload.prefix != null) {
      result
        ..add(const _i5.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
          .addAll(const _i5.XmlBuiltListSerializer(memberName: 'Tag').serialize(
        serializers,
        payload.tags!,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(_i3.Tag)],
        ),
      ));
    }
    return result;
  }
}
