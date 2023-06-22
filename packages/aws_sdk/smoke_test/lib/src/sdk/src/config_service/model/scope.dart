// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.scope; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'scope.g.dart';

/// Defines which resources trigger an evaluation for an Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.
abstract class Scope
    with _i1.AWSEquatable<Scope>
    implements Built<Scope, ScopeBuilder> {
  /// Defines which resources trigger an evaluation for an Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.
  factory Scope({
    List<String>? complianceResourceTypes,
    String? tagKey,
    String? tagValue,
    String? complianceResourceId,
  }) {
    return _$Scope._(
      complianceResourceTypes: complianceResourceTypes == null
          ? null
          : _i2.BuiltList(complianceResourceTypes),
      tagKey: tagKey,
      tagValue: tagValue,
      complianceResourceId: complianceResourceId,
    );
  }

  /// Defines which resources trigger an evaluation for an Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.
  factory Scope.build([void Function(ScopeBuilder) updates]) = _$Scope;

  const Scope._();

  static const List<_i3.SmithySerializer<Scope>> serializers = [
    ScopeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScopeBuilder b) {}

  /// The resource types of only those Amazon Web Services resources that you want to trigger an evaluation for the rule. You can only specify one type if you also specify a resource ID for `ComplianceResourceId`.
  _i2.BuiltList<String>? get complianceResourceTypes;

  /// The tag key that is applied to only those Amazon Web Services resources that you want to trigger an evaluation for the rule.
  String? get tagKey;

  /// The tag value applied to only those Amazon Web Services resources that you want to trigger an evaluation for the rule. If you specify a value for `TagValue`, you must also specify a value for `TagKey`.
  String? get tagValue;

  /// The ID of the only Amazon Web Services resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for `ComplianceResourceTypes`.
  String? get complianceResourceId;
  @override
  List<Object?> get props => [
        complianceResourceTypes,
        tagKey,
        tagValue,
        complianceResourceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Scope')
      ..add(
        'complianceResourceTypes',
        complianceResourceTypes,
      )
      ..add(
        'tagKey',
        tagKey,
      )
      ..add(
        'tagValue',
        tagValue,
      )
      ..add(
        'complianceResourceId',
        complianceResourceId,
      );
    return helper.toString();
  }
}

class ScopeAwsJson11Serializer extends _i3.StructuredSmithySerializer<Scope> {
  const ScopeAwsJson11Serializer() : super('Scope');

  @override
  Iterable<Type> get types => const [
        Scope,
        _$Scope,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  Scope deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScopeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ComplianceResourceTypes':
          result.complianceResourceTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'TagKey':
          result.tagKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagValue':
          result.tagValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ComplianceResourceId':
          result.complianceResourceId = (serializers.deserialize(
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
    Scope object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Scope(
      :complianceResourceTypes,
      :tagKey,
      :tagValue,
      :complianceResourceId
    ) = object;
    if (complianceResourceTypes != null) {
      result$
        ..add('ComplianceResourceTypes')
        ..add(serializers.serialize(
          complianceResourceTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (tagKey != null) {
      result$
        ..add('TagKey')
        ..add(serializers.serialize(
          tagKey,
          specifiedType: const FullType(String),
        ));
    }
    if (tagValue != null) {
      result$
        ..add('TagValue')
        ..add(serializers.serialize(
          tagValue,
          specifiedType: const FullType(String),
        ));
    }
    if (complianceResourceId != null) {
      result$
        ..add('ComplianceResourceId')
        ..add(serializers.serialize(
          complianceResourceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
