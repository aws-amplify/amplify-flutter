// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.analytics_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_and_operator.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i2;

/// The discrete values of [AnalyticsFilter].
enum AnalyticsFilterType<T extends AnalyticsFilter> {
  /// The type for [AnalyticsFilterPrefix].
  prefix<AnalyticsFilterPrefix>(r'Prefix'),

  /// The type for [AnalyticsFilterTag].
  tag<AnalyticsFilterTag>(r'Tag'),

  /// The type for [AnalyticsFilterAnd].
  and<AnalyticsFilterAnd>(r'And'),

  /// The type for an unknown value.
  sdkUnknown<AnalyticsFilterSdkUnknown>('sdkUnknown');

  /// The discrete values of [AnalyticsFilter].
  const AnalyticsFilterType(this.value);

  /// The Smithy value.
  final String value;
}

/// The filter used to describe a set of objects for analyses. A filter must have exactly one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be considered in any analysis.
abstract class AnalyticsFilter extends _i1.SmithyUnion<AnalyticsFilter> {
  const AnalyticsFilter._();

  const factory AnalyticsFilter.prefix(String prefix) = AnalyticsFilterPrefix;

  const factory AnalyticsFilter.tag(_i2.Tag tag) = AnalyticsFilterTag;

  const factory AnalyticsFilter.and(_i3.AnalyticsAndOperator and) =
      AnalyticsFilterAnd;

  const factory AnalyticsFilter.sdkUnknown(
    String name,
    Object value,
  ) = AnalyticsFilterSdkUnknown;

  static const List<_i1.SmithySerializer<AnalyticsFilter>> serializers = [
    AnalyticsFilterRestXmlSerializer()
  ];

  /// The prefix to use when evaluating an analytics filter.
  String? get prefix => null;

  /// The tag to use when evaluating an analytics filter.
  _i2.Tag? get tag => null;

  /// A conjunction (logical AND) of predicates, which is used in evaluating an analytics filter. The operator must have at least two predicates.
  _i3.AnalyticsAndOperator? get and => null;
  AnalyticsFilterType get type;
  @override
  Object get value => (prefix ?? tag ?? and)!;
  @override
  T? when<T>({
    T Function(String)? prefix,
    T Function(_i2.Tag)? tag,
    T Function(_i3.AnalyticsAndOperator)? and,
    T Function(
      String,
      Object,
    )? sdkUnknown,
  }) {
    if (this is AnalyticsFilterPrefix) {
      return prefix?.call((this as AnalyticsFilterPrefix).prefix);
    }
    if (this is AnalyticsFilterTag) {
      return tag?.call((this as AnalyticsFilterTag).tag);
    }
    if (this is AnalyticsFilterAnd) {
      return and?.call((this as AnalyticsFilterAnd).and);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AnalyticsFilter');
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

class AnalyticsFilterPrefix extends AnalyticsFilter {
  const AnalyticsFilterPrefix(this.prefix) : super._();

  @override
  final String prefix;

  @override
  AnalyticsFilterType get type => AnalyticsFilterType.prefix;
  @override
  String get name => 'Prefix';
}

class AnalyticsFilterTag extends AnalyticsFilter {
  const AnalyticsFilterTag(this.tag) : super._();

  @override
  final _i2.Tag tag;

  @override
  AnalyticsFilterType get type => AnalyticsFilterType.tag;
  @override
  String get name => 'Tag';
}

class AnalyticsFilterAnd extends AnalyticsFilter {
  const AnalyticsFilterAnd(this.and) : super._();

  @override
  final _i3.AnalyticsAndOperator and;

  @override
  AnalyticsFilterType get type => AnalyticsFilterType.and;
  @override
  String get name => 'And';
}

class AnalyticsFilterSdkUnknown extends AnalyticsFilter {
  const AnalyticsFilterSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;

  @override
  AnalyticsFilterType get type => AnalyticsFilterType.sdkUnknown;
}

class AnalyticsFilterRestXmlSerializer
    extends _i1.StructuredSmithySerializer<AnalyticsFilter> {
  const AnalyticsFilterRestXmlSerializer() : super('AnalyticsFilter');

  @override
  Iterable<Type> get types => const [
        AnalyticsFilter,
        AnalyticsFilterPrefix,
        AnalyticsFilterTag,
        AnalyticsFilterAnd,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  AnalyticsFilter deserialize(
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
        return AnalyticsFilterPrefix((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'Tag':
        return AnalyticsFilterTag((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.Tag),
        ) as _i2.Tag));
      case 'And':
        return AnalyticsFilterAnd((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.AnalyticsAndOperator),
        ) as _i3.AnalyticsAndOperator));
    }
    return AnalyticsFilter.sdkUnknown(
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
    (object as AnalyticsFilter);
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
        and: (_i3.AnalyticsAndOperator and) => serializers.serialize(
          and,
          specifiedType: const FullType(_i3.AnalyticsAndOperator),
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
