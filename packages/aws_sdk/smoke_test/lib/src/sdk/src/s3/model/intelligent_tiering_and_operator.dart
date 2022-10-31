// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.intelligent_tiering_and_operator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i2;

part 'intelligent_tiering_and_operator.g.dart';

/// A container for specifying S3 Intelligent-Tiering filters. The filters determine the subset of objects to which the rule applies.
abstract class IntelligentTieringAndOperator
    with
        _i1.AWSEquatable<IntelligentTieringAndOperator>
    implements
        Built<IntelligentTieringAndOperator,
            IntelligentTieringAndOperatorBuilder> {
  /// A container for specifying S3 Intelligent-Tiering filters. The filters determine the subset of objects to which the rule applies.
  factory IntelligentTieringAndOperator({
    String? prefix,
    List<_i2.Tag>? tags,
  }) {
    return _$IntelligentTieringAndOperator._(
      prefix: prefix,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// A container for specifying S3 Intelligent-Tiering filters. The filters determine the subset of objects to which the rule applies.
  factory IntelligentTieringAndOperator.build(
          [void Function(IntelligentTieringAndOperatorBuilder) updates]) =
      _$IntelligentTieringAndOperator;

  const IntelligentTieringAndOperator._();

  static const List<_i4.SmithySerializer> serializers = [
    IntelligentTieringAndOperatorRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IntelligentTieringAndOperatorBuilder b) {}

  /// An object key name prefix that identifies the subset of objects to which the configuration applies.
  String? get prefix;

  /// All of these tags must exist in the object's tag set in order for the configuration to apply.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        prefix,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IntelligentTieringAndOperator');
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

class IntelligentTieringAndOperatorRestXmlSerializer
    extends _i4.StructuredSmithySerializer<IntelligentTieringAndOperator> {
  const IntelligentTieringAndOperatorRestXmlSerializer()
      : super('IntelligentTieringAndOperator');

  @override
  Iterable<Type> get types => const [
        IntelligentTieringAndOperator,
        _$IntelligentTieringAndOperator,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  IntelligentTieringAndOperator deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelligentTieringAndOperatorBuilder();
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
    final payload = (object as IntelligentTieringAndOperator);
    final result = <Object?>[
      const _i4.XmlElementName(
        'IntelligentTieringAndOperator',
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
