// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.put_resource_config_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'put_resource_config_request.g.dart';

abstract class PutResourceConfigRequest
    with
        _i1.HttpInput<PutResourceConfigRequest>,
        _i2.AWSEquatable<PutResourceConfigRequest>
    implements
        Built<PutResourceConfigRequest, PutResourceConfigRequestBuilder> {
  factory PutResourceConfigRequest({
    required String resourceType,
    required String schemaVersionId,
    required String resourceId,
    String? resourceName,
    required String configuration,
    Map<String, String>? tags,
  }) {
    return _$PutResourceConfigRequest._(
      resourceType: resourceType,
      schemaVersionId: schemaVersionId,
      resourceId: resourceId,
      resourceName: resourceName,
      configuration: configuration,
      tags: tags == null ? null : _i3.BuiltMap(tags),
    );
  }

  factory PutResourceConfigRequest.build(
          [void Function(PutResourceConfigRequestBuilder) updates]) =
      _$PutResourceConfigRequest;

  const PutResourceConfigRequest._();

  factory PutResourceConfigRequest.fromRequest(
    PutResourceConfigRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PutResourceConfigRequest>>
      serializers = [PutResourceConfigRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutResourceConfigRequestBuilder b) {}

  /// The type of the resource. The custom resource type must be registered with CloudFormation.
  ///
  /// You cannot use the organization names “amzn”, “amazon”, “alexa”, “custom” with custom resource types. It is the first part of the ResourceType up to the first ::.
  String get resourceType;

  /// Version of the schema registered for the ResourceType in CloudFormation.
  String get schemaVersionId;

  /// Unique identifier of the resource.
  String get resourceId;

  /// Name of the resource.
  String? get resourceName;

  /// The configuration object of the resource in valid JSON format. It must match the schema registered with CloudFormation.
  ///
  /// The configuration JSON must not exceed 64 KB.
  String get configuration;

  /// Tags associated with the resource.
  ///
  /// This field is not to be confused with the Amazon Web Services-wide tag feature for Amazon Web Services resources. Tags for `PutResourceConfig` are tags that you supply for the configuration items of your custom resources.
  _i3.BuiltMap<String, String>? get tags;
  @override
  PutResourceConfigRequest getPayload() => this;
  @override
  List<Object?> get props => [
        resourceType,
        schemaVersionId,
        resourceId,
        resourceName,
        configuration,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutResourceConfigRequest')
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'schemaVersionId',
        schemaVersionId,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceName',
        resourceName,
      )
      ..add(
        'configuration',
        configuration,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class PutResourceConfigRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutResourceConfigRequest> {
  const PutResourceConfigRequestAwsJson11Serializer()
      : super('PutResourceConfigRequest');

  @override
  Iterable<Type> get types => const [
        PutResourceConfigRequest,
        _$PutResourceConfigRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutResourceConfigRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutResourceConfigRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SchemaVersionId':
          result.schemaVersionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceName':
          result.resourceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Configuration':
          result.configuration = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutResourceConfigRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutResourceConfigRequest(
      :resourceType,
      :schemaVersionId,
      :resourceId,
      :resourceName,
      :configuration,
      :tags
    ) = object;
    result$.addAll([
      'ResourceType',
      serializers.serialize(
        resourceType,
        specifiedType: const FullType(String),
      ),
      'SchemaVersionId',
      serializers.serialize(
        schemaVersionId,
        specifiedType: const FullType(String),
      ),
      'ResourceId',
      serializers.serialize(
        resourceId,
        specifiedType: const FullType(String),
      ),
      'Configuration',
      serializers.serialize(
        configuration,
        specifiedType: const FullType(String),
      ),
    ]);
    if (resourceName != null) {
      result$
        ..add('ResourceName')
        ..add(serializers.serialize(
          resourceName,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add('Tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result$;
  }
}
