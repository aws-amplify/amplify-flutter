// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.filter_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/filter_rule_name.dart' as _i2;

part 'filter_rule.g.dart';

/// Specifies the Amazon S3 object key name to filter on and whether to filter on the suffix or prefix of the key name.
abstract class FilterRule
    with _i1.AWSEquatable<FilterRule>
    implements Built<FilterRule, FilterRuleBuilder> {
  /// Specifies the Amazon S3 object key name to filter on and whether to filter on the suffix or prefix of the key name.
  factory FilterRule({
    _i2.FilterRuleName? name,
    String? value,
  }) {
    return _$FilterRule._(
      name: name,
      value: value,
    );
  }

  /// Specifies the Amazon S3 object key name to filter on and whether to filter on the suffix or prefix of the key name.
  factory FilterRule.build([void Function(FilterRuleBuilder) updates]) =
      _$FilterRule;

  const FilterRule._();

  static const List<_i3.SmithySerializer<FilterRule>> serializers = [
    FilterRuleRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FilterRuleBuilder b) {}

  /// The object key name prefix or suffix identifying one or more objects to which the filtering rule applies. The maximum length is 1,024 characters. Overlapping prefixes and suffixes are not supported. For more information, see [Configuring Event Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the _Amazon S3 User Guide_.
  _i2.FilterRuleName? get name;

  /// The value that the filter searches for in object key names.
  String? get value;
  @override
  List<Object?> get props => [
        name,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FilterRule')
      ..add(
        'name',
        name,
      )
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class FilterRuleRestXmlSerializer
    extends _i3.StructuredSmithySerializer<FilterRule> {
  const FilterRuleRestXmlSerializer() : super('FilterRule');

  @override
  Iterable<Type> get types => const [
        FilterRule,
        _$FilterRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  FilterRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.FilterRuleName),
          ) as _i2.FilterRuleName);
        case 'Value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FilterRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'FilterRule',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final FilterRule(:name, :value) = object;
    if (name != null) {
      result$
        ..add(const _i3.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType.nullable(_i2.FilterRuleName),
        ));
    }
    if (value != null) {
      result$
        ..add(const _i3.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
