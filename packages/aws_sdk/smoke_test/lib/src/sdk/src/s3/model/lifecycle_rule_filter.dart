// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.lifecycle_rule_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule_and_operator.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i2;

/// The `Filter` is used to identify objects that a Lifecycle Rule applies to. A `Filter` must have exactly one of `Prefix`, `Tag`, or `And` specified.
sealed class LifecycleRuleFilter extends _i1.SmithyUnion<LifecycleRuleFilter> {
  const LifecycleRuleFilter._();

  const factory LifecycleRuleFilter.prefix(String prefix) =
      LifecycleRuleFilterPrefix;

  factory LifecycleRuleFilter.tag({
    required String key,
    required String value,
  }) =>
      LifecycleRuleFilterTag(_i2.Tag(
        key: key,
        value: value,
      ));

  const factory LifecycleRuleFilter.objectSizeGreaterThan(
          _i3.Int64 objectSizeGreaterThan) =
      LifecycleRuleFilterObjectSizeGreaterThan;

  const factory LifecycleRuleFilter.objectSizeLessThan(
      _i3.Int64 objectSizeLessThan) = LifecycleRuleFilterObjectSizeLessThan;

  factory LifecycleRuleFilter.and({
    String? prefix,
    List<_i2.Tag>? tags,
    _i3.Int64? objectSizeGreaterThan,
    _i3.Int64? objectSizeLessThan,
  }) =>
      LifecycleRuleFilterAnd(_i4.LifecycleRuleAndOperator(
        prefix: prefix,
        tags: tags,
        objectSizeGreaterThan: objectSizeGreaterThan,
        objectSizeLessThan: objectSizeLessThan,
      ));

  const factory LifecycleRuleFilter.sdkUnknown(
    String name,
    Object value,
  ) = LifecycleRuleFilterSdkUnknown;

  static const List<_i1.SmithySerializer<LifecycleRuleFilter>> serializers = [
    LifecycleRuleFilterRestXmlSerializer()
  ];

  /// Prefix identifying one or more objects to which the rule applies.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  String? get prefix => null;

  /// This tag must exist in the object's tag set in order for the rule to apply.
  _i2.Tag? get tag => null;

  /// Minimum object size to which the rule applies.
  _i3.Int64? get objectSizeGreaterThan => null;

  /// Maximum object size to which the rule applies.
  _i3.Int64? get objectSizeLessThan => null;

  /// This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
  _i4.LifecycleRuleAndOperator? get and => null;
  @override
  Object get value =>
      (prefix ?? tag ?? objectSizeGreaterThan ?? objectSizeLessThan ?? and)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'LifecycleRuleFilter');
    if (prefix != null) {
      helper.add(
        r'prefix',
        prefix,
      );
    }
    if (tag != null) {
      helper.add(
        r'tag',
        tag,
      );
    }
    if (objectSizeGreaterThan != null) {
      helper.add(
        r'objectSizeGreaterThan',
        objectSizeGreaterThan,
      );
    }
    if (objectSizeLessThan != null) {
      helper.add(
        r'objectSizeLessThan',
        objectSizeLessThan,
      );
    }
    if (and != null) {
      helper.add(
        r'and',
        and,
      );
    }
    return helper.toString();
  }
}

final class LifecycleRuleFilterPrefix extends LifecycleRuleFilter {
  const LifecycleRuleFilterPrefix(this.prefix) : super._();

  @override
  final String prefix;

  @override
  String get name => 'Prefix';
}

final class LifecycleRuleFilterTag extends LifecycleRuleFilter {
  const LifecycleRuleFilterTag(this.tag) : super._();

  @override
  final _i2.Tag tag;

  @override
  String get name => 'Tag';
}

final class LifecycleRuleFilterObjectSizeGreaterThan
    extends LifecycleRuleFilter {
  const LifecycleRuleFilterObjectSizeGreaterThan(this.objectSizeGreaterThan)
      : super._();

  @override
  final _i3.Int64 objectSizeGreaterThan;

  @override
  String get name => 'ObjectSizeGreaterThan';
}

final class LifecycleRuleFilterObjectSizeLessThan extends LifecycleRuleFilter {
  const LifecycleRuleFilterObjectSizeLessThan(this.objectSizeLessThan)
      : super._();

  @override
  final _i3.Int64 objectSizeLessThan;

  @override
  String get name => 'ObjectSizeLessThan';
}

final class LifecycleRuleFilterAnd extends LifecycleRuleFilter {
  const LifecycleRuleFilterAnd(this.and) : super._();

  @override
  final _i4.LifecycleRuleAndOperator and;

  @override
  String get name => 'And';
}

final class LifecycleRuleFilterSdkUnknown extends LifecycleRuleFilter {
  const LifecycleRuleFilterSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class LifecycleRuleFilterRestXmlSerializer
    extends _i1.StructuredSmithySerializer<LifecycleRuleFilter> {
  const LifecycleRuleFilterRestXmlSerializer() : super('LifecycleRuleFilter');

  @override
  Iterable<Type> get types => const [
        LifecycleRuleFilter,
        LifecycleRuleFilterPrefix,
        LifecycleRuleFilterTag,
        LifecycleRuleFilterObjectSizeGreaterThan,
        LifecycleRuleFilterObjectSizeLessThan,
        LifecycleRuleFilterAnd,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  LifecycleRuleFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'Prefix':
        return LifecycleRuleFilterPrefix((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'Tag':
        return LifecycleRuleFilterTag((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.Tag),
        ) as _i2.Tag));
      case 'ObjectSizeGreaterThan':
        return LifecycleRuleFilterObjectSizeGreaterThan(
            (serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.Int64),
        ) as _i3.Int64));
      case 'ObjectSizeLessThan':
        return LifecycleRuleFilterObjectSizeLessThan((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.Int64),
        ) as _i3.Int64));
      case 'And':
        return LifecycleRuleFilterAnd((serializers.deserialize(
          value,
          specifiedType: const FullType(_i4.LifecycleRuleAndOperator),
        ) as _i4.LifecycleRuleAndOperator));
    }
    return LifecycleRuleFilter.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LifecycleRuleFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        LifecycleRuleFilterPrefix(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(String),
          ),
        LifecycleRuleFilterTag(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i2.Tag),
          ),
        LifecycleRuleFilterObjectSizeGreaterThan(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ),
        LifecycleRuleFilterObjectSizeLessThan(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ),
        LifecycleRuleFilterAnd(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i4.LifecycleRuleAndOperator),
          ),
        LifecycleRuleFilterSdkUnknown(:final value) => value,
      },
    ];
  }
}
