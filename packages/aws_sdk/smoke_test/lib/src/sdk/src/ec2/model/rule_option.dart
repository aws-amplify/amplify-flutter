// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.rule_option; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'rule_option.g.dart';

/// Describes additional settings for a stateful rule.
abstract class RuleOption
    with _i1.AWSEquatable<RuleOption>
    implements Built<RuleOption, RuleOptionBuilder> {
  /// Describes additional settings for a stateful rule.
  factory RuleOption({
    String? keyword,
    List<String>? settings,
  }) {
    return _$RuleOption._(
      keyword: keyword,
      settings: settings == null ? null : _i2.BuiltList(settings),
    );
  }

  /// Describes additional settings for a stateful rule.
  factory RuleOption.build([void Function(RuleOptionBuilder) updates]) =
      _$RuleOption;

  const RuleOption._();

  static const List<_i3.SmithySerializer<RuleOption>> serializers = [
    RuleOptionEc2QuerySerializer()
  ];

  /// The Suricata keyword.
  String? get keyword;

  /// The settings for the keyword.
  _i2.BuiltList<String>? get settings;
  @override
  List<Object?> get props => [
        keyword,
        settings,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RuleOption')
      ..add(
        'keyword',
        keyword,
      )
      ..add(
        'settings',
        settings,
      );
    return helper.toString();
  }
}

class RuleOptionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<RuleOption> {
  const RuleOptionEc2QuerySerializer() : super('RuleOption');

  @override
  Iterable<Type> get types => const [
        RuleOption,
        _$RuleOption,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RuleOption deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleOptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'keyword':
          result.keyword = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'settingSet':
          result.settings.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RuleOption object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RuleOptionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RuleOption(:keyword, :settings) = object;
    if (keyword != null) {
      result$
        ..add(const _i3.XmlElementName('Keyword'))
        ..add(serializers.serialize(
          keyword,
          specifiedType: const FullType(String),
        ));
    }
    if (settings != null) {
      result$
        ..add(const _i3.XmlElementName('SettingSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          settings,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
