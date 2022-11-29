// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    _i2.ApiKeySourceType? apiKeySource,
    List<String>? binaryMediaTypes,
    DateTime? createdDate,
    String? description,
    bool? disableExecuteApiEndpoint,
    _i3.EndpointConfiguration? endpointConfiguration,
    String? id,
    int? minimumCompressionSize,
    String? name,
    String? policy,
    Map<String, String>? tags,
    String? version,
    List<String>? warnings,
  }) {
    return _$RestApi._(
      apiKeySource: apiKeySource,
      binaryMediaTypes:
          binaryMediaTypes == null ? null : _i4.BuiltList(binaryMediaTypes),
      createdDate: createdDate,
      description: description,
      disableExecuteApiEndpoint: disableExecuteApiEndpoint,
      endpointConfiguration: endpointConfiguration,
      id: id,
      minimumCompressionSize: minimumCompressionSize,
      name: name,
      policy: policy,
      tags: tags == null ? null : _i4.BuiltMap(tags),
      version: version,
      warnings: warnings == null ? null : _i4.BuiltList(warnings),
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

  static const List<_i5.SmithySerializer> serializers = [
    RestApiRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestApiBuilder b) {}

  /// The source of the API key for metering requests according to a usage plan. Valid values are: >`HEADER` to read the API key from the `X-API-Key` header of a request. `AUTHORIZER` to read the API key from the `UsageIdentifierKey` from a custom authorizer.
  _i2.ApiKeySourceType? get apiKeySource;

  /// The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.
  _i4.BuiltList<String>? get binaryMediaTypes;

  /// The timestamp when the API was created.
  DateTime? get createdDate;

  /// The API's description.
  String? get description;

  /// Specifies whether clients can invoke your API by using the default `execute-api` endpoint. By default, clients can invoke your API with the default `https://{api_id}.execute-api.{region}.amazonaws.com` endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.
  bool? get disableExecuteApiEndpoint;

  /// The endpoint configuration of this RestApi showing the endpoint types of the API.
  _i3.EndpointConfiguration? get endpointConfiguration;

  /// The API's identifier. This identifier is unique across all of your APIs in API Gateway.
  String? get id;

  /// A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.
  int? get minimumCompressionSize;

  /// The API's name.
  String? get name;

  /// A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.
  String? get policy;

  /// The collection of tags. Each tag element is associated with a given resource.
  _i4.BuiltMap<String, String>? get tags;

  /// A version identifier for the API.
  String? get version;

  /// The warning messages reported when `failonwarnings` is turned on during API import.
  _i4.BuiltList<String>? get warnings;
  @override
  List<Object?> get props => [
        apiKeySource,
        binaryMediaTypes,
        createdDate,
        description,
        disableExecuteApiEndpoint,
        endpointConfiguration,
        id,
        minimumCompressionSize,
        name,
        policy,
        tags,
        version,
        warnings,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestApi');
    helper.add(
      'apiKeySource',
      apiKeySource,
    );
    helper.add(
      'binaryMediaTypes',
      binaryMediaTypes,
    );
    helper.add(
      'createdDate',
      createdDate,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'disableExecuteApiEndpoint',
      disableExecuteApiEndpoint,
    );
    helper.add(
      'endpointConfiguration',
      endpointConfiguration,
    );
    helper.add(
      'id',
      id,
    );
    helper.add(
      'minimumCompressionSize',
      minimumCompressionSize,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'policy',
      policy,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'version',
      version,
    );
    helper.add(
      'warnings',
      warnings,
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
      switch (key) {
        case 'apiKeySource':
          if (value != null) {
            result.apiKeySource = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ApiKeySourceType),
            ) as _i2.ApiKeySourceType);
          }
          break;
        case 'binaryMediaTypes':
          if (value != null) {
            result.binaryMediaTypes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
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
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'disableExecuteApiEndpoint':
          if (value != null) {
            result.disableExecuteApiEndpoint = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'endpointConfiguration':
          if (value != null) {
            result.endpointConfiguration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.EndpointConfiguration),
            ) as _i3.EndpointConfiguration));
          }
          break;
        case 'id':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'minimumCompressionSize':
          if (value != null) {
            result.minimumCompressionSize = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'policy':
          if (value != null) {
            result.policy = (serializers.deserialize(
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
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i4.BuiltMap<String, String>));
          }
          break;
        case 'version':
          if (value != null) {
            result.version = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'warnings':
          if (value != null) {
            result.warnings.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
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
    final payload = (object as RestApi);
    final result = <Object?>[];
    if (payload.apiKeySource != null) {
      result
        ..add('apiKeySource')
        ..add(serializers.serialize(
          payload.apiKeySource!,
          specifiedType: const FullType(_i2.ApiKeySourceType),
        ));
    }
    if (payload.binaryMediaTypes != null) {
      result
        ..add('binaryMediaTypes')
        ..add(serializers.serialize(
          payload.binaryMediaTypes!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
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
    if (payload.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.disableExecuteApiEndpoint != null) {
      result
        ..add('disableExecuteApiEndpoint')
        ..add(serializers.serialize(
          payload.disableExecuteApiEndpoint!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.endpointConfiguration != null) {
      result
        ..add('endpointConfiguration')
        ..add(serializers.serialize(
          payload.endpointConfiguration!,
          specifiedType: const FullType(_i3.EndpointConfiguration),
        ));
    }
    if (payload.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.minimumCompressionSize != null) {
      result
        ..add('minimumCompressionSize')
        ..add(serializers.serialize(
          payload.minimumCompressionSize!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.policy != null) {
      result
        ..add('policy')
        ..add(serializers.serialize(
          payload.policy!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(
          payload.version!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.warnings != null) {
      result
        ..add('warnings')
        ..add(serializers.serialize(
          payload.warnings!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
