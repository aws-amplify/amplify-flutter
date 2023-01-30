// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.stage; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/api_gateway/model/access_log_settings.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/cache_cluster_size.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/cache_cluster_status.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/canary_settings.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_setting.dart'
    as _i6;

part 'stage.g.dart';

/// Represents a unique identifier for a version of a deployed RestApi that is callable by users.
abstract class Stage
    with _i1.AWSEquatable<Stage>
    implements Built<Stage, StageBuilder> {
  /// Represents a unique identifier for a version of a deployed RestApi that is callable by users.
  factory Stage({
    _i2.AccessLogSettings? accessLogSettings,
    bool? cacheClusterEnabled,
    _i3.CacheClusterSize? cacheClusterSize,
    _i4.CacheClusterStatus? cacheClusterStatus,
    _i5.CanarySettings? canarySettings,
    String? clientCertificateId,
    DateTime? createdDate,
    String? deploymentId,
    String? description,
    String? documentationVersion,
    DateTime? lastUpdatedDate,
    Map<String, _i6.MethodSetting>? methodSettings,
    String? stageName,
    Map<String, String>? tags,
    bool? tracingEnabled,
    Map<String, String>? variables,
    String? webAclArn,
  }) {
    return _$Stage._(
      accessLogSettings: accessLogSettings,
      cacheClusterEnabled: cacheClusterEnabled,
      cacheClusterSize: cacheClusterSize,
      cacheClusterStatus: cacheClusterStatus,
      canarySettings: canarySettings,
      clientCertificateId: clientCertificateId,
      createdDate: createdDate,
      deploymentId: deploymentId,
      description: description,
      documentationVersion: documentationVersion,
      lastUpdatedDate: lastUpdatedDate,
      methodSettings:
          methodSettings == null ? null : _i7.BuiltMap(methodSettings),
      stageName: stageName,
      tags: tags == null ? null : _i7.BuiltMap(tags),
      tracingEnabled: tracingEnabled,
      variables: variables == null ? null : _i7.BuiltMap(variables),
      webAclArn: webAclArn,
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

  static const List<_i8.SmithySerializer> serializers = [
    StageRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StageBuilder b) {}

  /// Settings for logging access in this stage.
  _i2.AccessLogSettings? get accessLogSettings;

  /// Specifies whether a cache cluster is enabled for the stage.
  bool? get cacheClusterEnabled;

  /// The size of the cache cluster for the stage, if enabled.
  _i3.CacheClusterSize? get cacheClusterSize;

  /// The status of the cache cluster for the stage, if enabled.
  _i4.CacheClusterStatus? get cacheClusterStatus;

  /// Settings for the canary deployment in this stage.
  _i5.CanarySettings? get canarySettings;

  /// The identifier of a client certificate for an API stage.
  String? get clientCertificateId;

  /// The timestamp when the stage was created.
  DateTime? get createdDate;

  /// The identifier of the Deployment that the stage points to.
  String? get deploymentId;

  /// The stage's description.
  String? get description;

  /// The version of the associated API documentation.
  String? get documentationVersion;

  /// The timestamp when the stage last updated.
  DateTime? get lastUpdatedDate;

  /// A map that defines the method settings for a Stage resource. Keys (designated as `/{method\_setting\_key` below) are method paths defined as `{resource\_path}/{http\_method}` for an individual method override, or `/\*/\*` for overriding all methods in the stage.
  _i7.BuiltMap<String, _i6.MethodSetting>? get methodSettings;

  /// The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.
  String? get stageName;

  /// The collection of tags. Each tag element is associated with a given resource.
  _i7.BuiltMap<String, String>? get tags;

  /// Specifies whether active tracing with X-ray is enabled for the Stage.
  bool? get tracingEnabled;

  /// A map that defines the stage variables for a Stage resource. Variable names can have alphanumeric and underscore characters, and the values must match `\[A-Za-z0-9-._~:/?#&=,\]+`.
  _i7.BuiltMap<String, String>? get variables;

  /// The ARN of the WebAcl associated with the Stage.
  String? get webAclArn;
  @override
  List<Object?> get props => [
        accessLogSettings,
        cacheClusterEnabled,
        cacheClusterSize,
        cacheClusterStatus,
        canarySettings,
        clientCertificateId,
        createdDate,
        deploymentId,
        description,
        documentationVersion,
        lastUpdatedDate,
        methodSettings,
        stageName,
        tags,
        tracingEnabled,
        variables,
        webAclArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Stage');
    helper.add(
      'accessLogSettings',
      accessLogSettings,
    );
    helper.add(
      'cacheClusterEnabled',
      cacheClusterEnabled,
    );
    helper.add(
      'cacheClusterSize',
      cacheClusterSize,
    );
    helper.add(
      'cacheClusterStatus',
      cacheClusterStatus,
    );
    helper.add(
      'canarySettings',
      canarySettings,
    );
    helper.add(
      'clientCertificateId',
      clientCertificateId,
    );
    helper.add(
      'createdDate',
      createdDate,
    );
    helper.add(
      'deploymentId',
      deploymentId,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'documentationVersion',
      documentationVersion,
    );
    helper.add(
      'lastUpdatedDate',
      lastUpdatedDate,
    );
    helper.add(
      'methodSettings',
      methodSettings,
    );
    helper.add(
      'stageName',
      stageName,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'tracingEnabled',
      tracingEnabled,
    );
    helper.add(
      'variables',
      variables,
    );
    helper.add(
      'webAclArn',
      webAclArn,
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
      switch (key) {
        case 'accessLogSettings':
          if (value != null) {
            result.accessLogSettings.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AccessLogSettings),
            ) as _i2.AccessLogSettings));
          }
          break;
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
        case 'cacheClusterStatus':
          if (value != null) {
            result.cacheClusterStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.CacheClusterStatus),
            ) as _i4.CacheClusterStatus);
          }
          break;
        case 'canarySettings':
          if (value != null) {
            result.canarySettings.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.CanarySettings),
            ) as _i5.CanarySettings));
          }
          break;
        case 'clientCertificateId':
          if (value != null) {
            result.clientCertificateId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'createdDate':
          if (value != null) {
            result.createdDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'deploymentId':
          if (value != null) {
            result.deploymentId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'documentationVersion':
          if (value != null) {
            result.documentationVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'lastUpdatedDate':
          if (value != null) {
            result.lastUpdatedDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'methodSettings':
          if (value != null) {
            result.methodSettings.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltMap,
                [
                  FullType(String),
                  FullType(_i6.MethodSetting),
                ],
              ),
            ) as _i7.BuiltMap<String, _i6.MethodSetting>));
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
        case 'tags':
          if (value != null) {
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
                _i7.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i7.BuiltMap<String, String>));
          }
          break;
        case 'webAclArn':
          if (value != null) {
            result.webAclArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as Stage);
    final result = <Object?>[];
    if (payload.accessLogSettings != null) {
      result
        ..add('accessLogSettings')
        ..add(serializers.serialize(
          payload.accessLogSettings!,
          specifiedType: const FullType(_i2.AccessLogSettings),
        ));
    }
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
    if (payload.cacheClusterStatus != null) {
      result
        ..add('cacheClusterStatus')
        ..add(serializers.serialize(
          payload.cacheClusterStatus!,
          specifiedType: const FullType(_i4.CacheClusterStatus),
        ));
    }
    if (payload.canarySettings != null) {
      result
        ..add('canarySettings')
        ..add(serializers.serialize(
          payload.canarySettings!,
          specifiedType: const FullType(_i5.CanarySettings),
        ));
    }
    if (payload.clientCertificateId != null) {
      result
        ..add('clientCertificateId')
        ..add(serializers.serialize(
          payload.clientCertificateId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createdDate != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(
          payload.createdDate!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.deploymentId != null) {
      result
        ..add('deploymentId')
        ..add(serializers.serialize(
          payload.deploymentId!,
          specifiedType: const FullType(String),
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
    if (payload.documentationVersion != null) {
      result
        ..add('documentationVersion')
        ..add(serializers.serialize(
          payload.documentationVersion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastUpdatedDate != null) {
      result
        ..add('lastUpdatedDate')
        ..add(serializers.serialize(
          payload.lastUpdatedDate!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.methodSettings != null) {
      result
        ..add('methodSettings')
        ..add(serializers.serialize(
          payload.methodSettings!,
          specifiedType: const FullType(
            _i7.BuiltMap,
            [
              FullType(String),
              FullType(_i6.MethodSetting),
            ],
          ),
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
    if (payload.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i7.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
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
            _i7.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.webAclArn != null) {
      result
        ..add('webAclArn')
        ..add(serializers.serialize(
          payload.webAclArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
