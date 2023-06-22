// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.create_stage_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/cache_cluster_size.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/canary_settings.dart'
    as _i4;

part 'create_stage_request.g.dart';

/// Requests API Gateway to create a Stage resource.
abstract class CreateStageRequest
    with
        _i1.HttpInput<CreateStageRequestPayload>,
        _i2.AWSEquatable<CreateStageRequest>
    implements
        Built<CreateStageRequest, CreateStageRequestBuilder>,
        _i1.HasPayload<CreateStageRequestPayload> {
  /// Requests API Gateway to create a Stage resource.
  factory CreateStageRequest({
    required String restApiId,
    required String stageName,
    required String deploymentId,
    String? description,
    bool? cacheClusterEnabled,
    _i3.CacheClusterSize? cacheClusterSize,
    Map<String, String>? variables,
    String? documentationVersion,
    _i4.CanarySettings? canarySettings,
    bool? tracingEnabled,
    Map<String, String>? tags,
  }) {
    cacheClusterEnabled ??= false;
    tracingEnabled ??= false;
    return _$CreateStageRequest._(
      restApiId: restApiId,
      stageName: stageName,
      deploymentId: deploymentId,
      description: description,
      cacheClusterEnabled: cacheClusterEnabled,
      cacheClusterSize: cacheClusterSize,
      variables: variables == null ? null : _i5.BuiltMap(variables),
      documentationVersion: documentationVersion,
      canarySettings: canarySettings,
      tracingEnabled: tracingEnabled,
      tags: tags == null ? null : _i5.BuiltMap(tags),
    );
  }

  /// Requests API Gateway to create a Stage resource.
  factory CreateStageRequest.build(
          [void Function(CreateStageRequestBuilder) updates]) =
      _$CreateStageRequest;

  const CreateStageRequest._();

  factory CreateStageRequest.fromRequest(
    CreateStageRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateStageRequest.build((b) {
        b.cacheClusterEnabled = payload.cacheClusterEnabled;
        b.cacheClusterSize = payload.cacheClusterSize;
        if (payload.canarySettings != null) {
          b.canarySettings.replace(payload.canarySettings!);
        }
        b.deploymentId = payload.deploymentId;
        b.description = payload.description;
        b.documentationVersion = payload.documentationVersion;
        b.stageName = payload.stageName;
        if (payload.tags != null) {
          b.tags.replace(payload.tags!);
        }
        b.tracingEnabled = payload.tracingEnabled;
        if (payload.variables != null) {
          b.variables.replace(payload.variables!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer<CreateStageRequestPayload>>
      serializers = [CreateStageRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateStageRequestBuilder b) {
    b.cacheClusterEnabled = false;
    b.tracingEnabled = false;
  }

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name for the Stage resource. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.
  String get stageName;

  /// The identifier of the Deployment resource for the Stage resource.
  String get deploymentId;

  /// The description of the Stage resource.
  String? get description;

  /// Whether cache clustering is enabled for the stage.
  bool get cacheClusterEnabled;

  /// The stage's cache capacity in GB. For more information about choosing a cache size, see [Enabling API caching to enhance responsiveness](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html).
  _i3.CacheClusterSize? get cacheClusterSize;

  /// A map that defines the stage variables for the new Stage resource. Variable names can have alphanumeric and underscore characters, and the values must match `\[A-Za-z0-9-._~:/?#&=,\]+`.
  _i5.BuiltMap<String, String>? get variables;

  /// The version of the associated API documentation.
  String? get documentationVersion;

  /// The canary deployment settings of this stage.
  _i4.CanarySettings? get canarySettings;

  /// Specifies whether active tracing with X-ray is enabled for the Stage.
  bool get tracingEnabled;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i5.BuiltMap<String, String>? get tags;
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
  CreateStageRequestPayload getPayload() => CreateStageRequestPayload((b) {
        b.cacheClusterEnabled = cacheClusterEnabled;
        b.cacheClusterSize = cacheClusterSize;
        if (canarySettings != null) {
          b.canarySettings.replace(canarySettings!);
        }
        b.deploymentId = deploymentId;
        b.description = description;
        b.documentationVersion = documentationVersion;
        b.stageName = stageName;
        if (tags != null) {
          b.tags.replace(tags!);
        }
        b.tracingEnabled = tracingEnabled;
        if (variables != null) {
          b.variables.replace(variables!);
        }
      });
  @override
  List<Object?> get props => [
        restApiId,
        stageName,
        deploymentId,
        description,
        cacheClusterEnabled,
        cacheClusterSize,
        variables,
        documentationVersion,
        canarySettings,
        tracingEnabled,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateStageRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'stageName',
        stageName,
      )
      ..add(
        'deploymentId',
        deploymentId,
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
        'documentationVersion',
        documentationVersion,
      )
      ..add(
        'canarySettings',
        canarySettings,
      )
      ..add(
        'tracingEnabled',
        tracingEnabled,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

@_i6.internal
abstract class CreateStageRequestPayload
    with _i2.AWSEquatable<CreateStageRequestPayload>
    implements
        Built<CreateStageRequestPayload, CreateStageRequestPayloadBuilder> {
  factory CreateStageRequestPayload(
          [void Function(CreateStageRequestPayloadBuilder) updates]) =
      _$CreateStageRequestPayload;

  const CreateStageRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateStageRequestPayloadBuilder b) {
    b.cacheClusterEnabled = false;
    b.tracingEnabled = false;
  }

  /// Whether cache clustering is enabled for the stage.
  bool get cacheClusterEnabled;

  /// The stage's cache capacity in GB. For more information about choosing a cache size, see [Enabling API caching to enhance responsiveness](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html).
  _i3.CacheClusterSize? get cacheClusterSize;

  /// The canary deployment settings of this stage.
  _i4.CanarySettings? get canarySettings;

  /// The identifier of the Deployment resource for the Stage resource.
  String get deploymentId;

  /// The description of the Stage resource.
  String? get description;

  /// The version of the associated API documentation.
  String? get documentationVersion;

  /// The name for the Stage resource. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.
  String get stageName;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i5.BuiltMap<String, String>? get tags;

  /// Specifies whether active tracing with X-ray is enabled for the Stage.
  bool get tracingEnabled;

  /// A map that defines the stage variables for the new Stage resource. Variable names can have alphanumeric and underscore characters, and the values must match `\[A-Za-z0-9-._~:/?#&=,\]+`.
  _i5.BuiltMap<String, String>? get variables;
  @override
  List<Object?> get props => [
        cacheClusterEnabled,
        cacheClusterSize,
        canarySettings,
        deploymentId,
        description,
        documentationVersion,
        stageName,
        tags,
        tracingEnabled,
        variables,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateStageRequestPayload')
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
        'deploymentId',
        deploymentId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'documentationVersion',
        documentationVersion,
      )
      ..add(
        'stageName',
        stageName,
      )
      ..add(
        'tags',
        tags,
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

class CreateStageRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CreateStageRequestPayload> {
  const CreateStageRequestRestJson1Serializer() : super('CreateStageRequest');

  @override
  Iterable<Type> get types => const [
        CreateStageRequest,
        _$CreateStageRequest,
        CreateStageRequestPayload,
        _$CreateStageRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateStageRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateStageRequestPayloadBuilder();
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
            specifiedType: const FullType(_i4.CanarySettings),
          ) as _i4.CanarySettings));
        case 'deploymentId':
          result.deploymentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'documentationVersion':
          result.documentationVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stageName':
          result.stageName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i5.BuiltMap<String, String>));
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
    CreateStageRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateStageRequestPayload(
      :cacheClusterEnabled,
      :cacheClusterSize,
      :canarySettings,
      :deploymentId,
      :description,
      :documentationVersion,
      :stageName,
      :tags,
      :tracingEnabled,
      :variables
    ) = object;
    result$.addAll([
      'cacheClusterEnabled',
      serializers.serialize(
        cacheClusterEnabled,
        specifiedType: const FullType(bool),
      ),
      'deploymentId',
      serializers.serialize(
        deploymentId,
        specifiedType: const FullType(String),
      ),
      'stageName',
      serializers.serialize(
        stageName,
        specifiedType: const FullType(String),
      ),
      'tracingEnabled',
      serializers.serialize(
        tracingEnabled,
        specifiedType: const FullType(bool),
      ),
    ]);
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
          specifiedType: const FullType(_i4.CanarySettings),
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
    if (documentationVersion != null) {
      result$
        ..add('documentationVersion')
        ..add(serializers.serialize(
          documentationVersion,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add('tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
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
