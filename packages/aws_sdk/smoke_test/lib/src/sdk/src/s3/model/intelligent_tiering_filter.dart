// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.intelligent_tiering_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_and_operator.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i3;

part 'intelligent_tiering_filter.g.dart';

/// The `Filter` is used to identify objects that the S3 Intelligent-Tiering configuration applies to.
abstract class IntelligentTieringFilter
    with _i1.AWSEquatable<IntelligentTieringFilter>
    implements
        Built<IntelligentTieringFilter, IntelligentTieringFilterBuilder> {
  /// The `Filter` is used to identify objects that the S3 Intelligent-Tiering configuration applies to.
  factory IntelligentTieringFilter({
    _i2.IntelligentTieringAndOperator? and,
    String? prefix,
    _i3.Tag? tag,
  }) {
    return _$IntelligentTieringFilter._(
      and: and,
      prefix: prefix,
      tag: tag,
    );
  }

  /// The `Filter` is used to identify objects that the S3 Intelligent-Tiering configuration applies to.
  factory IntelligentTieringFilter.build(
          [void Function(IntelligentTieringFilterBuilder) updates]) =
      _$IntelligentTieringFilter;

  const IntelligentTieringFilter._();

  static const List<_i4.SmithySerializer> serializers = [
    IntelligentTieringFilterRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IntelligentTieringFilterBuilder b) {}

  /// A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.
  _i2.IntelligentTieringAndOperator? get and;

  /// An object key name prefix that identifies the subset of objects to which the rule applies.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  String? get prefix;

  /// A container of a key value name pair.
  _i3.Tag? get tag;
  @override
  List<Object?> get props => [
        and,
        prefix,
        tag,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IntelligentTieringFilter');
    helper.add(
      'and',
      and,
    );
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'tag',
      tag,
    );
    return helper.toString();
  }
}

class IntelligentTieringFilterRestXmlSerializer
    extends _i4.StructuredSmithySerializer<IntelligentTieringFilter> {
  const IntelligentTieringFilterRestXmlSerializer()
      : super('IntelligentTieringFilter');

  @override
  Iterable<Type> get types => const [
        IntelligentTieringFilter,
        _$IntelligentTieringFilter,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'And':
          if (value != null) {
            result.and.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IntelligentTieringAndOperator),
            ) as _i2.IntelligentTieringAndOperator));
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
            result.tag.replace((serializers.deserialize(
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
    final payload = (object as IntelligentTieringFilter);
    final result = <Object?>[
      const _i4.XmlElementName(
        'IntelligentTieringFilter',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.and != null) {
      result
        ..add(const _i4.XmlElementName('And'))
        ..add(serializers.serialize(
          payload.and!,
          specifiedType: const FullType(_i2.IntelligentTieringAndOperator),
        ));
    }
    if (payload.prefix != null) {
      result
        ..add(const _i4.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tag != null) {
      result
        ..add(const _i4.XmlElementName('Tag'))
        ..add(serializers.serialize(
          payload.tag!,
          specifiedType: const FullType(_i3.Tag),
        ));
    }
    return result;
  }
}
