// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.resource_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_configuration_schema_type.dart'
    as _i2;

part 'resource_details.g.dart';

/// Returns information about the resource being evaluated.
abstract class ResourceDetails
    with _i1.AWSEquatable<ResourceDetails>
    implements Built<ResourceDetails, ResourceDetailsBuilder> {
  /// Returns information about the resource being evaluated.
  factory ResourceDetails({
    required String resourceId,
    required String resourceType,
    required String resourceConfiguration,
    _i2.ResourceConfigurationSchemaType? resourceConfigurationSchemaType,
  }) {
    return _$ResourceDetails._(
      resourceId: resourceId,
      resourceType: resourceType,
      resourceConfiguration: resourceConfiguration,
      resourceConfigurationSchemaType: resourceConfigurationSchemaType,
    );
  }

  /// Returns information about the resource being evaluated.
  factory ResourceDetails.build(
      [void Function(ResourceDetailsBuilder) updates]) = _$ResourceDetails;

  const ResourceDetails._();

  static const List<_i3.SmithySerializer<ResourceDetails>> serializers = [
    ResourceDetailsAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceDetailsBuilder b) {}

  /// A unique resource ID for an evaluation.
  String get resourceId;

  /// The type of resource being evaluated.
  String get resourceType;

  /// The resource definition to be evaluated as per the resource configuration schema type.
  String get resourceConfiguration;

  /// The schema type of the resource configuration.
  ///
  /// You can find the [Resource type schema](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html), or `CFN\_RESOURCE\_SCHEMA`, in "_Amazon Web Services public extensions_" within the CloudFormation registry or with the following CLI commmand: `aws cloudformation describe-type --type-name "AWS::S3::Bucket" --type RESOURCE`.
  ///
  /// For more information, see [Managing extensions through the CloudFormation registry](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-view) and [Amazon Web Services resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html) in the CloudFormation User Guide.
  _i2.ResourceConfigurationSchemaType? get resourceConfigurationSchemaType;
  @override
  List<Object?> get props => [
        resourceId,
        resourceType,
        resourceConfiguration,
        resourceConfigurationSchemaType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceDetails')
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceConfiguration',
        resourceConfiguration,
      )
      ..add(
        'resourceConfigurationSchemaType',
        resourceConfigurationSchemaType,
      );
    return helper.toString();
  }
}

class ResourceDetailsAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ResourceDetails> {
  const ResourceDetailsAwsJson11Serializer() : super('ResourceDetails');

  @override
  Iterable<Type> get types => const [
        ResourceDetails,
        _$ResourceDetails,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceConfiguration':
          result.resourceConfiguration = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceConfigurationSchemaType':
          result.resourceConfigurationSchemaType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ResourceConfigurationSchemaType),
          ) as _i2.ResourceConfigurationSchemaType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResourceDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResourceDetails(
      :resourceId,
      :resourceType,
      :resourceConfiguration,
      :resourceConfigurationSchemaType
    ) = object;
    result$.addAll([
      'ResourceId',
      serializers.serialize(
        resourceId,
        specifiedType: const FullType(String),
      ),
      'ResourceType',
      serializers.serialize(
        resourceType,
        specifiedType: const FullType(String),
      ),
      'ResourceConfiguration',
      serializers.serialize(
        resourceConfiguration,
        specifiedType: const FullType(String),
      ),
    ]);
    if (resourceConfigurationSchemaType != null) {
      result$
        ..add('ResourceConfigurationSchemaType')
        ..add(serializers.serialize(
          resourceConfigurationSchemaType,
          specifiedType: const FullType(_i2.ResourceConfigurationSchemaType),
        ));
    }
    return result$;
  }
}
