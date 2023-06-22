// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.rest_api; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key_source_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/endpoint_configuration.dart'
    as _i3;

part 'rest_api.g.dart';

/// Represents a REST API.
abstract class RestApi
    with _i1.AWSEquatable<RestApi>
    implements Built<RestApi, RestApiBuilder> {
  /// Represents a REST API.
  factory RestApi({
    String? id,
    String? name,
    String? description,
    DateTime? createdDate,
    String? version,
    List<String>? warnings,
    List<String>? binaryMediaTypes,
    int? minimumCompressionSize,
    _i2.ApiKeySourceType? apiKeySource,
    _i3.EndpointConfiguration? endpointConfiguration,
    String? policy,
    Map<String, String>? tags,
    bool? disableExecuteApiEndpoint,
  }) {
    disableExecuteApiEndpoint ??= false;
    return _$RestApi._(
      id: id,
      name: name,
      description: description,
      createdDate: createdDate,
      version: version,
      warnings: warnings == null ? null : _i4.BuiltList(warnings),
      binaryMediaTypes:
          binaryMediaTypes == null ? null : _i4.BuiltList(binaryMediaTypes),
      minimumCompressionSize: minimumCompressionSize,
      apiKeySource: apiKeySource,
      endpointConfiguration: endpointConfiguration,
      policy: policy,
      tags: tags == null ? null : _i4.BuiltMap(tags),
      disableExecuteApiEndpoint: disableExecuteApiEndpoint,
    );
  }

  /// Represents a REST API.
  factory RestApi.build([void Function(RestApiBuilder) updates]) = _$RestApi;

  const RestApi._();

  /// Constructs a [RestApi] from a [payload] and [response].
  factory RestApi.fromResponse(
    RestApi payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer<RestApi>> serializers = [
    RestApiRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestApiBuilder b) {
    b.disableExecuteApiEndpoint = false;
  }

  /// The API's identifier. This identifier is unique across all of your APIs in API Gateway.
  String? get id;

  /// The API's name.
  String? get name;

  /// The API's description.
  String? get description;

  /// The timestamp when the API was created.
  DateTime? get createdDate;

  /// A version identifier for the API.
  String? get version;

  /// The warning messages reported when `failonwarnings` is turned on during API import.
  _i4.BuiltList<String>? get warnings;

  /// The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.
  _i4.BuiltList<String>? get binaryMediaTypes;

  /// A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.
  int? get minimumCompressionSize;

  /// The source of the API key for metering requests according to a usage plan. Valid values are: >`HEADER` to read the API key from the `X-API-Key` header of a request. `AUTHORIZER` to read the API key from the `UsageIdentifierKey` from a custom authorizer.
  _i2.ApiKeySourceType? get apiKeySource;

  /// The endpoint configuration of this RestApi showing the endpoint types of the API.
  _i3.EndpointConfiguration? get endpointConfiguration;

  /// A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.
  String? get policy;

  /// The collection of tags. Each tag element is associated with a given resource.
  _i4.BuiltMap<String, String>? get tags;

  /// Specifies whether clients can invoke your API by using the default `execute-api` endpoint. By default, clients can invoke your API with the default `https://{api_id}.execute-api.{region}.amazonaws.com` endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.
  bool get disableExecuteApiEndpoint;
  @override
  List<Object?> get props => [
        id,
        name,
        description,
        createdDate,
        version,
        warnings,
        binaryMediaTypes,
        minimumCompressionSize,
        apiKeySource,
        endpointConfiguration,
        policy,
        tags,
        disableExecuteApiEndpoint,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestApi')
      ..add(
        'id',
        id,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'createdDate',
        createdDate,
      )
      ..add(
        'version',
        version,
      )
      ..add(
        'warnings',
        warnings,
      )
      ..add(
        'binaryMediaTypes',
        binaryMediaTypes,
      )
      ..add(
        'minimumCompressionSize',
        minimumCompressionSize,
      )
      ..add(
        'apiKeySource',
        apiKeySource,
      )
      ..add(
        'endpointConfiguration',
        endpointConfiguration,
      )
      ..add(
        'policy',
        policy,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'disableExecuteApiEndpoint',
        disableExecuteApiEndpoint,
      );
    return helper.toString();
  }
}

class RestApiRestJson1Serializer
    extends _i5.StructuredSmithySerializer<RestApi> {
  const RestApiRestJson1Serializer() : super('RestApi');

  @override
  Iterable<Type> get types => const [
        RestApi,
        _$RestApi,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  RestApi deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestApiBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'apiKeySource':
          result.apiKeySource = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ApiKeySourceType),
          ) as _i2.ApiKeySourceType);
        case 'binaryMediaTypes':
          result.binaryMediaTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'createdDate':
          result.createdDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'disableExecuteApiEndpoint':
          result.disableExecuteApiEndpoint = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'endpointConfiguration':
          result.endpointConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.EndpointConfiguration),
          ) as _i3.EndpointConfiguration));
        case 'id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'minimumCompressionSize':
          result.minimumCompressionSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'policy':
          result.policy = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
        case 'version':
          result.version = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'warnings':
          result.warnings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RestApi object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RestApi(
      :apiKeySource,
      :binaryMediaTypes,
      :createdDate,
      :description,
      :disableExecuteApiEndpoint,
      :endpointConfiguration,
      :id,
      :minimumCompressionSize,
      :name,
      :policy,
      :tags,
      :version,
      :warnings
    ) = object;
    result$.addAll([
      'disableExecuteApiEndpoint',
      serializers.serialize(
        disableExecuteApiEndpoint,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (apiKeySource != null) {
      result$
        ..add('apiKeySource')
        ..add(serializers.serialize(
          apiKeySource,
          specifiedType: const FullType(_i2.ApiKeySourceType),
        ));
    }
    if (binaryMediaTypes != null) {
      result$
        ..add('binaryMediaTypes')
        ..add(serializers.serialize(
          binaryMediaTypes,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
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
    if (description != null) {
      result$
        ..add('description')
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (endpointConfiguration != null) {
      result$
        ..add('endpointConfiguration')
        ..add(serializers.serialize(
          endpointConfiguration,
          specifiedType: const FullType(_i3.EndpointConfiguration),
        ));
    }
    if (id != null) {
      result$
        ..add('id')
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    if (minimumCompressionSize != null) {
      result$
        ..add('minimumCompressionSize')
        ..add(serializers.serialize(
          minimumCompressionSize,
          specifiedType: const FullType(int),
        ));
    }
    if (name != null) {
      result$
        ..add('name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (policy != null) {
      result$
        ..add('policy')
        ..add(serializers.serialize(
          policy,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add('tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (version != null) {
      result$
        ..add('version')
        ..add(serializers.serialize(
          version,
          specifiedType: const FullType(String),
        ));
    }
    if (warnings != null) {
      result$
        ..add('warnings')
        ..add(serializers.serialize(
          warnings,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
