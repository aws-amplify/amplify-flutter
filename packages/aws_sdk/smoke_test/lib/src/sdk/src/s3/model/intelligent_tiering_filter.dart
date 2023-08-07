// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.intelligent_tiering_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_and_operator.dart';
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart';

part 'intelligent_tiering_filter.g.dart';

/// The `Filter` is used to identify objects that the S3 Intelligent-Tiering configuration applies to.
abstract class IntelligentTieringFilter
    with _i1.AWSEquatable<IntelligentTieringFilter>
    implements
        Built<IntelligentTieringFilter, IntelligentTieringFilterBuilder> {
  /// The `Filter` is used to identify objects that the S3 Intelligent-Tiering configuration applies to.
  factory IntelligentTieringFilter({
    String? prefix,
    Tag? tag,
    IntelligentTieringAndOperator? and,
  }) {
    return _$IntelligentTieringFilter._(
      prefix: prefix,
      tag: tag,
      and: and,
    );
  }

  /// The `Filter` is used to identify objects that the S3 Intelligent-Tiering configuration applies to.
  factory IntelligentTieringFilter.build(
          [void Function(IntelligentTieringFilterBuilder) updates]) =
      _$IntelligentTieringFilter;

  const IntelligentTieringFilter._();

  static const List<_i2.SmithySerializer<IntelligentTieringFilter>>
      serializers = [IntelligentTieringFilterRestXmlSerializer()];

  /// An object key name prefix that identifies the subset of objects to which the rule applies.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  String? get prefix;

  /// A container of a key value name pair.
  Tag? get tag;

  /// A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.
  IntelligentTieringAndOperator? get and;
  @override
  List<Object?> get props => [
        prefix,
        tag,
        and,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IntelligentTieringFilter')
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'tag',
        tag,
      )
      ..add(
        'and',
        and,
      );
    return helper.toString();
  }
}

class IntelligentTieringFilterRestXmlSerializer
    extends _i2.StructuredSmithySerializer<IntelligentTieringFilter> {
  const IntelligentTieringFilterRestXmlSerializer()
      : super('IntelligentTieringFilter');

  @override
  Iterable<Type> get types => const [
        IntelligentTieringFilter,
        _$IntelligentTieringFilter,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  IntelligentTieringFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelligentTieringFilterBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'And':
          result.and.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligentTieringAndOperator),
          ) as IntelligentTieringAndOperator));
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tag':
          result.tag.replace((serializers.deserialize(
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
    IntelligentTieringFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IntelligentTieringFilter',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final IntelligentTieringFilter(:and, :prefix, :tag) = object;
    if (and != null) {
      result$
        ..add(const _i2.XmlElementName('And'))
        ..add(serializers.serialize(
          and,
          specifiedType: const FullType(IntelligentTieringAndOperator),
        ));
    }
    if (prefix != null) {
      result$
        ..add(const _i2.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    if (tag != null) {
      result$
        ..add(const _i2.XmlElementName('Tag'))
        ..add(serializers.serialize(
          tag,
          specifiedType: const FullType(Tag),
        ));
    }
    return result$;
  }
}
