// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.set_type_configuration_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/third_party_type.dart'
    as _i3;

part 'set_type_configuration_input.g.dart';

abstract class SetTypeConfigurationInput
    with
        _i1.HttpInput<SetTypeConfigurationInput>,
        _i2.AWSEquatable<SetTypeConfigurationInput>
    implements
        Built<SetTypeConfigurationInput, SetTypeConfigurationInputBuilder> {
  factory SetTypeConfigurationInput({
    String? typeArn,
    required String configuration,
    String? configurationAlias,
    String? typeName,
    _i3.ThirdPartyType? type,
  }) {
    return _$SetTypeConfigurationInput._(
      typeArn: typeArn,
      configuration: configuration,
      configurationAlias: configurationAlias,
      typeName: typeName,
      type: type,
    );
  }

  factory SetTypeConfigurationInput.build(
          [void Function(SetTypeConfigurationInputBuilder) updates]) =
      _$SetTypeConfigurationInput;

  const SetTypeConfigurationInput._();

  factory SetTypeConfigurationInput.fromRequest(
    SetTypeConfigurationInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<SetTypeConfigurationInput>>
      serializers = [SetTypeConfigurationInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SetTypeConfigurationInputBuilder b) {}

  /// The Amazon Resource Name (ARN) for the extension, in this account and Region.
  ///
  /// For public extensions, this will be the ARN assigned when you [activate the type](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html) in this account and Region. For private extensions, this will be the ARN assigned when you [register the type](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html) in this account and Region.
  ///
  /// Do not include the extension versions suffix at the end of the ARN. You can set the configuration for an extension, but not for a specific extension version.
  String? get typeArn;

  /// The configuration data for the extension, in this account and Region.
  ///
  /// The configuration data must be formatted as JSON, and validate against the schema returned in the `ConfigurationSchema` response element of [DescribeType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html). For more information, see [Defining account-level configuration data for an extension](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-model.html#resource-type-howto-configuration) in the _CloudFormation CLI User Guide_.
  String get configuration;

  /// An alias by which to refer to this extension configuration data.
  ///
  /// Conditional: Specifying a configuration alias is required when setting a configuration for a resource type extension.
  String? get configurationAlias;

  /// The name of the extension.
  ///
  /// Conditional: You must specify `ConfigurationArn`, or `Type` and `TypeName`.
  String? get typeName;

  /// The type of extension.
  ///
  /// Conditional: You must specify `ConfigurationArn`, or `Type` and `TypeName`.
  _i3.ThirdPartyType? get type;
  @override
  SetTypeConfigurationInput getPayload() => this;
  @override
  List<Object?> get props => [
        typeArn,
        configuration,
        configurationAlias,
        typeName,
        type,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SetTypeConfigurationInput')
      ..add(
        'typeArn',
        typeArn,
      )
      ..add(
        'configuration',
        configuration,
      )
      ..add(
        'configurationAlias',
        configurationAlias,
      )
      ..add(
        'typeName',
        typeName,
      )
      ..add(
        'type',
        type,
      );
    return helper.toString();
  }
}

class SetTypeConfigurationInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<SetTypeConfigurationInput> {
  const SetTypeConfigurationInputAwsQuerySerializer()
      : super('SetTypeConfigurationInput');

  @override
  Iterable<Type> get types => const [
        SetTypeConfigurationInput,
        _$SetTypeConfigurationInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SetTypeConfigurationInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetTypeConfigurationInputBuilder();
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
        case 'Configuration':
          result.configuration = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConfigurationAlias':
          result.configurationAlias = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeName':
          result.typeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ThirdPartyType),
          ) as _i3.ThirdPartyType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SetTypeConfigurationInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'SetTypeConfigurationInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final SetTypeConfigurationInput(
      :typeArn,
      :configuration,
      :configurationAlias,
      :typeName,
      :type
    ) = object;
    if (typeArn != null) {
      result$
        ..add(const _i1.XmlElementName('TypeArn'))
        ..add(serializers.serialize(
          typeArn,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Configuration'))
      ..add(serializers.serialize(
        configuration,
        specifiedType: const FullType(String),
      ));
    if (configurationAlias != null) {
      result$
        ..add(const _i1.XmlElementName('ConfigurationAlias'))
        ..add(serializers.serialize(
          configurationAlias,
          specifiedType: const FullType(String),
        ));
    }
    if (typeName != null) {
      result$
        ..add(const _i1.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          typeName,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i3.ThirdPartyType),
        ));
    }
    return result$;
  }
}
