// ignore_for_file: overridden_fields

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'service_trait.g.dart';

/// Registers a service as an AWS service. This trait is required for all AWS
/// services modeled in Smithy.
@ShapeIdConverter()
@JsonSerializable()
class ServiceTrait with AWSSerializable implements Trait<ServiceTrait> {
  const ServiceTrait({
    required this.sdkId,
    this.cloudFormationName,
    this.arnNamespace,
    this.cloudTrailEventSource,
    this.endpointPrefix,
  });

  factory ServiceTrait.fromJson(Object? json) =>
      _$ServiceTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.api', shape: 'service');

  /// The AWS CloudFormation service name.
  ///
  /// When not set, this value defaults to the name of the service shape.
  final String? cloudFormationName;

  /// The AWS ARN service namespace of the service.
  ///
  /// If not set, this value defaults to the name of the service shape
  /// converted to lowercase. This value is combined with resources contained
  /// within the service to form ARNs for resources. Only resources that
  /// explicitly define the 'aws.api#arnTemplate' trait are assigned ARNs,
  /// and their relative ARNs are combined with the service's arnNamespace to
  /// form an ARN.
  final String? arnNamespace;

  /// The SDK service ID.
  ///
  /// This value is used to generate SDK class names.
  final String sdkId;

  /// The CloudTrail event source name of the service.
  final String? cloudTrailEventSource;

  /// The endpoint prefix for the service.
  ///
  /// This value is not unique across services and it can change at any time.
  /// Therefore it MUST NOT be used to generate class names, namespaces, or
  /// for any other purpose that requires a static, unique identifier. The
  /// sdkId property should be used for those purposes.
  final String? endpointPrefix;

  /// Resolves the service trait definition for the given [target] service shape.
  ResolvedServiceTrait resolve(ShapeId target) {
    final arnNamespace = this.arnNamespace ?? target.shape.toLowerCase();
    return ResolvedServiceTrait(
        sdkId: sdkId,
        cloudFormationName: cloudFormationName ?? target.shape,
        arnNamespace: arnNamespace,
        cloudTrailEventSource:
            cloudTrailEventSource ?? '$arnNamespace.amazonaws.com',
        endpointPrefix: arnNamespace);
  }

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        cloudFormationName,
        arnNamespace,
        sdkId,
        cloudTrailEventSource,
        endpointPrefix,
      ];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ServiceTraitToJson(this);

  @override
  ServiceTrait get value => this;
}

@ShapeIdConverter()
@JsonSerializable()
class ResolvedServiceTrait extends ServiceTrait {
  const ResolvedServiceTrait({
    required this.cloudFormationName,
    required this.arnNamespace,
    required String sdkId,
    required this.cloudTrailEventSource,
    required this.endpointPrefix,
  }) : super(sdkId: sdkId);

  factory ResolvedServiceTrait.fromJson(Object? json) =>
      _$ResolvedServiceTraitFromJson((json as Map).cast<String, Object?>());

  @override
  final String cloudFormationName;

  @override
  final String arnNamespace;

  @override
  final String cloudTrailEventSource;

  @override
  final String endpointPrefix;

  @override
  ResolvedServiceTrait resolve(ShapeId target) => this;

  @override
  Map<String, Object?> toJson() => _$ResolvedServiceTraitToJson(this);
}
