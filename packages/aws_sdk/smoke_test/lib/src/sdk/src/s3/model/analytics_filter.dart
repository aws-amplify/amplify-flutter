// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.analytics_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_and_operator.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i3;

/// The filter used to describe a set of objects for analyses. A filter must have exactly one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be considered in any analysis.
abstract class AnalyticsFilter extends _i1.SmithyUnion<AnalyticsFilter> {
  const AnalyticsFilter._();

  const factory AnalyticsFilter.and(_i2.AnalyticsAndOperator and) =
      AnalyticsFilterAnd;

  const factory AnalyticsFilter.prefix(String prefix) = AnalyticsFilterPrefix;

  const factory AnalyticsFilter.tag(_i3.Tag tag) = AnalyticsFilterTag;

  const factory AnalyticsFilter.sdkUnknown(
    String name,
    Object value,
  ) = AnalyticsFilterSdkUnknown;

  static const List<_i1.SmithySerializer<AnalyticsFilter>> serializers = [
    AnalyticsFilterRestXmlSerializer()
  ];

  /// A conjunction (logical AND) of predicates, which is used in evaluating an analytics filter. The operator must have at least two predicates.
  _i2.AnalyticsAndOperator? get and => null;

  /// The prefix to use when evaluating an analytics filter.
  String? get prefix => null;

  /// The tag to use when evaluating an analytics filter.
  _i3.Tag? get tag => null;
  @override
  Object get value => (and ?? prefix ?? tag)!;
  @override
  T? when<T>({
    T Function(_i2.AnalyticsAndOperator)? and,
    T Function(String)? prefix,
    T Function(_i3.Tag)? tag,
    T Function(
      String,
      Object,
    )?
        sdkUnknown,
  }) {
    if (this is AnalyticsFilterAnd) {
      return and?.call((this as AnalyticsFilterAnd).and);
    }
    if (this is AnalyticsFilterPrefix) {
      return prefix?.call((this as AnalyticsFilterPrefix).prefix);
    }
    if (this is AnalyticsFilterTag) {
      return tag?.call((this as AnalyticsFilterTag).tag);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AnalyticsFilter');
    if (and != null) {
      helper.add(
        r'and',
        and,
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

class AnalyticsFilterAnd extends AnalyticsFilter {
  const AnalyticsFilterAnd(this.and) : super._();

  @override
  final _i2.AnalyticsAndOperator and;

  @override
  String get name => 'And';
}

class AnalyticsFilterPrefix extends AnalyticsFilter {
  const AnalyticsFilterPrefix(this.prefix) : super._();

  @override
  final String prefix;

  @override
  String get name => 'Prefix';
}

class AnalyticsFilterTag extends AnalyticsFilter {
  const AnalyticsFilterTag(this.tag) : super._();

  @override
  final _i3.Tag tag;

  @override
  String get name => 'Tag';
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
}

class AnalyticsFilterRestXmlSerializer
    extends _i1.StructuredSmithySerializer<AnalyticsFilter> {
  const AnalyticsFilterRestXmlSerializer() : super('AnalyticsFilter');

  @override
  Iterable<Type> get types => const [
        AnalyticsFilter,
        AnalyticsFilterAnd,
        AnalyticsFilterPrefix,
        AnalyticsFilterTag,
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
      case 'And':
        return AnalyticsFilter.and((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.AnalyticsAndOperator),
        ) as _i2.AnalyticsAndOperator));
      case 'Prefix':
        return AnalyticsFilter.prefix((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'Tag':
        return AnalyticsFilter.tag((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.Tag),
        ) as _i3.Tag));
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
        and: (_i2.AnalyticsAndOperator and) => serializers.serialize(
          and,
          specifiedType: const FullType(_i2.AnalyticsAndOperator),
        ),
        prefix: (String prefix) => serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ),
        tag: (_i3.Tag tag) => serializers.serialize(
          tag,
          specifiedType: const FullType(_i3.Tag),
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
