// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.metrics_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_and_operator.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i2;

/// Specifies a metrics configuration filter. The metrics configuration only includes objects that meet the filter's criteria. A filter must be a prefix, an object tag, an access point ARN, or a conjunction (MetricsAndOperator). For more information, see [PutBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html).
sealed class MetricsFilter extends _i1.SmithyUnion<MetricsFilter> {
  const MetricsFilter._();

  const factory MetricsFilter.prefix(String prefix) = MetricsFilterPrefix;

  factory MetricsFilter.tag({
    required String key,
    required String value,
  }) =>
      MetricsFilterTag(_i2.Tag(
        key: key,
        value: value,
      ));

  const factory MetricsFilter.accessPointArn(String accessPointArn) =
      MetricsFilterAccessPointArn;

  factory MetricsFilter.and({
    String? prefix,
    List<_i2.Tag>? tags,
    String? accessPointArn,
  }) =>
      MetricsFilterAnd(_i3.MetricsAndOperator(
        prefix: prefix,
        tags: tags,
        accessPointArn: accessPointArn,
      ));

  const factory MetricsFilter.sdkUnknown(
    String name,
    Object value,
  ) = MetricsFilterSdkUnknown;

  static const List<_i1.SmithySerializer<MetricsFilter>> serializers = [
    MetricsFilterRestXmlSerializer()
  ];

  /// The prefix used when evaluating a metrics filter.
  String? get prefix => null;

  /// The tag used when evaluating a metrics filter.
  _i2.Tag? get tag => null;

  /// The access point ARN used when evaluating a metrics filter.
  String? get accessPointArn => null;

  /// A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.
  _i3.MetricsAndOperator? get and => null;
  @override
  Object get value => (prefix ?? tag ?? accessPointArn ?? and)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'MetricsFilter');
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
    if (accessPointArn != null) {
      helper.add(
        r'accessPointArn',
        accessPointArn,
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

final class MetricsFilterPrefix extends MetricsFilter {
  const MetricsFilterPrefix(this.prefix) : super._();

  @override
  final String prefix;

  @override
  String get name => 'Prefix';
}

final class MetricsFilterTag extends MetricsFilter {
  const MetricsFilterTag(this.tag) : super._();

  @override
  final _i2.Tag tag;

  @override
  String get name => 'Tag';
}

final class MetricsFilterAccessPointArn extends MetricsFilter {
  const MetricsFilterAccessPointArn(this.accessPointArn) : super._();

  @override
  final String accessPointArn;

  @override
  String get name => 'AccessPointArn';
}

final class MetricsFilterAnd extends MetricsFilter {
  const MetricsFilterAnd(this.and) : super._();

  @override
  final _i3.MetricsAndOperator and;

  @override
  String get name => 'And';
}

final class MetricsFilterSdkUnknown extends MetricsFilter {
  const MetricsFilterSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class MetricsFilterRestXmlSerializer
    extends _i1.StructuredSmithySerializer<MetricsFilter> {
  const MetricsFilterRestXmlSerializer() : super('MetricsFilter');

  @override
  Iterable<Type> get types => const [
        MetricsFilter,
        MetricsFilterPrefix,
        MetricsFilterTag,
        MetricsFilterAccessPointArn,
        MetricsFilterAnd,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  MetricsFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'Prefix':
        return MetricsFilterPrefix((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'Tag':
        return MetricsFilterTag((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.Tag),
        ) as _i2.Tag));
      case 'AccessPointArn':
        return MetricsFilterAccessPointArn((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'And':
        return MetricsFilterAnd((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.MetricsAndOperator),
        ) as _i3.MetricsAndOperator));
    }
    return MetricsFilter.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MetricsFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        MetricsFilterPrefix(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(String),
          ),
        MetricsFilterTag(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i2.Tag),
          ),
        MetricsFilterAccessPointArn(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(String),
          ),
        MetricsFilterAnd(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i3.MetricsAndOperator),
          ),
        MetricsFilterSdkUnknown(:final value) => value,
      },
    ];
  }
}
