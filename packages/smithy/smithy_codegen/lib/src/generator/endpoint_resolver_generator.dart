// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/aws/endpoints.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

/// Generates the `serializers` and `builderFactories` fields necessary for shared
/// use by the operation protocols.
class EndpointResolverGenerator extends ShapeGenerator<ServiceShape, Library?> {
  EndpointResolverGenerator(ServiceShape shape, CodegenContext context)
      : super(shape, context);

  late final resolvedService = shape.resolvedService!;

  @override
  Library? generate() {
    if (!shape.isAwsService) {
      return null;
    }

    return Library((b) => b
      ..name = context.endpointResolverLibrary.libraryName
      ..body.addAll(_fields));
  }

  Expression _buildEndpointDefinition(EndpointDefinition definition) =>
      DartTypes.smithyAws.endpointDefinition.constInstance([], {
        if (definition.hostname != null)
          'hostname': literal(definition.hostname),
        if (definition.protocols.isNotEmpty)
          'protocols': literalList(definition.protocols.map(literalString)),
        if (definition.signatureVersions.isNotEmpty)
          'signatureVersions': literalList(definition.signatureVersions.map(
              (version) => DartTypes.smithyAws.awsSignatureVersion
                  .property(version.name))),
        if (definition.credentialScope != null)
          'credentialScope':
              DartTypes.smithyAws.credentialScope.constInstance([], {
            if (definition.credentialScope?.region != null)
              'region': literal(definition.credentialScope?.region),
            if (definition.credentialScope?.service != null)
              'service': literal(definition.credentialScope?.service),
          }),
        'variants': literalConstList([
          for (final variant in definition.variants)
            _buildEndpointDefinitionVariant(variant),
        ]),
      });

  Expression _buildEndpointDefinitionVariant(
          EndpointDefinitionVariant variant) =>
      DartTypes.smithyAws.endpointDefinitionVariant.constInstance([], {
        if (variant.dnsSuffix != null)
          'dnsSuffix': literalString(variant.dnsSuffix!),
        if (variant.hostname != null)
          'hostname': literalString(variant.hostname!),
        'tags': literalConstList(variant.tags.map(literalString).toList()),
      });

  Expression _buildPartition(Partition partition) {
    return DartTypes.smithyAws.partition.newInstance([], {
      'id': literalString(partition.id),
      'regionRegex': DartTypes.core.regExp.newInstance([
        literalString(partition.regionRegex.pattern, raw: true),
      ]),
      'partitionEndpoint': partition.partitionEndpoint == null
          ? literalNull
          : literalString(partition.partitionEndpoint!),
      'isRegionalized': literalBool(partition.isRegionalized),
      'defaults': _buildEndpointDefinition(partition.defaults),
      'regions': literalConstSet({
        for (final region in partition.regions) literalString(region),
      }),
      'endpoints': literalConstMap({
        for (final entry in partition.endpoints.entries)
          literalString(entry.key): _buildEndpointDefinition(entry.value),
      }),
    });
  }

  Iterable<Field> get _fields sync* {
    /// The `partitions` field which aggregates all the partitions for the service.
    final sortedPartitions = [...awsPartitions.keys]..sort();
    yield Field(
      (f) => f
        ..modifier = FieldModifier.final$
        ..name = '_partitions'
        ..assignment = literalList([
          for (final partitionName in sortedPartitions)
            _buildPartition(awsPartitions[partitionName]!
                .toPartition(resolvedService.endpointPrefix)),
        ]).code,
    );

    // The `endpointResolver`
    final endpointResolver = DartTypes.smithyAws.awsEndpointResolver
        .newInstance([refer('_partitions')]);
    yield Field(
      (f) => f
        ..annotations.add(DartTypes.meta.internal)
        ..modifier = FieldModifier.final$
        ..type = DartTypes.smithyAws.awsEndpointResolver
        ..name = 'endpointResolver'
        ..assignment = endpointResolver.code,
    );

    // The `sdkId` field.
    yield Field(
      (f) => f
        ..annotations.add(DartTypes.meta.internal)
        ..modifier = FieldModifier.constant
        ..type = DartTypes.core.string
        ..name = 'sdkId'
        ..assignment = literalString(resolvedService.sdkId).code,
    );
  }
}
