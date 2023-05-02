// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.type_configuration_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'type_configuration_details.g.dart';

/// Detailed information concerning the specification of a CloudFormation extension in a given account and region.
///
/// For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
abstract class TypeConfigurationDetails
    with _i1.AWSEquatable<TypeConfigurationDetails>
    implements
        Built<TypeConfigurationDetails, TypeConfigurationDetailsBuilder> {
  /// Detailed information concerning the specification of a CloudFormation extension in a given account and region.
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

  /// Detailed information concerning the specification of a CloudFormation extension in a given account and region.
  ///
  /// For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration) in the _CloudFormation User Guide_.
  factory TypeConfigurationDetails.build(
          [void Function(TypeConfigurationDetailsBuilder) updates]) =
      _$TypeConfigurationDetails;

  const TypeConfigurationDetails._();

  static const List<_i2.SmithySerializer> serializers = [
    TypeConfigurationDetailsAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TypeConfigurationDetailsBuilder b) {}

  /// The Amazon Resource Name (ARN) for the configuration data, in this account and region.
  String? get arn;

  /// The alias specified for this configuration, if one was specified when the configuration was set.
  String? get alias;

  /// A JSON string specifying the configuration data for the extension, in this account and region.
  ///
  /// If a configuration hasn't been set for a specified extension, CloudFormation returns `{}`.
  String? get configuration;

  /// When the configuration data was last updated for this extension.
  ///
  /// If a configuration hasn't been set for a specified extension, CloudFormation returns `null`.
  DateTime? get lastUpdated;

  /// The Amazon Resource Name (ARN) for the extension, in this account and region.
  ///
  /// For public extensions, this will be the ARN assigned when you [activate the type](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html) in this account and region. For private extensions, this will be the ARN assigned when you [register the type](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html) in this account and region.
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
    final helper = newBuiltValueToStringHelper('TypeConfigurationDetails');
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'alias',
      alias,
    );
    helper.add(
      'configuration',
      configuration,
    );
    helper.add(
      'lastUpdated',
      lastUpdated,
    );
    helper.add(
      'typeArn',
      typeArn,
    );
    helper.add(
      'typeName',
      typeName,
    );
    helper.add(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Alias':
          if (value != null) {
            result.alias = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Configuration':
          if (value != null) {
            result.configuration = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastUpdated':
          if (value != null) {
            result.lastUpdated = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'TypeArn':
          if (value != null) {
            result.typeArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TypeName':
          if (value != null) {
            result.typeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IsDefaultConfiguration':
          if (value != null) {
            result.isDefaultConfiguration = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as TypeConfigurationDetails);
    final result = <Object?>[
      const _i2.XmlElementName(
        'TypeConfigurationDetailsResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.arn != null) {
      result
        ..add(const _i2.XmlElementName('Arn'))
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.alias != null) {
      result
        ..add(const _i2.XmlElementName('Alias'))
        ..add(serializers.serialize(
          payload.alias!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.configuration != null) {
      result
        ..add(const _i2.XmlElementName('Configuration'))
        ..add(serializers.serialize(
          payload.configuration!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastUpdated != null) {
      result
        ..add(const _i2.XmlElementName('LastUpdated'))
        ..add(serializers.serialize(
          payload.lastUpdated!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.typeArn != null) {
      result
        ..add(const _i2.XmlElementName('TypeArn'))
        ..add(serializers.serialize(
          payload.typeArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.typeName != null) {
      result
        ..add(const _i2.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          payload.typeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.isDefaultConfiguration != null) {
      result
        ..add(const _i2.XmlElementName('IsDefaultConfiguration'))
        ..add(serializers.serialize(
          payload.isDefaultConfiguration!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
