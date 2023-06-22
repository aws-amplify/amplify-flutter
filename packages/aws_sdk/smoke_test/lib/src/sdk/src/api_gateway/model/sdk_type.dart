// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.sdk_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_configuration_property.dart'
    as _i2;

part 'sdk_type.g.dart';

/// A type of SDK that API Gateway can generate.
abstract class SdkType
    with _i1.AWSEquatable<SdkType>
    implements Built<SdkType, SdkTypeBuilder> {
  /// A type of SDK that API Gateway can generate.
  factory SdkType({
    String? id,
    String? friendlyName,
    String? description,
    List<_i2.SdkConfigurationProperty>? configurationProperties,
  }) {
    return _$SdkType._(
      id: id,
      friendlyName: friendlyName,
      description: description,
      configurationProperties: configurationProperties == null
          ? null
          : _i3.BuiltList(configurationProperties),
    );
  }

  /// A type of SDK that API Gateway can generate.
  factory SdkType.build([void Function(SdkTypeBuilder) updates]) = _$SdkType;

  const SdkType._();

  /// Constructs a [SdkType] from a [payload] and [response].
  factory SdkType.fromResponse(
    SdkType payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<SdkType>> serializers = [
    SdkTypeRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SdkTypeBuilder b) {}

  /// The identifier of an SdkType instance.
  String? get id;

  /// The user-friendly name of an SdkType instance.
  String? get friendlyName;

  /// The description of an SdkType.
  String? get description;

  /// A list of configuration properties of an SdkType.
  _i3.BuiltList<_i2.SdkConfigurationProperty>? get configurationProperties;
  @override
  List<Object?> get props => [
        id,
        friendlyName,
        description,
        configurationProperties,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SdkType')
      ..add(
        'id',
        id,
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
        'configurationProperties',
        configurationProperties,
      );
    return helper.toString();
  }
}

class SdkTypeRestJson1Serializer
    extends _i4.StructuredSmithySerializer<SdkType> {
  const SdkTypeRestJson1Serializer() : super('SdkType');

  @override
  Iterable<Type> get types => const [
        SdkType,
        _$SdkType,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  SdkType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdkTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'configurationProperties':
          result.configurationProperties.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.SdkConfigurationProperty)],
            ),
          ) as _i3.BuiltList<_i2.SdkConfigurationProperty>));
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
        case 'id':
          result.id = (serializers.deserialize(
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
    SdkType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SdkType(:configurationProperties, :description, :friendlyName, :id) =
        object;
    if (configurationProperties != null) {
      result$
        ..add('configurationProperties')
        ..add(serializers.serialize(
          configurationProperties,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.SdkConfigurationProperty)],
          ),
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
    if (id != null) {
      result$
        ..add('id')
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
