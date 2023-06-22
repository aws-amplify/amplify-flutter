// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.remediation_parameter_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/static_value.dart'
    as _i3;

part 'remediation_parameter_value.g.dart';

/// The value is either a dynamic (resource) value or a static value. You must select either a dynamic value or a static value.
abstract class RemediationParameterValue
    with _i1.AWSEquatable<RemediationParameterValue>
    implements
        Built<RemediationParameterValue, RemediationParameterValueBuilder> {
  /// The value is either a dynamic (resource) value or a static value. You must select either a dynamic value or a static value.
  factory RemediationParameterValue({
    _i2.ResourceValue? resourceValue,
    _i3.StaticValue? staticValue,
  }) {
    return _$RemediationParameterValue._(
      resourceValue: resourceValue,
      staticValue: staticValue,
    );
  }

  /// The value is either a dynamic (resource) value or a static value. You must select either a dynamic value or a static value.
  factory RemediationParameterValue.build(
          [void Function(RemediationParameterValueBuilder) updates]) =
      _$RemediationParameterValue;

  const RemediationParameterValue._();

  static const List<_i4.SmithySerializer<RemediationParameterValue>>
      serializers = [RemediationParameterValueAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationParameterValueBuilder b) {}

  /// The value is dynamic and changes at run-time.
  _i2.ResourceValue? get resourceValue;

  /// The value is static and does not change at run-time.
  _i3.StaticValue? get staticValue;
  @override
  List<Object?> get props => [
        resourceValue,
        staticValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RemediationParameterValue')
      ..add(
        'resourceValue',
        resourceValue,
      )
      ..add(
        'staticValue',
        staticValue,
      );
    return helper.toString();
  }
}

class RemediationParameterValueAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<RemediationParameterValue> {
  const RemediationParameterValueAwsJson11Serializer()
      : super('RemediationParameterValue');

  @override
  Iterable<Type> get types => const [
        RemediationParameterValue,
        _$RemediationParameterValue,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RemediationParameterValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemediationParameterValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceValue':
          result.resourceValue.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ResourceValue),
          ) as _i2.ResourceValue));
        case 'StaticValue':
          result.staticValue.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StaticValue),
          ) as _i3.StaticValue));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RemediationParameterValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RemediationParameterValue(:resourceValue, :staticValue) = object;
    if (resourceValue != null) {
      result$
        ..add('ResourceValue')
        ..add(serializers.serialize(
          resourceValue,
          specifiedType: const FullType(_i2.ResourceValue),
        ));
    }
    if (staticValue != null) {
      result$
        ..add('StaticValue')
        ..add(serializers.serialize(
          staticValue,
          specifiedType: const FullType(_i3.StaticValue),
        ));
    }
    return result$;
  }
}
