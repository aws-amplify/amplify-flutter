// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.sdk_configuration_property; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'sdk_configuration_property.g.dart';

/// A configuration property of an SDK type.
abstract class SdkConfigurationProperty
    with _i1.AWSEquatable<SdkConfigurationProperty>
    implements
        Built<SdkConfigurationProperty, SdkConfigurationPropertyBuilder> {
  /// A configuration property of an SDK type.
  factory SdkConfigurationProperty({
    String? name,
    String? friendlyName,
    String? description,
    bool? required,
    String? defaultValue,
  }) {
    required ??= false;
    return _$SdkConfigurationProperty._(
      name: name,
      friendlyName: friendlyName,
      description: description,
      required: required,
      defaultValue: defaultValue,
    );
  }

  /// A configuration property of an SDK type.
  factory SdkConfigurationProperty.build(
          [void Function(SdkConfigurationPropertyBuilder) updates]) =
      _$SdkConfigurationProperty;

  const SdkConfigurationProperty._();

  static const List<_i2.SmithySerializer<SdkConfigurationProperty>>
      serializers = [SdkConfigurationPropertyRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SdkConfigurationPropertyBuilder b) {
    b.required = false;
  }

  /// The name of a an SdkType configuration property.
  String? get name;

  /// The user-friendly name of an SdkType configuration property.
  String? get friendlyName;

  /// The description of an SdkType configuration property.
  String? get description;

  /// A boolean flag of an SdkType configuration property to indicate if the associated SDK configuration property is required (`true`) or not (`false`).
  bool get required;

  /// The default value of an SdkType configuration property.
  String? get defaultValue;
  @override
  List<Object?> get props => [
        name,
        friendlyName,
        description,
        required,
        defaultValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SdkConfigurationProperty')
      ..add(
        'name',
        name,
      )
      ..add(
        'friendlyName',
        friendlyName,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'required',
        required,
      )
      ..add(
        'defaultValue',
        defaultValue,
      );
    return helper.toString();
  }
}

class SdkConfigurationPropertyRestJson1Serializer
    extends _i2.StructuredSmithySerializer<SdkConfigurationProperty> {
  const SdkConfigurationPropertyRestJson1Serializer()
      : super('SdkConfigurationProperty');

  @override
  Iterable<Type> get types => const [
        SdkConfigurationProperty,
        _$SdkConfigurationProperty,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  SdkConfigurationProperty deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdkConfigurationPropertyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'defaultValue':
          result.defaultValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'friendlyName':
          result.friendlyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'required':
          result.required = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SdkConfigurationProperty object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SdkConfigurationProperty(
      :defaultValue,
      :description,
      :friendlyName,
      :name,
      :required
    ) = object;
    result$.addAll([
      'required',
      serializers.serialize(
        required,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (defaultValue != null) {
      result$
        ..add('defaultValue')
        ..add(serializers.serialize(
          defaultValue,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add('description')
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (friendlyName != null) {
      result$
        ..add('friendlyName')
        ..add(serializers.serialize(
          friendlyName,
          specifiedType: const FullType(String),
        ));
    }
    if (name != null) {
      result$
        ..add('name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
