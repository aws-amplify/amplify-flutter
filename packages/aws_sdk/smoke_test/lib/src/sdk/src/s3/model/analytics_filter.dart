// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.analytics_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_and_operator.dart';
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart';

/// The filter used to describe a set of objects for analyses. A filter must have exactly one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be considered in any analysis.
sealed class AnalyticsFilter extends _i1.SmithyUnion<AnalyticsFilter> {
  const AnalyticsFilter._();

  const factory AnalyticsFilter.prefix(String prefix) = AnalyticsFilterPrefix$;

  factory AnalyticsFilter.tag({
    required String key,
    required String value,
  }) =>
      AnalyticsFilterTag$(Tag(
        key: key,
        value: value,
      ));

  factory AnalyticsFilter.and({
    String? prefix,
    List<Tag>? tags,
  }) =>
      AnalyticsFilterAnd$(AnalyticsAndOperator(
        prefix: prefix,
        tags: tags,
      ));

  const factory AnalyticsFilter.sdkUnknown(
    String name,
    Object value,
  ) = AnalyticsFilterSdkUnknown$;

  static const List<_i1.SmithySerializer<AnalyticsFilter>> serializers = [
    AnalyticsFilterRestXmlSerializer()
  ];

  /// The prefix to use when evaluating an analytics filter.
  String? get prefix => null;

  /// The tag to use when evaluating an analytics filter.
  Tag? get tag => null;

  /// A conjunction (logical AND) of predicates, which is used in evaluating an analytics filter. The operator must have at least two predicates.
  AnalyticsAndOperator? get and => null;
  @override
  Object get value => (prefix ?? tag ?? and)!;
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

final class AnalyticsFilterPrefix$ extends AnalyticsFilter {
  const AnalyticsFilterPrefix$(this.prefix) : super._();

  @override
  final String prefix;

  @override
  String get name => 'Prefix';
}

final class AnalyticsFilterTag$ extends AnalyticsFilter {
  const AnalyticsFilterTag$(this.tag) : super._();

  @override
  final Tag tag;

  @override
  String get name => 'Tag';
}

final class AnalyticsFilterAnd$ extends AnalyticsFilter {
  const AnalyticsFilterAnd$(this.and) : super._();

  @override
  final AnalyticsAndOperator and;

  @override
  String get name => 'And';
}

final class AnalyticsFilterSdkUnknown$ extends AnalyticsFilter {
  const AnalyticsFilterSdkUnknown$(
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
        AnalyticsFilterPrefix$,
        AnalyticsFilterTag$,
        AnalyticsFilterAnd$,
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
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'Prefix':
        return AnalyticsFilterPrefix$((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'Tag':
        return AnalyticsFilterTag$((serializers.deserialize(
          value,
          specifiedType: const FullType(Tag),
        ) as Tag));
      case 'And':
        return AnalyticsFilterAnd$((serializers.deserialize(
          value,
          specifiedType: const FullType(AnalyticsAndOperator),
        ) as AnalyticsAndOperator));
    }
    return AnalyticsFilter.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AnalyticsFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        AnalyticsFilterPrefix$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(String),
          ),
        AnalyticsFilterTag$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(Tag),
          ),
        AnalyticsFilterAnd$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(AnalyticsAndOperator),
          ),
        AnalyticsFilterSdkUnknown$(:final value) => value,
      },
    ];
  }
}
