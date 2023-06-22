// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.create_deployment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/cache_cluster_size.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/deployment_canary_settings.dart'
    as _i4;

part 'create_deployment_request.g.dart';

/// Requests API Gateway to create a Deployment resource.
abstract class CreateDeploymentRequest
    with
        _i1.HttpInput<CreateDeploymentRequestPayload>,
        _i2.AWSEquatable<CreateDeploymentRequest>
    implements
        Built<CreateDeploymentRequest, CreateDeploymentRequestBuilder>,
        _i1.HasPayload<CreateDeploymentRequestPayload> {
  /// Requests API Gateway to create a Deployment resource.
  factory CreateDeploymentRequest({
    required String restApiId,
    String? stageName,
    String? stageDescription,
    String? description,
    bool? cacheClusterEnabled,
    _i3.CacheClusterSize? cacheClusterSize,
    Map<String, String>? variables,
    _i4.DeploymentCanarySettings? canarySettings,
    bool? tracingEnabled,
  }) {
    return _$CreateDeploymentRequest._(
      restApiId: restApiId,
      stageName: stageName,
      stageDescription: stageDescription,
      description: description,
      cacheClusterEnabled: cacheClusterEnabled,
      cacheClusterSize: cacheClusterSize,
      variables: variables == null ? null : _i5.BuiltMap(variables),
      canarySettings: canarySettings,
      tracingEnabled: tracingEnabled,
    );
  }

  /// Requests API Gateway to create a Deployment resource.
  factory CreateDeploymentRequest.build(
          [void Function(CreateDeploymentRequestBuilder) updates]) =
      _$CreateDeploymentRequest;

  const CreateDeploymentRequest._();

  factory CreateDeploymentRequest.fromRequest(
    CreateDeploymentRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateDeploymentRequest.build((b) {
        b.cacheClusterEnabled = payload.cacheClusterEnabled;
        b.cacheClusterSize = payload.cacheClusterSize;
        if (payload.canarySettings != null) {
          b.canarySettings.replace(payload.canarySettings!);
        }
        b.description = payload.description;
        b.stageDescription = payload.stageDescription;
        b.stageName = payload.stageName;
        b.tracingEnabled = payload.tracingEnabled;
        if (payload.variables != null) {
          b.variables.replace(payload.variables!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer<CreateDeploymentRequestPayload>>
      serializers = [CreateDeploymentRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDeploymentRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the Stage resource for the Deployment resource to create.
  String? get stageName;

  /// The description of the Stage resource for the Deployment resource to create.
  String? get stageDescription;

  /// The description for the Deployment resource to create.
  String? get description;

  /// Enables a cache cluster for the Stage resource specified in the input.
  bool? get cacheClusterEnabled;

  /// The stage's cache capacity in GB. For more information about choosing a cache size, see [Enabling API caching to enhance responsiveness](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html).
  _i3.CacheClusterSize? get cacheClusterSize;

  /// A map that defines the stage variables for the Stage resource that is associated with the new deployment. Variable names can have alphanumeric and underscore characters, and the values must match `\[A-Za-z0-9-._~:/?#&=,\]+`.
  _i5.BuiltMap<String, String>? get variables;

  /// The input configuration for the canary deployment when the deployment is a canary release deployment.
  _i4.DeploymentCanarySettings? get canarySettings;

  /// Specifies whether active tracing with X-ray is enabled for the Stage.
  bool? get tracingEnabled;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  CreateDeploymentRequestPayload getPayload() =>
      CreateDeploymentRequestPayload((b) {
        b.cacheClusterEnabled = cacheClusterEnabled;
        b.cacheClusterSize = cacheClusterSize;
        if (canarySettings != null) {
          b.canarySettings.replace(canarySettings!);
        }
        b.description = description;
        b.stageDescription = stageDescription;
        b.stageName = stageName;
        b.tracingEnabled = tracingEnabled;
        if (variables != null) {
          b.variables.replace(variables!);
        }
      });
  @override
  List<Object?> get props => [
        restApiId,
        stageName,
        stageDescription,
        description,
        cacheClusterEnabled,
        cacheClusterSize,
        variables,
        canarySettings,
        tracingEnabled,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDeploymentRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'stageName',
        stageName,
      )
      ..add(
        'stageDescription',
        stageDescription,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'cacheClusterEnabled',
        cacheClusterEnabled,
      )
      ..add(
        'cacheClusterSize',
        cacheClusterSize,
      )
      ..add(
        'variables',
        variables,
      )
      ..add(
        'canarySettings',
        canarySettings,
      )
      ..add(
        'tracingEnabled',
        tracingEnabled,
      );
    return helper.toString();
  }
}

@_i6.internal
abstract class CreateDeploymentRequestPayload
    with
        _i2.AWSEquatable<CreateDeploymentRequestPayload>
    implements
        Built<CreateDeploymentRequestPayload,
            CreateDeploymentRequestPayloadBuilder> {
  factory CreateDeploymentRequestPayload(
          [void Function(CreateDeploymentRequestPayloadBuilder) updates]) =
      _$CreateDeploymentRequestPayload;

  const CreateDeploymentRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDeploymentRequestPayloadBuilder b) {}

  /// Enables a cache cluster for the Stage resource specified in the input.
  bool? get cacheClusterEnabled;

  /// The stage's cache capacity in GB. For more information about choosing a cache size, see [Enabling API caching to enhance responsiveness](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html).
  _i3.CacheClusterSize? get cacheClusterSize;

  /// The input configuration for the canary deployment when the deployment is a canary release deployment.
  _i4.DeploymentCanarySettings? get canarySettings;

  /// The description for the Deployment resource to create.
  String? get description;

  /// The description of the Stage resource for the Deployment resource to create.
  String? get stageDescription;

  /// The name of the Stage resource for the Deployment resource to create.
  String? get stageName;

  /// Specifies whether active tracing with X-ray is enabled for the Stage.
  bool? get tracingEnabled;

  /// A map that defines the stage variables for the Stage resource that is associated with the new deployment. Variable names can have alphanumeric and underscore characters, and the values must match `\[A-Za-z0-9-._~:/?#&=,\]+`.
  _i5.BuiltMap<String, String>? get variables;
  @override
  List<Object?> get props => [
        cacheClusterEnabled,
        cacheClusterSize,
        canarySettings,
        description,
        stageDescription,
        stageName,
        tracingEnabled,
        variables,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDeploymentRequestPayload')
      ..add(
        'cacheClusterEnabled',
        cacheClusterEnabled,
      )
      ..add(
        'cacheClusterSize',
        cacheClusterSize,
      )
      ..add(
        'canarySettings',
        canarySettings,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'stageDescription',
        stageDescription,
      )
      ..add(
        'stageName',
        stageName,
      )
      ..add(
        'tracingEnabled',
        tracingEnabled,
      )
      ..add(
        'variables',
        variables,
      );
    return helper.toString();
  }
}

class CreateDeploymentRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CreateDeploymentRequestPayload> {
  const CreateDeploymentRequestRestJson1Serializer()
      : super('CreateDeploymentRequest');

  @override
  Iterable<Type> get types => const [
        CreateDeploymentRequest,
        _$CreateDeploymentRequest,
        CreateDeploymentRequestPayload,
        _$CreateDeploymentRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateDeploymentRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDeploymentRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cacheClusterEnabled':
          result.cacheClusterEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'cacheClusterSize':
          result.cacheClusterSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.CacheClusterSize),
          ) as _i3.CacheClusterSize);
        case 'canarySettings':
          result.canarySettings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.DeploymentCanarySettings),
          ) as _i4.DeploymentCanarySettings));
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stageDescription':
          result.stageDescription = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stageName':
          result.stageName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tracingEnabled':
          result.tracingEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'variables':
          result.variables.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i5.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateDeploymentRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateDeploymentRequestPayload(
      :cacheClusterEnabled,
      :cacheClusterSize,
      :canarySettings,
      :description,
      :stageDescription,
      :stageName,
      :tracingEnabled,
      :variables
    ) = object;
    if (cacheClusterEnabled != null) {
      result$
        ..add('cacheClusterEnabled')
        ..add(serializers.serialize(
          cacheClusterEnabled,
          specifiedType: const FullType(bool),
        ));
    }
    if (cacheClusterSize != null) {
      result$
        ..add('cacheClusterSize')
        ..add(serializers.serialize(
          cacheClusterSize,
          specifiedType: const FullType(_i3.CacheClusterSize),
        ));
    }
    if (canarySettings != null) {
      result$
        ..add('canarySettings')
        ..add(serializers.serialize(
          canarySettings,
          specifiedType: const FullType(_i4.DeploymentCanarySettings),
        ));
    }
    if (description != null) {
      result$
        ..add('description')
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (stageDescription != null) {
      result$
        ..add('stageDescription')
        ..add(serializers.serialize(
          stageDescription,
          specifiedType: const FullType(String),
        ));
    }
    if (stageName != null) {
      result$
        ..add('stageName')
        ..add(serializers.serialize(
          stageName,
          specifiedType: const FullType(String),
        ));
    }
    if (tracingEnabled != null) {
      result$
        ..add('tracingEnabled')
        ..add(serializers.serialize(
          tracingEnabled,
          specifiedType: const FullType(bool),
        ));
    }
    if (variables != null) {
      result$
        ..add('variables')
        ..add(serializers.serialize(
          variables,
          specifiedType: const FullType(
            _i5.BuiltMap,
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
