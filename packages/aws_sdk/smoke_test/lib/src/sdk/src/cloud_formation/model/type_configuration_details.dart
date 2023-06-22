// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.type_configuration_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'type_configuration_details.g.dart';

/// Detailed information concerning the specification of a CloudFormation extension in a given account and Region.
///
/// For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
abstract class TypeConfigurationDetails
    with _i1.AWSEquatable<TypeConfigurationDetails>
    implements
        Built<TypeConfigurationDetails, TypeConfigurationDetailsBuilder> {
  /// Detailed information concerning the specification of a CloudFormation extension in a given account and Region.
  ///
  /// For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
  factory TypeConfigurationDetails({
    String? arn,
    String? alias,
    String? configuration,
    DateTime? lastUpdated,
    String? typeArn,
    String? typeName,
    bool? isDefaultConfiguration,
  }) {
    return _$TypeConfigurationDetails._(
      arn: arn,
      alias: alias,
      configuration: configuration,
      lastUpdated: lastUpdated,
      typeArn: typeArn,
      typeName: typeName,
      isDefaultConfiguration: isDefaultConfiguration,
    );
  }

  /// Detailed information concerning the specification of a CloudFormation extension in a given account and Region.
  ///
  /// For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
  factory TypeConfigurationDetails.build(
          [void Function(TypeConfigurationDetailsBuilder) updates]) =
      _$TypeConfigurationDetails;

  const TypeConfigurationDetails._();

  static const List<_i2.SmithySerializer<TypeConfigurationDetails>>
      serializers = [TypeConfigurationDetailsAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TypeConfigurationDetailsBuilder b) {}

  /// The Amazon Resource Name (ARN) for the configuration data, in this account and Region.
  String? get arn;

  /// The alias specified for this configuration, if one was specified when the configuration was set.
  String? get alias;

  /// A JSON string specifying the configuration data for the extension, in this account and Region.
  ///
  /// If a configuration hasn't been set for a specified extension, CloudFormation returns `{}`.
  String? get configuration;

  /// When the configuration data was last updated for this extension.
  ///
  /// If a configuration hasn't been set for a specified extension, CloudFormation returns `null`.
  DateTime? get lastUpdated;

  /// The Amazon Resource Name (ARN) for the extension, in this account and Region.
  ///
  /// For public extensions, this will be the ARN assigned when you [activate the type](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html) in this account and Region. For private extensions, this will be the ARN assigned when you [register the type](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html) in this account and Region.
  String? get typeArn;

  /// The name of the extension.
  String? get typeName;

  /// Whether this configuration data is the default configuration for the extension.
  bool? get isDefaultConfiguration;
  @override
  List<Object?> get props => [
        arn,
        alias,
        configuration,
        lastUpdated,
        typeArn,
        typeName,
        isDefaultConfiguration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TypeConfigurationDetails')
      ..add(
        'arn',
        arn,
      )
      ..add(
        'alias',
        alias,
      )
      ..add(
        'configuration',
        configuration,
      )
      ..add(
        'lastUpdated',
        lastUpdated,
      )
      ..add(
        'typeArn',
        typeArn,
      )
      ..add(
        'typeName',
        typeName,
      )
      ..add(
        'isDefaultConfiguration',
        isDefaultConfiguration,
      );
    return helper.toString();
  }
}

class TypeConfigurationDetailsAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<TypeConfigurationDetails> {
  const TypeConfigurationDetailsAwsQuerySerializer()
      : super('TypeConfigurationDetails');

  @override
  Iterable<Type> get types => const [
        TypeConfigurationDetails,
        _$TypeConfigurationDetails,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TypeConfigurationDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TypeConfigurationDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Alias':
          result.alias = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Configuration':
          result.configuration = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastUpdated':
          result.lastUpdated = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'TypeArn':
          result.typeArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeName':
          result.typeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IsDefaultConfiguration':
          result.isDefaultConfiguration = (serializers.deserialize(
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
    TypeConfigurationDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TypeConfigurationDetailsResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final TypeConfigurationDetails(
      :arn,
      :alias,
      :configuration,
      :lastUpdated,
      :typeArn,
      :typeName,
      :isDefaultConfiguration
    ) = object;
    if (arn != null) {
      result$
        ..add(const _i2.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (alias != null) {
      result$
        ..add(const _i2.XmlElementName('Alias'))
        ..add(serializers.serialize(
          alias,
          specifiedType: const FullType(String),
        ));
    }
    if (configuration != null) {
      result$
        ..add(const _i2.XmlElementName('Configuration'))
        ..add(serializers.serialize(
          configuration,
          specifiedType: const FullType(String),
        ));
    }
    if (lastUpdated != null) {
      result$
        ..add(const _i2.XmlElementName('LastUpdated'))
        ..add(serializers.serialize(
          lastUpdated,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (typeArn != null) {
      result$
        ..add(const _i2.XmlElementName('TypeArn'))
        ..add(serializers.serialize(
          typeArn,
          specifiedType: const FullType(String),
        ));
    }
    if (typeName != null) {
      result$
        ..add(const _i2.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          typeName,
          specifiedType: const FullType(String),
        ));
    }
    if (isDefaultConfiguration != null) {
      result$
        ..add(const _i2.XmlElementName('IsDefaultConfiguration'))
        ..add(serializers.serialize(
          isDefaultConfiguration,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
