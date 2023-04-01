// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i2.SmithySerializer> serializers = [
    SdkConfigurationPropertyRestJson1Serializer()
  ];

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
    final helper = newBuiltValueToStringHelper('SdkConfigurationProperty');
    helper.add(
      'name',
      name,
    );
    helper.add(
      'friendlyName',
      friendlyName,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'required',
      required,
    );
    helper.add(
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
      switch (key) {
        case 'defaultValue':
          if (value != null) {
            result.defaultValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'friendlyName':
          if (value != null) {
            result.friendlyName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'required':
          result.required = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as SdkConfigurationProperty);
    final result = <Object?>[
      'required',
      serializers.serialize(
        payload.required,
        specifiedType: const FullType(bool),
      ),
    ];
    if (payload.defaultValue != null) {
      result
        ..add('defaultValue')
        ..add(serializers.serialize(
          payload.defaultValue!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.friendlyName != null) {
      result
        ..add('friendlyName')
        ..add(serializers.serialize(
          payload.friendlyName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
