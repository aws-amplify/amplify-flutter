// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.s3_key_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/filter_rule.dart';

part 's3_key_filter.g.dart';

/// A container for object key name prefix and suffix filtering rules.
abstract class S3KeyFilter
    with _i1.AWSEquatable<S3KeyFilter>
    implements Built<S3KeyFilter, S3KeyFilterBuilder> {
  /// A container for object key name prefix and suffix filtering rules.
  factory S3KeyFilter({List<FilterRule>? filterRules}) {
    return _$S3KeyFilter._(
        filterRules: filterRules == null ? null : _i2.BuiltList(filterRules));
  }

  /// A container for object key name prefix and suffix filtering rules.
  factory S3KeyFilter.build([void Function(S3KeyFilterBuilder) updates]) =
      _$S3KeyFilter;

  const S3KeyFilter._();

  static const List<_i3.SmithySerializer<S3KeyFilter>> serializers = [
    S3KeyFilterRestXmlSerializer()
  ];

  /// A list of containers for the key-value pair that defines the criteria for the filter rule.
  _i2.BuiltList<FilterRule>? get filterRules;
  @override
  List<Object?> get props => [filterRules];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('S3KeyFilter')
      ..add(
        'filterRules',
        filterRules,
      );
    return helper.toString();
  }
}

class S3KeyFilterRestXmlSerializer
    extends _i3.StructuredSmithySerializer<S3KeyFilter> {
  const S3KeyFilterRestXmlSerializer() : super('S3KeyFilter');

  @override
  Iterable<Type> get types => const [
        S3KeyFilter,
        _$S3KeyFilter,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  S3KeyFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = S3KeyFilterBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'FilterRule':
          result.filterRules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(FilterRule),
          ) as FilterRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    S3KeyFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'S3KeyFilter',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final S3KeyFilter(:filterRules) = object;
    if (filterRules != null) {
      result$.addAll(
          const _i3.XmlBuiltListSerializer(memberName: 'FilterRule').serialize(
        serializers,
        filterRules,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(FilterRule)],
        ),
      ));
    }
    return result$;
  }
}
