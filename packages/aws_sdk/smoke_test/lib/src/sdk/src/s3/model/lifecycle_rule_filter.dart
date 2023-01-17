// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.lifecycle_rule_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule_and_operator.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i4;

/// The discrete values of [LifecycleRuleFilter].
enum LifecycleRuleFilterType<T extends LifecycleRuleFilter> {
  /// The type for [LifecycleRuleFilterAnd].
  and<LifecycleRuleFilterAnd>(r'And'),

  /// The type for [LifecycleRuleFilterObjectSizeGreaterThan].
  objectSizeGreaterThan<LifecycleRuleFilterObjectSizeGreaterThan>(
      r'ObjectSizeGreaterThan'),

  /// The type for [LifecycleRuleFilterObjectSizeLessThan].
  objectSizeLessThan<LifecycleRuleFilterObjectSizeLessThan>(
      r'ObjectSizeLessThan'),

  /// The type for [LifecycleRuleFilterPrefix].
  prefix<LifecycleRuleFilterPrefix>(r'Prefix'),

  /// The type for [LifecycleRuleFilterTag].
  tag<LifecycleRuleFilterTag>(r'Tag'),

  /// The type for an unknown value.
  sdkUnknown<LifecycleRuleFilterSdkUnknown>('sdkUnknown');

  /// The discrete values of [LifecycleRuleFilter].
  const LifecycleRuleFilterType(this.value);

  /// The Smithy value.
  final String value;
}

/// The `Filter` is used to identify objects that a Lifecycle Rule applies to. A `Filter` must have exactly one of `Prefix`, `Tag`, or `And` specified.
abstract class LifecycleRuleFilter
    extends _i1.SmithyUnion<LifecycleRuleFilter> {
  const LifecycleRuleFilter._();

  const factory LifecycleRuleFilter.and(_i2.LifecycleRuleAndOperator and) =
      LifecycleRuleFilterAnd;

  const factory LifecycleRuleFilter.objectSizeGreaterThan(
          _i3.Int64 objectSizeGreaterThan) =
      LifecycleRuleFilterObjectSizeGreaterThan;

  const factory LifecycleRuleFilter.objectSizeLessThan(
      _i3.Int64 objectSizeLessThan) = LifecycleRuleFilterObjectSizeLessThan;

  const factory LifecycleRuleFilter.prefix(String prefix) =
      LifecycleRuleFilterPrefix;

  const factory LifecycleRuleFilter.tag(_i4.Tag tag) = LifecycleRuleFilterTag;

  const factory LifecycleRuleFilter.sdkUnknown(
    String name,
    Object value,
  ) = LifecycleRuleFilterSdkUnknown;

  static const List<_i1.SmithySerializer<LifecycleRuleFilter>> serializers = [
    LifecycleRuleFilterRestXmlSerializer()
  ];

  /// This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
  _i2.LifecycleRuleAndOperator? get and => null;

  /// Minimum object size to which the rule applies.
  _i3.Int64? get objectSizeGreaterThan => null;

  /// Maximum object size to which the rule applies.
  _i3.Int64? get objectSizeLessThan => null;

  /// Prefix identifying one or more objects to which the rule applies.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  String? get prefix => null;

  /// This tag must exist in the object's tag set in order for the rule to apply.
  _i4.Tag? get tag => null;
  LifecycleRuleFilterType get type;
  @override
  Object get value =>
      (and ?? objectSizeGreaterThan ?? objectSizeLessThan ?? prefix ?? tag)!;
  @override
  T? when<T>({
    T Function(_i2.LifecycleRuleAndOperator)? and,
    T Function(_i3.Int64)? objectSizeGreaterThan,
    T Function(_i3.Int64)? objectSizeLessThan,
    T Function(String)? prefix,
    T Function(_i4.Tag)? tag,
    T Function(
      String,
      Object,
    )?
        sdkUnknown,
  }) {
    if (this is LifecycleRuleFilterAnd) {
      return and?.call((this as LifecycleRuleFilterAnd).and);
    }
    if (this is LifecycleRuleFilterObjectSizeGreaterThan) {
      return objectSizeGreaterThan?.call(
          (this as LifecycleRuleFilterObjectSizeGreaterThan)
              .objectSizeGreaterThan);
    }
    if (this is LifecycleRuleFilterObjectSizeLessThan) {
      return objectSizeLessThan?.call(
          (this as LifecycleRuleFilterObjectSizeLessThan).objectSizeLessThan);
    }
    if (this is LifecycleRuleFilterPrefix) {
      return prefix?.call((this as LifecycleRuleFilterPrefix).prefix);
    }
    if (this is LifecycleRuleFilterTag) {
      return tag?.call((this as LifecycleRuleFilterTag).tag);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'LifecycleRuleFilter');
    if (and != null) {
      helper.add(
        r'and',
        and,
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
    return helper.toString();
  }
}

class LifecycleRuleFilterAnd extends LifecycleRuleFilter {
  const LifecycleRuleFilterAnd(this.and) : super._();

  @override
  final _i2.LifecycleRuleAndOperator and;

  @override
  LifecycleRuleFilterType get type => LifecycleRuleFilterType.and;
  @override
  String get name => 'And';
}

class LifecycleRuleFilterObjectSizeGreaterThan extends LifecycleRuleFilter {
  const LifecycleRuleFilterObjectSizeGreaterThan(this.objectSizeGreaterThan)
      : super._();

  @override
  final _i3.Int64 objectSizeGreaterThan;

  @override
  LifecycleRuleFilterType get type =>
      LifecycleRuleFilterType.objectSizeGreaterThan;
  @override
  String get name => 'ObjectSizeGreaterThan';
}

class LifecycleRuleFilterObjectSizeLessThan extends LifecycleRuleFilter {
  const LifecycleRuleFilterObjectSizeLessThan(this.objectSizeLessThan)
      : super._();

  @override
  final _i3.Int64 objectSizeLessThan;

  @override
  LifecycleRuleFilterType get type =>
      LifecycleRuleFilterType.objectSizeLessThan;
  @override
  String get name => 'ObjectSizeLessThan';
}

class LifecycleRuleFilterPrefix extends LifecycleRuleFilter {
  const LifecycleRuleFilterPrefix(this.prefix) : super._();

  @override
  final String prefix;

  @override
  LifecycleRuleFilterType get type => LifecycleRuleFilterType.prefix;
  @override
  String get name => 'Prefix';
}

class LifecycleRuleFilterTag extends LifecycleRuleFilter {
  const LifecycleRuleFilterTag(this.tag) : super._();

  @override
  final _i4.Tag tag;

  @override
  LifecycleRuleFilterType get type => LifecycleRuleFilterType.tag;
  @override
  String get name => 'Tag';
}

class LifecycleRuleFilterSdkUnknown extends LifecycleRuleFilter {
  const LifecycleRuleFilterSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;

  @override
  LifecycleRuleFilterType get type => LifecycleRuleFilterType.sdkUnknown;
}

class LifecycleRuleFilterRestXmlSerializer
    extends _i1.StructuredSmithySerializer<LifecycleRuleFilter> {
  const LifecycleRuleFilterRestXmlSerializer() : super('LifecycleRuleFilter');

  @override
  Iterable<Type> get types => const [
        LifecycleRuleFilter,
        LifecycleRuleFilterAnd,
        LifecycleRuleFilterObjectSizeGreaterThan,
        LifecycleRuleFilterObjectSizeLessThan,
        LifecycleRuleFilterPrefix,
        LifecycleRuleFilterTag,
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
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'And':
        return LifecycleRuleFilterAnd((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.LifecycleRuleAndOperator),
        ) as _i2.LifecycleRuleAndOperator));
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
      case 'Prefix':
        return LifecycleRuleFilterPrefix((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'Tag':
        return LifecycleRuleFilterTag((serializers.deserialize(
          value,
          specifiedType: const FullType(_i4.Tag),
        ) as _i4.Tag));
    }
    return LifecycleRuleFilter.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    (object as LifecycleRuleFilter);
    return [
      object.name,
      object.when<Object?>(
        and: (_i2.LifecycleRuleAndOperator and) => serializers.serialize(
          and,
          specifiedType: const FullType(_i2.LifecycleRuleAndOperator),
        ),
        objectSizeGreaterThan: (_i3.Int64 objectSizeGreaterThan) =>
            serializers.serialize(
          objectSizeGreaterThan,
          specifiedType: const FullType(_i3.Int64),
        ),
        objectSizeLessThan: (_i3.Int64 objectSizeLessThan) =>
            serializers.serialize(
          objectSizeLessThan,
          specifiedType: const FullType(_i3.Int64),
        ),
        prefix: (String prefix) => serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ),
        tag: (_i4.Tag tag) => serializers.serialize(
          tag,
          specifiedType: const FullType(_i4.Tag),
        ),
        sdkUnknown: (
          String _,
          Object sdkUnknown,
        ) =>
            sdkUnknown,
      )!,
    ];
  }
}
