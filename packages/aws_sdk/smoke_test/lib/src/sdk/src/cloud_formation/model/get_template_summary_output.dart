// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.get_template_summary_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter_declaration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_identifier_summary.dart'
    as _i4;

part 'get_template_summary_output.g.dart';

/// The output for the GetTemplateSummary action.
abstract class GetTemplateSummaryOutput
    with _i1.AWSEquatable<GetTemplateSummaryOutput>
    implements
        Built<GetTemplateSummaryOutput, GetTemplateSummaryOutputBuilder> {
  /// The output for the GetTemplateSummary action.
  factory GetTemplateSummaryOutput({
    List<_i2.ParameterDeclaration>? parameters,
    String? description,
    List<_i3.Capability>? capabilities,
    String? capabilitiesReason,
    List<String>? resourceTypes,
    String? version,
    String? metadata,
    List<String>? declaredTransforms,
    List<_i4.ResourceIdentifierSummary>? resourceIdentifierSummaries,
  }) {
    return _$GetTemplateSummaryOutput._(
      parameters: parameters == null ? null : _i5.BuiltList(parameters),
      description: description,
      capabilities: capabilities == null ? null : _i5.BuiltList(capabilities),
      capabilitiesReason: capabilitiesReason,
      resourceTypes:
          resourceTypes == null ? null : _i5.BuiltList(resourceTypes),
      version: version,
      metadata: metadata,
      declaredTransforms:
          declaredTransforms == null ? null : _i5.BuiltList(declaredTransforms),
      resourceIdentifierSummaries: resourceIdentifierSummaries == null
          ? null
          : _i5.BuiltList(resourceIdentifierSummaries),
    );
  }

  /// The output for the GetTemplateSummary action.
  factory GetTemplateSummaryOutput.build(
          [void Function(GetTemplateSummaryOutputBuilder) updates]) =
      _$GetTemplateSummaryOutput;

  const GetTemplateSummaryOutput._();

  /// Constructs a [GetTemplateSummaryOutput] from a [payload] and [response].
  factory GetTemplateSummaryOutput.fromResponse(
    GetTemplateSummaryOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer<GetTemplateSummaryOutput>>
      serializers = [GetTemplateSummaryOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetTemplateSummaryOutputBuilder b) {}

  /// A list of parameter declarations that describe various properties for each parameter.
  _i5.BuiltList<_i2.ParameterDeclaration>? get parameters;

  /// The value that's defined in the `Description` property of the template.
  String? get description;

  /// The capabilities found within the template. If your template contains IAM resources, you must specify the `CAPABILITY_IAM` or `CAPABILITY\_NAMED\_IAM` value for this parameter when you use the CreateStack or UpdateStack actions with your template; otherwise, those actions return an `InsufficientCapabilities` error.
  ///
  /// For more information, see [Acknowledging IAM Resources in CloudFormation Templates](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).
  _i5.BuiltList<_i3.Capability>? get capabilities;

  /// The list of resources that generated the values in the `Capabilities` response element.
  String? get capabilitiesReason;

  /// A list of all the template resource types that are defined in the template, such as `AWS::EC2::Instance`, `AWS::Dynamo::Table`, and `Custom::MyCustomInstance`.
  _i5.BuiltList<String>? get resourceTypes;

  /// The Amazon Web Services template format version, which identifies the capabilities of the template.
  String? get version;

  /// The value that's defined for the `Metadata` property of the template.
  String? get metadata;

  /// A list of the transforms that are declared in the template.
  _i5.BuiltList<String>? get declaredTransforms;

  /// A list of resource identifier summaries that describe the target resources of an import operation and the properties you can provide during the import to identify the target resources. For example, `BucketName` is a possible identifier property for an `AWS::S3::Bucket` resource.
  _i5.BuiltList<_i4.ResourceIdentifierSummary>? get resourceIdentifierSummaries;
  @override
  List<Object?> get props => [
        parameters,
        description,
        capabilities,
        capabilitiesReason,
        resourceTypes,
        version,
        metadata,
        declaredTransforms,
        resourceIdentifierSummaries,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetTemplateSummaryOutput')
      ..add(
        'parameters',
        parameters,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'capabilities',
        capabilities,
      )
      ..add(
        'capabilitiesReason',
        capabilitiesReason,
      )
      ..add(
        'resourceTypes',
        resourceTypes,
      )
      ..add(
        'version',
        version,
      )
      ..add(
        'metadata',
        metadata,
      )
      ..add(
        'declaredTransforms',
        declaredTransforms,
      )
      ..add(
        'resourceIdentifierSummaries',
        resourceIdentifierSummaries,
      );
    return helper.toString();
  }
}

class GetTemplateSummaryOutputAwsQuerySerializer
    extends _i6.StructuredSmithySerializer<GetTemplateSummaryOutput> {
  const GetTemplateSummaryOutputAwsQuerySerializer()
      : super('GetTemplateSummaryOutput');

  @override
  Iterable<Type> get types => const [
        GetTemplateSummaryOutput,
        _$GetTemplateSummaryOutput,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetTemplateSummaryOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTemplateSummaryOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Parameters':
          result.parameters.replace((const _i6.XmlBuiltListSerializer(
                  indexer: _i6.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i2.ParameterDeclaration)],
            ),
          ) as _i5.BuiltList<_i2.ParameterDeclaration>));
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Capabilities':
          result.capabilities.replace((const _i6.XmlBuiltListSerializer(
                  indexer: _i6.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.Capability)],
            ),
          ) as _i5.BuiltList<_i3.Capability>));
        case 'CapabilitiesReason':
          result.capabilitiesReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceTypes':
          result.resourceTypes.replace((const _i6.XmlBuiltListSerializer(
                  indexer: _i6.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'Version':
          result.version = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Metadata':
          result.metadata = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeclaredTransforms':
          result.declaredTransforms.replace((const _i6.XmlBuiltListSerializer(
                  indexer: _i6.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'ResourceIdentifierSummaries':
          result.resourceIdentifierSummaries.replace(
              (const _i6.XmlBuiltListSerializer(
                      indexer: _i6.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.ResourceIdentifierSummary)],
            ),
          ) as _i5.BuiltList<_i4.ResourceIdentifierSummary>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetTemplateSummaryOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'GetTemplateSummaryOutputResponse',
        _i6.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final GetTemplateSummaryOutput(
      :parameters,
      :description,
      :capabilities,
      :capabilitiesReason,
      :resourceTypes,
      :version,
      :metadata,
      :declaredTransforms,
      :resourceIdentifierSummaries
    ) = object;
    if (parameters != null) {
      result$
        ..add(const _i6.XmlElementName('Parameters'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          parameters,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.ParameterDeclaration)],
          ),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i6.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (capabilities != null) {
      result$
        ..add(const _i6.XmlElementName('Capabilities'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          capabilities,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.Capability)],
          ),
        ));
    }
    if (capabilitiesReason != null) {
      result$
        ..add(const _i6.XmlElementName('CapabilitiesReason'))
        ..add(serializers.serialize(
          capabilitiesReason,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceTypes != null) {
      result$
        ..add(const _i6.XmlElementName('ResourceTypes'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          resourceTypes,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (version != null) {
      result$
        ..add(const _i6.XmlElementName('Version'))
        ..add(serializers.serialize(
          version,
          specifiedType: const FullType(String),
        ));
    }
    if (metadata != null) {
      result$
        ..add(const _i6.XmlElementName('Metadata'))
        ..add(serializers.serialize(
          metadata,
          specifiedType: const FullType(String),
        ));
    }
    if (declaredTransforms != null) {
      result$
        ..add(const _i6.XmlElementName('DeclaredTransforms'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          declaredTransforms,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (resourceIdentifierSummaries != null) {
      result$
        ..add(const _i6.XmlElementName('ResourceIdentifierSummaries'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          resourceIdentifierSummaries,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.ResourceIdentifierSummary)],
          ),
        ));
    }
    return result$;
  }
}
