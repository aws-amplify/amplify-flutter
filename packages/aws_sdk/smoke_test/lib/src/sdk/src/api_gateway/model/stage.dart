// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.stage; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/api_gateway/model/access_log_settings.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/cache_cluster_size.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/cache_cluster_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/canary_settings.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_setting.dart'
    as _i4;

part 'stage.g.dart';

/// Represents a unique identifier for a version of a deployed RestApi that is callable by users.
abstract class Stage
    with _i1.AWSEquatable<Stage>
    implements Built<Stage, StageBuilder> {
  /// Represents a unique identifier for a version of a deployed RestApi that is callable by users.
  factory Stage({
    String? deploymentId,
    String? clientCertificateId,
    String? stageName,
    String? description,
    bool? cacheClusterEnabled,
    _i2.CacheClusterSize? cacheClusterSize,
    _i3.CacheClusterStatus? cacheClusterStatus,
    Map<String, _i4.MethodSetting>? methodSettings,
    Map<String, String>? variables,
    String? documentationVersion,
    _i5.AccessLogSettings? accessLogSettings,
    _i6.CanarySettings? canarySettings,
    bool? tracingEnabled,
    String? webAclArn,
    Map<String, String>? tags,
    DateTime? createdDate,
    DateTime? lastUpdatedDate,
  }) {
    cacheClusterEnabled ??= false;
    tracingEnabled ??= false;
    return _$Stage._(
      deploymentId: deploymentId,
      clientCertificateId: clientCertificateId,
      stageName: stageName,
      description: description,
      cacheClusterEnabled: cacheClusterEnabled,
      cacheClusterSize: cacheClusterSize,
      cacheClusterStatus: cacheClusterStatus,
      methodSettings:
          methodSettings == null ? null : _i7.BuiltMap(methodSettings),
      variables: variables == null ? null : _i7.BuiltMap(variables),
      documentationVersion: documentationVersion,
      accessLogSettings: accessLogSettings,
      canarySettings: canarySettings,
      tracingEnabled: tracingEnabled,
      webAclArn: webAclArn,
      tags: tags == null ? null : _i7.BuiltMap(tags),
      createdDate: createdDate,
      lastUpdatedDate: lastUpdatedDate,
    );
  }

  /// Represents a unique identifier for a version of a deployed RestApi that is callable by users.
  factory Stage.build([void Function(StageBuilder) updates]) = _$Stage;

  const Stage._();

  /// Constructs a [Stage] from a [payload] and [response].
  factory Stage.fromResponse(
    Stage payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i8.SmithySerializer<Stage>> serializers = [
    StageRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StageBuilder b) {
    b.cacheClusterEnabled = false;
    b.tracingEnabled = false;
  }

  /// The identifier of the Deployment that the stage points to.
  String? get deploymentId;

  /// The identifier of a client certificate for an API stage.
  String? get clientCertificateId;

  /// The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.
  String? get stageName;

  /// The stage's description.
  String? get description;

  /// Specifies whether a cache cluster is enabled for the stage.
  bool get cacheClusterEnabled;

  /// The stage's cache capacity in GB. For more information about choosing a cache size, see [Enabling API caching to enhance responsiveness](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html).
  _i2.CacheClusterSize? get cacheClusterSize;

  /// The status of the cache cluster for the stage, if enabled.
  _i3.CacheClusterStatus? get cacheClusterStatus;

  /// A map that defines the method settings for a Stage resource. Keys (designated as `/{method\_setting\_key` below) are method paths defined as `{resource\_path}/{http\_method}` for an individual method override, or `/\*/\*` for overriding all methods in the stage.
  _i7.BuiltMap<String, _i4.MethodSetting>? get methodSettings;

  /// A map that defines the stage variables for a Stage resource. Variable names can have alphanumeric and underscore characters, and the values must match `\[A-Za-z0-9-._~:/?#&=,\]+`.
  _i7.BuiltMap<String, String>? get variables;

  /// The version of the associated API documentation.
  String? get documentationVersion;

  /// Settings for logging access in this stage.
  _i5.AccessLogSettings? get accessLogSettings;

  /// Settings for the canary deployment in this stage.
  _i6.CanarySettings? get canarySettings;

  /// Specifies whether active tracing with X-ray is enabled for the Stage.
  bool get tracingEnabled;

  /// The ARN of the WebAcl associated with the Stage.
  String? get webAclArn;

  /// The collection of tags. Each tag element is associated with a given resource.
  _i7.BuiltMap<String, String>? get tags;

  /// The timestamp when the stage was created.
  DateTime? get createdDate;

  /// The timestamp when the stage last updated.
  DateTime? get lastUpdatedDate;
  @override
  List<Object?> get props => [
        deploymentId,
        clientCertificateId,
        stageName,
        description,
        cacheClusterEnabled,
        cacheClusterSize,
        cacheClusterStatus,
        methodSettings,
        variables,
        documentationVersion,
        accessLogSettings,
        canarySettings,
        tracingEnabled,
        webAclArn,
        tags,
        createdDate,
        lastUpdatedDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Stage')
      ..add(
        'deploymentId',
        deploymentId,
      )
      ..add(
        'clientCertificateId',
        clientCertificateId,
      )
      ..add(
        'stageName',
        stageName,
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
        'cacheClusterStatus',
        cacheClusterStatus,
      )
      ..add(
        'methodSettings',
        methodSettings,
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
        'accessLogSettings',
        accessLogSettings,
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
        'webAclArn',
        webAclArn,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'createdDate',
        createdDate,
      )
      ..add(
        'lastUpdatedDate',
        lastUpdatedDate,
      );
    return helper.toString();
  }
}

class StageRestJson1Serializer extends _i8.StructuredSmithySerializer<Stage> {
  const StageRestJson1Serializer() : super('Stage');

  @override
  Iterable<Type> get types => const [
        Stage,
        _$Stage,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Stage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'accessLogSettings':
          result.accessLogSettings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AccessLogSettings),
          ) as _i5.AccessLogSettings));
        case 'cacheClusterEnabled':
          result.cacheClusterEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'cacheClusterSize':
          result.cacheClusterSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.CacheClusterSize),
          ) as _i2.CacheClusterSize);
        case 'cacheClusterStatus':
          result.cacheClusterStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.CacheClusterStatus),
          ) as _i3.CacheClusterStatus);
        case 'canarySettings':
          result.canarySettings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.CanarySettings),
          ) as _i6.CanarySettings));
        case 'clientCertificateId':
          result.clientCertificateId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'createdDate':
          result.createdDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
        case 'lastUpdatedDate':
          result.lastUpdatedDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'methodSettings':
          result.methodSettings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltMap,
              [
                FullType(String),
                FullType(_i4.MethodSetting),
              ],
            ),
          ) as _i7.BuiltMap<String, _i4.MethodSetting>));
        case 'stageName':
          result.stageName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i7.BuiltMap<String, String>));
        case 'tracingEnabled':
          result.tracingEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'variables':
          result.variables.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i7.BuiltMap<String, String>));
        case 'webAclArn':
          result.webAclArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Stage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Stage(
      :accessLogSettings,
      :cacheClusterEnabled,
      :cacheClusterSize,
      :cacheClusterStatus,
      :canarySettings,
      :clientCertificateId,
      :createdDate,
      :deploymentId,
      :description,
      :documentationVersion,
      :lastUpdatedDate,
      :methodSettings,
      :stageName,
      :tags,
      :tracingEnabled,
      :variables,
      :webAclArn
    ) = object;
    result$.addAll([
      'cacheClusterEnabled',
      serializers.serialize(
        cacheClusterEnabled,
        specifiedType: const FullType(bool),
      ),
      'tracingEnabled',
      serializers.serialize(
        tracingEnabled,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (accessLogSettings != null) {
      result$
        ..add('accessLogSettings')
        ..add(serializers.serialize(
          accessLogSettings,
          specifiedType: const FullType(_i5.AccessLogSettings),
        ));
    }
    if (cacheClusterSize != null) {
      result$
        ..add('cacheClusterSize')
        ..add(serializers.serialize(
          cacheClusterSize,
          specifiedType: const FullType(_i2.CacheClusterSize),
        ));
    }
    if (cacheClusterStatus != null) {
      result$
        ..add('cacheClusterStatus')
        ..add(serializers.serialize(
          cacheClusterStatus,
          specifiedType: const FullType(_i3.CacheClusterStatus),
        ));
    }
    if (canarySettings != null) {
      result$
        ..add('canarySettings')
        ..add(serializers.serialize(
          canarySettings,
          specifiedType: const FullType(_i6.CanarySettings),
        ));
    }
    if (clientCertificateId != null) {
      result$
        ..add('clientCertificateId')
        ..add(serializers.serialize(
          clientCertificateId,
          specifiedType: const FullType(String),
        ));
    }
    if (createdDate != null) {
      result$
        ..add('createdDate')
        ..add(serializers.serialize(
          createdDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (deploymentId != null) {
      result$
        ..add('deploymentId')
        ..add(serializers.serialize(
          deploymentId,
          specifiedType: const FullType(String),
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
    if (lastUpdatedDate != null) {
      result$
        ..add('lastUpdatedDate')
        ..add(serializers.serialize(
          lastUpdatedDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (methodSettings != null) {
      result$
        ..add('methodSettings')
        ..add(serializers.serialize(
          methodSettings,
          specifiedType: const FullType(
            _i7.BuiltMap,
            [
              FullType(String),
              FullType(_i4.MethodSetting),
            ],
          ),
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
    if (tags != null) {
      result$
        ..add('tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i7.BuiltMap,
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
            _i7.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (webAclArn != null) {
      result$
        ..add('webAclArn')
        ..add(serializers.serialize(
          webAclArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
