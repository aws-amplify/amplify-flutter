// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.type_configuration_identifier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/third_party_type.dart'
    as _i2;

part 'type_configuration_identifier.g.dart';

/// Identifying information for the configuration of a CloudFormation extension.
abstract class TypeConfigurationIdentifier
    with _i1.AWSEquatable<TypeConfigurationIdentifier>
    implements
        Built<TypeConfigurationIdentifier, TypeConfigurationIdentifierBuilder> {
  /// Identifying information for the configuration of a CloudFormation extension.
  factory TypeConfigurationIdentifier({
    String? typeArn,
    String? typeConfigurationAlias,
    String? typeConfigurationArn,
    _i2.ThirdPartyType? type,
    String? typeName,
  }) {
    return _$TypeConfigurationIdentifier._(
      typeArn: typeArn,
      typeConfigurationAlias: typeConfigurationAlias,
      typeConfigurationArn: typeConfigurationArn,
      type: type,
      typeName: typeName,
    );
  }

  /// Identifying information for the configuration of a CloudFormation extension.
  factory TypeConfigurationIdentifier.build(
          [void Function(TypeConfigurationIdentifierBuilder) updates]) =
      _$TypeConfigurationIdentifier;

  const TypeConfigurationIdentifier._();

  static const List<_i3.SmithySerializer<TypeConfigurationIdentifier>>
      serializers = [TypeConfigurationIdentifierAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TypeConfigurationIdentifierBuilder b) {}

  /// The Amazon Resource Name (ARN) for the extension, in this account and Region.
  ///
  /// For public extensions, this will be the ARN assigned when you [activate the type](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html) in this account and Region. For private extensions, this will be the ARN assigned when you [register the type](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html) in this account and Region.
  String? get typeArn;

  /// The alias specified for this configuration, if one was specified when the configuration was set.
  String? get typeConfigurationAlias;

  /// The Amazon Resource Name (ARN) for the configuration, in this account and Region.
  String? get typeConfigurationArn;

  /// The type of extension.
  _i2.ThirdPartyType? get type;

  /// The name of the extension type to which this configuration applies.
  String? get typeName;
  @override
  List<Object?> get props => [
        typeArn,
        typeConfigurationAlias,
        typeConfigurationArn,
        type,
        typeName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TypeConfigurationIdentifier')
      ..add(
        'typeArn',
        typeArn,
      )
      ..add(
        'typeConfigurationAlias',
        typeConfigurationAlias,
      )
      ..add(
        'typeConfigurationArn',
        typeConfigurationArn,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'typeName',
        typeName,
      );
    return helper.toString();
  }
}

class TypeConfigurationIdentifierAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<TypeConfigurationIdentifier> {
  const TypeConfigurationIdentifierAwsQuerySerializer()
      : super('TypeConfigurationIdentifier');

  @override
  Iterable<Type> get types => const [
        TypeConfigurationIdentifier,
        _$TypeConfigurationIdentifier,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TypeConfigurationIdentifier deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TypeConfigurationIdentifierBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TypeArn':
          result.typeArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeConfigurationAlias':
          result.typeConfigurationAlias = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeConfigurationArn':
          result.typeConfigurationArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ThirdPartyType),
          ) as _i2.ThirdPartyType);
        case 'TypeName':
          result.typeName = (serializers.deserialize(
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
    TypeConfigurationIdentifier object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TypeConfigurationIdentifierResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final TypeConfigurationIdentifier(
      :typeArn,
      :typeConfigurationAlias,
      :typeConfigurationArn,
      :type,
      :typeName
    ) = object;
    if (typeArn != null) {
      result$
        ..add(const _i3.XmlElementName('TypeArn'))
        ..add(serializers.serialize(
          typeArn,
          specifiedType: const FullType(String),
        ));
    }
    if (typeConfigurationAlias != null) {
      result$
        ..add(const _i3.XmlElementName('TypeConfigurationAlias'))
        ..add(serializers.serialize(
          typeConfigurationAlias,
          specifiedType: const FullType(String),
        ));
    }
    if (typeConfigurationArn != null) {
      result$
        ..add(const _i3.XmlElementName('TypeConfigurationArn'))
        ..add(serializers.serialize(
          typeConfigurationArn,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i3.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i2.ThirdPartyType),
        ));
    }
    if (typeName != null) {
      result$
        ..add(const _i3.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          typeName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
