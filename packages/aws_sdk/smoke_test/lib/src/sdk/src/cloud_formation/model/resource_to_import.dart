// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.resource_to_import; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'resource_to_import.g.dart';

/// Describes the target resource of an import operation.
abstract class ResourceToImport
    with _i1.AWSEquatable<ResourceToImport>
    implements Built<ResourceToImport, ResourceToImportBuilder> {
  /// Describes the target resource of an import operation.
  factory ResourceToImport({
    required String resourceType,
    required String logicalResourceId,
    required Map<String, String> resourceIdentifier,
  }) {
    return _$ResourceToImport._(
      resourceType: resourceType,
      logicalResourceId: logicalResourceId,
      resourceIdentifier: _i2.BuiltMap(resourceIdentifier),
    );
  }

  /// Describes the target resource of an import operation.
  factory ResourceToImport.build(
      [void Function(ResourceToImportBuilder) updates]) = _$ResourceToImport;

  const ResourceToImport._();

  static const List<_i3.SmithySerializer> serializers = [
    ResourceToImportAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceToImportBuilder b) {}

  /// The type of resource to import into your stack, such as `AWS::S3::Bucket`. For a list of supported resource types, see [Resources that support import operations](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html) in the CloudFormation User Guide.
  String get resourceType;

  /// The logical ID of the target resource as specified in the template.
  String get logicalResourceId;

  /// A key-value pair that identifies the target resource. The key is an identifier property (for example, `BucketName` for `AWS::S3::Bucket` resources) and the value is the actual property value (for example, `MyS3Bucket`).
  _i2.BuiltMap<String, String> get resourceIdentifier;
  @override
  List<Object?> get props => [
        resourceType,
        logicalResourceId,
        resourceIdentifier,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceToImport');
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'logicalResourceId',
      logicalResourceId,
    );
    helper.add(
      'resourceIdentifier',
      resourceIdentifier,
    );
    return helper.toString();
  }
}

class ResourceToImportAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ResourceToImport> {
  const ResourceToImportAwsQuerySerializer() : super('ResourceToImport');

  @override
  Iterable<Type> get types => const [
        ResourceToImport,
        _$ResourceToImport,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ResourceToImport deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceToImportBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'LogicalResourceId':
          result.logicalResourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ResourceIdentifier':
          result.resourceIdentifier.replace(const _i3.XmlBuiltMapSerializer(
                  indexer: _i3.XmlIndexer.awsQueryMap)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ));
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
    final payload = (object as ResourceToImport);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ResourceToImportResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('ResourceType'))
      ..add(serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('LogicalResourceId'))
      ..add(serializers.serialize(
        payload.logicalResourceId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('ResourceIdentifier'))
      ..add(const _i3.XmlBuiltMapSerializer(indexer: _i3.XmlIndexer.awsQueryMap)
          .serialize(
        serializers,
        payload.resourceIdentifier,
        specifiedType: const FullType.nullable(
          _i2.BuiltMap,
          [
            FullType(String),
            FullType(String),
          ],
        ),
      ));
    return result;
  }
}
