// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    bool? cacheClusterEnabled,
    _i3.CacheClusterSize? cacheClusterSize,
    _i4.DeploymentCanarySettings? canarySettings,
    String? description,
    required String restApiId,
    String? stageDescription,
    String? stageName,
    bool? tracingEnabled,
    Map<String, String>? variables,
  }) {
    return _$CreateDeploymentRequest._(
      cacheClusterEnabled: cacheClusterEnabled,
      cacheClusterSize: cacheClusterSize,
      canarySettings: canarySettings,
      description: description,
      restApiId: restApiId,
      stageDescription: stageDescription,
      stageName: stageName,
      tracingEnabled: tracingEnabled,
      variables: variables == null ? null : _i5.BuiltMap(variables),
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

  static const List<_i1.SmithySerializer> serializers = [
    CreateDeploymentRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDeploymentRequestBuilder b) {}

  /// Enables a cache cluster for the Stage resource specified in the input.
  bool? get cacheClusterEnabled;

  /// Specifies the cache cluster size for the Stage resource specified in the input, if a cache cluster is enabled.
  _i3.CacheClusterSize? get cacheClusterSize;

  /// The input configuration for the canary deployment when the deployment is a canary release deployment.
  _i4.DeploymentCanarySettings? get canarySettings;

  /// The description for the Deployment resource to create.
  String? get description;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The description of the Stage resource for the Deployment resource to create.
  String? get stageDescription;

  /// The name of the Stage resource for the Deployment resource to create.
  String? get stageName;

  /// Specifies whether active tracing with X-ray is enabled for the Stage.
  bool? get tracingEnabled;

  /// A map that defines the stage variables for the Stage resource that is associated with the new deployment. Variable names can have alphanumeric and underscore characters, and the values must match `\[A-Za-z0-9-._~:/?#&=,\]+`.
  _i5.BuiltMap<String, String>? get variables;
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
        cacheClusterEnabled,
        cacheClusterSize,
        canarySettings,
        description,
        restApiId,
        stageDescription,
        stageName,
        tracingEnabled,
        variables,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDeploymentRequest');
    helper.add(
      'cacheClusterEnabled',
      cacheClusterEnabled,
    );
    helper.add(
      'cacheClusterSize',
      cacheClusterSize,
    );
    helper.add(
      'canarySettings',
      canarySettings,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'stageDescription',
      stageDescription,
    );
    helper.add(
      'stageName',
      stageName,
    );
    helper.add(
      'tracingEnabled',
      tracingEnabled,
    );
    helper.add(
      'variables',
      variables,
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

  /// Specifies the cache cluster size for the Stage resource specified in the input, if a cache cluster is enabled.
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
    final helper =
        newBuiltValueToStringHelper('CreateDeploymentRequestPayload');
    helper.add(
      'cacheClusterEnabled',
      cacheClusterEnabled,
    );
    helper.add(
      'cacheClusterSize',
      cacheClusterSize,
    );
    helper.add(
      'canarySettings',
      canarySettings,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'stageDescription',
      stageDescription,
    );
    helper.add(
      'stageName',
      stageName,
    );
    helper.add(
      'tracingEnabled',
      tracingEnabled,
    );
    helper.add(
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
      switch (key) {
        case 'cacheClusterEnabled':
          if (value != null) {
            result.cacheClusterEnabled = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'cacheClusterSize':
          if (value != null) {
            result.cacheClusterSize = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.CacheClusterSize),
            ) as _i3.CacheClusterSize);
          }
          break;
        case 'canarySettings':
          if (value != null) {
            result.canarySettings.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.DeploymentCanarySettings),
            ) as _i4.DeploymentCanarySettings));
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'stageDescription':
          if (value != null) {
            result.stageDescription = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'stageName':
          if (value != null) {
            result.stageName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tracingEnabled':
          if (value != null) {
            result.tracingEnabled = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'variables':
          if (value != null) {
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
    final payload = object is CreateDeploymentRequest
        ? object.getPayload()
        : (object as CreateDeploymentRequestPayload);
    final result = <Object?>[];
    if (payload.cacheClusterEnabled != null) {
      result
        ..add('cacheClusterEnabled')
        ..add(serializers.serialize(
          payload.cacheClusterEnabled!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.cacheClusterSize != null) {
      result
        ..add('cacheClusterSize')
        ..add(serializers.serialize(
          payload.cacheClusterSize!,
          specifiedType: const FullType(_i3.CacheClusterSize),
        ));
    }
    if (payload.canarySettings != null) {
      result
        ..add('canarySettings')
        ..add(serializers.serialize(
          payload.canarySettings!,
          specifiedType: const FullType(_i4.DeploymentCanarySettings),
        ));
    }
    if (payload.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stageDescription != null) {
      result
        ..add('stageDescription')
        ..add(serializers.serialize(
          payload.stageDescription!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stageName != null) {
      result
        ..add('stageName')
        ..add(serializers.serialize(
          payload.stageName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tracingEnabled != null) {
      result
        ..add('tracingEnabled')
        ..add(serializers.serialize(
          payload.tracingEnabled!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.variables != null) {
      result
        ..add('variables')
        ..add(serializers.serialize(
          payload.variables!,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result;
  }
}
