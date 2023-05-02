// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.replication_rule_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule_and_operator.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i2;

/// The discrete values of [ReplicationRuleFilter].
enum ReplicationRuleFilterType<T extends ReplicationRuleFilter> {
  /// The type for [ReplicationRuleFilterPrefix].
  prefix<ReplicationRuleFilterPrefix>(r'Prefix'),

  /// The type for [ReplicationRuleFilterTag].
  tag<ReplicationRuleFilterTag>(r'Tag'),

  /// The type for [ReplicationRuleFilterAnd].
  and<ReplicationRuleFilterAnd>(r'And'),

  /// The type for an unknown value.
  sdkUnknown<ReplicationRuleFilterSdkUnknown>('sdkUnknown');

  /// The discrete values of [ReplicationRuleFilter].
  const ReplicationRuleFilterType(this.value);

  /// The Smithy value.
  final String value;
}

/// A filter that identifies the subset of objects to which the replication rule applies. A `Filter` must specify exactly one `Prefix`, `Tag`, or an `And` child element.
abstract class ReplicationRuleFilter
    extends _i1.SmithyUnion<ReplicationRuleFilter> {
  const ReplicationRuleFilter._();

  const factory ReplicationRuleFilter.prefix(String prefix) =
      ReplicationRuleFilterPrefix;

  const factory ReplicationRuleFilter.tag(_i2.Tag tag) =
      ReplicationRuleFilterTag;

  const factory ReplicationRuleFilter.and(_i3.ReplicationRuleAndOperator and) =
      ReplicationRuleFilterAnd;

  const factory ReplicationRuleFilter.sdkUnknown(
    String name,
    Object value,
  ) = ReplicationRuleFilterSdkUnknown;

  static const List<_i1.SmithySerializer<ReplicationRuleFilter>> serializers = [
    ReplicationRuleFilterRestXmlSerializer()
  ];

  /// An object key name prefix that identifies the subset of objects to which the rule applies.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  String? get prefix => null;

  /// A container for specifying a tag key and value.
  ///
  /// The rule applies only to objects that have the tag in their tag set.
  _i2.Tag? get tag => null;

  /// A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter. For example:
  ///
  /// *   If you specify both a `Prefix` and a `Tag` filter, wrap these filters in an `And` tag.
  ///
  /// *   If you specify a filter based on multiple tags, wrap the `Tag` elements in an `And` tag.
  _i3.ReplicationRuleAndOperator? get and => null;
  ReplicationRuleFilterType get type;
  @override
  Object get value => (prefix ?? tag ?? and)!;
  @override
  T? when<T>({
    T Function(String)? prefix,
    T Function(_i2.Tag)? tag,
    T Function(_i3.ReplicationRuleAndOperator)? and,
    T Function(
      String,
      Object,
    )?
        sdkUnknown,
  }) {
    if (this is ReplicationRuleFilterPrefix) {
      return prefix?.call((this as ReplicationRuleFilterPrefix).prefix);
    }
    if (this is ReplicationRuleFilterTag) {
      return tag?.call((this as ReplicationRuleFilterTag).tag);
    }
    if (this is ReplicationRuleFilterAnd) {
      return and?.call((this as ReplicationRuleFilterAnd).and);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'ReplicationRuleFilter');
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
    if (and != null) {
      helper.add(
        r'and',
        and,
      );
    }
    return helper.toString();
  }
}

class ReplicationRuleFilterPrefix extends ReplicationRuleFilter {
  const ReplicationRuleFilterPrefix(this.prefix) : super._();

  @override
  final String prefix;

  @override
  ReplicationRuleFilterType get type => ReplicationRuleFilterType.prefix;
  @override
  String get name => 'Prefix';
}

class ReplicationRuleFilterTag extends ReplicationRuleFilter {
  const ReplicationRuleFilterTag(this.tag) : super._();

  @override
  final _i2.Tag tag;

  @override
  ReplicationRuleFilterType get type => ReplicationRuleFilterType.tag;
  @override
  String get name => 'Tag';
}

class ReplicationRuleFilterAnd extends ReplicationRuleFilter {
  const ReplicationRuleFilterAnd(this.and) : super._();

  @override
  final _i3.ReplicationRuleAndOperator and;

  @override
  ReplicationRuleFilterType get type => ReplicationRuleFilterType.and;
  @override
  String get name => 'And';
}

class ReplicationRuleFilterSdkUnknown extends ReplicationRuleFilter {
  const ReplicationRuleFilterSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;

  @override
  ReplicationRuleFilterType get type => ReplicationRuleFilterType.sdkUnknown;
}

class ReplicationRuleFilterRestXmlSerializer
    extends _i1.StructuredSmithySerializer<ReplicationRuleFilter> {
  const ReplicationRuleFilterRestXmlSerializer()
      : super('ReplicationRuleFilter');

  @override
  Iterable<Type> get types => const [
        ReplicationRuleFilter,
        ReplicationRuleFilterPrefix,
        ReplicationRuleFilterTag,
        ReplicationRuleFilterAnd,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ReplicationRuleFilter deserialize(
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
      case 'Prefix':
        return ReplicationRuleFilterPrefix((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'Tag':
        return ReplicationRuleFilterTag((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.Tag),
        ) as _i2.Tag));
      case 'And':
        return ReplicationRuleFilterAnd((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.ReplicationRuleAndOperator),
        ) as _i3.ReplicationRuleAndOperator));
    }
    return ReplicationRuleFilter.sdkUnknown(
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
    (object as ReplicationRuleFilter);
    return [
      object.name,
      object.when<Object?>(
        prefix: (String prefix) => serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ),
        tag: (_i2.Tag tag) => serializers.serialize(
          tag,
          specifiedType: const FullType(_i2.Tag),
        ),
        and: (_i3.ReplicationRuleAndOperator and) => serializers.serialize(
          and,
          specifiedType: const FullType(_i3.ReplicationRuleAndOperator),
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
