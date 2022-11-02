// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    String? complianceResourceId,
    List<String>? complianceResourceTypes,
    String? tagKey,
    String? tagValue,
  }) {
    return _$Scope._(
      complianceResourceId: complianceResourceId,
      complianceResourceTypes: complianceResourceTypes == null
          ? null
          : _i2.BuiltList(complianceResourceTypes),
      tagKey: tagKey,
      tagValue: tagValue,
    );
  }

  /// Defines which resources trigger an evaluation for an Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.
  factory Scope.build([void Function(ScopeBuilder) updates]) = _$Scope;

  const Scope._();

  static const List<_i3.SmithySerializer> serializers = [
    ScopeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScopeBuilder b) {}

  /// The ID of the only Amazon Web Services resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for `ComplianceResourceTypes`.
  String? get complianceResourceId;

  /// The resource types of only those Amazon Web Services resources that you want to trigger an evaluation for the rule. You can only specify one type if you also specify a resource ID for `ComplianceResourceId`.
  _i2.BuiltList<String>? get complianceResourceTypes;

  /// The tag key that is applied to only those Amazon Web Services resources that you want to trigger an evaluation for the rule.
  String? get tagKey;

  /// The tag value applied to only those Amazon Web Services resources that you want to trigger an evaluation for the rule. If you specify a value for `TagValue`, you must also specify a value for `TagKey`.
  String? get tagValue;
  @override
  List<Object?> get props => [
        complianceResourceId,
        complianceResourceTypes,
        tagKey,
        tagValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Scope');
    helper.add(
      'complianceResourceId',
      complianceResourceId,
    );
    helper.add(
      'complianceResourceTypes',
      complianceResourceTypes,
    );
    helper.add(
      'tagKey',
      tagKey,
    );
    helper.add(
      'tagValue',
      tagValue,
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
      switch (key) {
        case 'ComplianceResourceId':
          if (value != null) {
            result.complianceResourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ComplianceResourceTypes':
          if (value != null) {
            result.complianceResourceTypes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
          }
          break;
        case 'TagKey':
          if (value != null) {
            result.tagKey = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TagValue':
          if (value != null) {
            result.tagValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as Scope);
    final result = <Object?>[];
    if (payload.complianceResourceId != null) {
      result
        ..add('ComplianceResourceId')
        ..add(serializers.serialize(
          payload.complianceResourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.complianceResourceTypes != null) {
      result
        ..add('ComplianceResourceTypes')
        ..add(serializers.serialize(
          payload.complianceResourceTypes!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.tagKey != null) {
      result
        ..add('TagKey')
        ..add(serializers.serialize(
          payload.tagKey!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tagValue != null) {
      result
        ..add('TagValue')
        ..add(serializers.serialize(
          payload.tagValue!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
