// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.metrics_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_and_operator.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/tag.dart' as _i3;

/// The discrete values of [MetricsFilter].
enum MetricsFilterType<T extends MetricsFilter> {
  /// The type for [MetricsFilterAccessPointArn].
  accessPointArn<MetricsFilterAccessPointArn>(r'AccessPointArn'),

  /// The type for [MetricsFilterAnd].
  and<MetricsFilterAnd>(r'And'),

  /// The type for [MetricsFilterPrefix].
  prefix<MetricsFilterPrefix>(r'Prefix'),

  /// The type for [MetricsFilterTag].
  tag<MetricsFilterTag>(r'Tag'),

  /// The type for an unknown value.
  sdkUnknown<MetricsFilterSdkUnknown>('sdkUnknown');

  /// The discrete values of [MetricsFilter].
  const MetricsFilterType(this.value);

  /// The Smithy value.
  final String value;
}

/// Specifies a metrics configuration filter. The metrics configuration only includes objects that meet the filter's criteria. A filter must be a prefix, an object tag, an access point ARN, or a conjunction (MetricsAndOperator). For more information, see [PutBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html).
abstract class MetricsFilter extends _i1.SmithyUnion<MetricsFilter> {
  const MetricsFilter._();

  const factory MetricsFilter.accessPointArn(String accessPointArn) =
      MetricsFilterAccessPointArn;

  const factory MetricsFilter.and(_i2.MetricsAndOperator and) =
      MetricsFilterAnd;

  const factory MetricsFilter.prefix(String prefix) = MetricsFilterPrefix;

  const factory MetricsFilter.tag(_i3.Tag tag) = MetricsFilterTag;

  const factory MetricsFilter.sdkUnknown(
    String name,
    Object value,
  ) = MetricsFilterSdkUnknown;

  static const List<_i1.SmithySerializer<MetricsFilter>> serializers = [
    MetricsFilterRestXmlSerializer()
  ];

  /// The access point ARN used when evaluating a metrics filter.
  String? get accessPointArn => null;

  /// A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.
  _i2.MetricsAndOperator? get and => null;

  /// The prefix used when evaluating a metrics filter.
  String? get prefix => null;

  /// The tag used when evaluating a metrics filter.
  _i3.Tag? get tag => null;
  MetricsFilterType get type;
  @override
  Object get value => (accessPointArn ?? and ?? prefix ?? tag)!;
  @override
  T? when<T>({
    T Function(String)? accessPointArn,
    T Function(_i2.MetricsAndOperator)? and,
    T Function(String)? prefix,
    T Function(_i3.Tag)? tag,
    T Function(
      String,
      Object,
    )?
        sdkUnknown,
  }) {
    if (this is MetricsFilterAccessPointArn) {
      return accessPointArn
          ?.call((this as MetricsFilterAccessPointArn).accessPointArn);
    }
    if (this is MetricsFilterAnd) {
      return and?.call((this as MetricsFilterAnd).and);
    }
    if (this is MetricsFilterPrefix) {
      return prefix?.call((this as MetricsFilterPrefix).prefix);
    }
    if (this is MetricsFilterTag) {
      return tag?.call((this as MetricsFilterTag).tag);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'MetricsFilter');
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

class MetricsFilterAccessPointArn extends MetricsFilter {
  const MetricsFilterAccessPointArn(this.accessPointArn) : super._();

  @override
  final String accessPointArn;

  @override
  MetricsFilterType get type => MetricsFilterType.accessPointArn;
  @override
  String get name => 'AccessPointArn';
}

class MetricsFilterAnd extends MetricsFilter {
  const MetricsFilterAnd(this.and) : super._();

  @override
  final _i2.MetricsAndOperator and;

  @override
  MetricsFilterType get type => MetricsFilterType.and;
  @override
  String get name => 'And';
}

class MetricsFilterPrefix extends MetricsFilter {
  const MetricsFilterPrefix(this.prefix) : super._();

  @override
  final String prefix;

  @override
  MetricsFilterType get type => MetricsFilterType.prefix;
  @override
  String get name => 'Prefix';
}

class MetricsFilterTag extends MetricsFilter {
  const MetricsFilterTag(this.tag) : super._();

  @override
  final _i3.Tag tag;

  @override
  MetricsFilterType get type => MetricsFilterType.tag;
  @override
  String get name => 'Tag';
}

class MetricsFilterSdkUnknown extends MetricsFilter {
  const MetricsFilterSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;

  @override
  MetricsFilterType get type => MetricsFilterType.sdkUnknown;
}

class MetricsFilterRestXmlSerializer
    extends _i1.StructuredSmithySerializer<MetricsFilter> {
  const MetricsFilterRestXmlSerializer() : super('MetricsFilter');

  @override
  Iterable<Type> get types => const [
        MetricsFilter,
        MetricsFilterAccessPointArn,
        MetricsFilterAnd,
        MetricsFilterPrefix,
        MetricsFilterTag,
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
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'AccessPointArn':
        return MetricsFilterAccessPointArn((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'And':
        return MetricsFilterAnd((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.MetricsAndOperator),
        ) as _i2.MetricsAndOperator));
      case 'Prefix':
        return MetricsFilterPrefix((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'Tag':
        return MetricsFilterTag((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.Tag),
        ) as _i3.Tag));
    }
    return MetricsFilter.sdkUnknown(
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
    (object as MetricsFilter);
    return [
      object.name,
      object.when<Object?>(
        accessPointArn: (String accessPointArn) => serializers.serialize(
          accessPointArn,
          specifiedType: const FullType(String),
        ),
        and: (_i2.MetricsAndOperator and) => serializers.serialize(
          and,
          specifiedType: const FullType(_i2.MetricsAndOperator),
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
