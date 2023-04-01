// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i3.SmithySerializer> serializers = [
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
    final helper = newBuiltValueToStringHelper('ResourceDetails');
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'resourceConfiguration',
      resourceConfiguration,
    );
    helper.add(
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
      switch (key) {
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ResourceConfiguration':
          result.resourceConfiguration = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ResourceConfigurationSchemaType':
          if (value != null) {
            result.resourceConfigurationSchemaType = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.ResourceConfigurationSchemaType),
            ) as _i2.ResourceConfigurationSchemaType);
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
    final payload = (object as ResourceDetails);
    final result = <Object?>[
      'ResourceId',
      serializers.serialize(
        payload.resourceId,
        specifiedType: const FullType(String),
      ),
      'ResourceType',
      serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(String),
      ),
      'ResourceConfiguration',
      serializers.serialize(
        payload.resourceConfiguration,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.resourceConfigurationSchemaType != null) {
      result
        ..add('ResourceConfigurationSchemaType')
        ..add(serializers.serialize(
          payload.resourceConfigurationSchemaType!,
          specifiedType: const FullType(_i2.ResourceConfigurationSchemaType),
        ));
    }
    return result;
  }
}
