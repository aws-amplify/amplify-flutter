// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.create_rest_api_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key_source_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/endpoint_configuration.dart'
    as _i4;

part 'create_rest_api_request.g.dart';

/// The POST Request to add a new RestApi resource to your collection.
abstract class CreateRestApiRequest
    with
        _i1.HttpInput<CreateRestApiRequest>,
        _i2.AWSEquatable<CreateRestApiRequest>
    implements Built<CreateRestApiRequest, CreateRestApiRequestBuilder> {
  /// The POST Request to add a new RestApi resource to your collection.
  factory CreateRestApiRequest({
    _i3.ApiKeySourceType? apiKeySource,
    List<String>? binaryMediaTypes,
    String? cloneFrom,
    String? description,
    bool? disableExecuteApiEndpoint,
    _i4.EndpointConfiguration? endpointConfiguration,
    int? minimumCompressionSize,
    required String name,
    String? policy,
    Map<String, String>? tags,
    String? version,
  }) {
    return _$CreateRestApiRequest._(
      apiKeySource: apiKeySource,
      binaryMediaTypes:
          binaryMediaTypes == null ? null : _i5.BuiltList(binaryMediaTypes),
      cloneFrom: cloneFrom,
      description: description,
      disableExecuteApiEndpoint: disableExecuteApiEndpoint,
      endpointConfiguration: endpointConfiguration,
      minimumCompressionSize: minimumCompressionSize,
      name: name,
      policy: policy,
      tags: tags == null ? null : _i5.BuiltMap(tags),
      version: version,
    );
  }

  /// The POST Request to add a new RestApi resource to your collection.
  factory CreateRestApiRequest.build(
          [void Function(CreateRestApiRequestBuilder) updates]) =
      _$CreateRestApiRequest;

  const CreateRestApiRequest._();

  factory CreateRestApiRequest.fromRequest(
    CreateRestApiRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateRestApiRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateRestApiRequestBuilder b) {}

  /// The source of the API key for metering requests according to a usage plan. Valid values are: >`HEADER` to read the API key from the `X-API-Key` header of a request. `AUTHORIZER` to read the API key from the `UsageIdentifierKey` from a custom authorizer.
  _i3.ApiKeySourceType? get apiKeySource;

  /// The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.
  _i5.BuiltList<String>? get binaryMediaTypes;

  /// The ID of the RestApi that you want to clone from.
  String? get cloneFrom;

  /// The description of the RestApi.
  String? get description;

  /// Specifies whether clients can invoke your API by using the default `execute-api` endpoint. By default, clients can invoke your API with the default `https://{api_id}.execute-api.{region}.amazonaws.com` endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint
  bool? get disableExecuteApiEndpoint;

  /// The endpoint configuration of this RestApi showing the endpoint types of the API.
  _i4.EndpointConfiguration? get endpointConfiguration;

  /// A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.
  int? get minimumCompressionSize;

  /// The name of the RestApi.
  String get name;

  /// A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.
  String? get policy;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i5.BuiltMap<String, String>? get tags;

  /// A version identifier for the API.
  String? get version;
  @override
  CreateRestApiRequest getPayload() => this;
  @override
  List<Object?> get props => [
        apiKeySource,
        binaryMediaTypes,
        cloneFrom,
        description,
        disableExecuteApiEndpoint,
        endpointConfiguration,
        minimumCompressionSize,
        name,
        policy,
        tags,
        version,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateRestApiRequest');
    helper.add(
      'apiKeySource',
      apiKeySource,
    );
    helper.add(
      'binaryMediaTypes',
      binaryMediaTypes,
    );
    helper.add(
      'cloneFrom',
      cloneFrom,
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
    return helper.toString();
  }
}

class CreateRestApiRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CreateRestApiRequest> {
  const CreateRestApiRequestRestJson1Serializer()
      : super('CreateRestApiRequest');

  @override
  Iterable<Type> get types => const [
        CreateRestApiRequest,
        _$CreateRestApiRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateRestApiRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateRestApiRequestBuilder();
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
              specifiedType: const FullType(_i3.ApiKeySourceType),
            ) as _i3.ApiKeySourceType);
          }
          break;
        case 'binaryMediaTypes':
          if (value != null) {
            result.binaryMediaTypes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'cloneFrom':
          if (value != null) {
            result.cloneFrom = (serializers.deserialize(
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
              specifiedType: const FullType(_i4.EndpointConfiguration),
            ) as _i4.EndpointConfiguration));
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
          result.name = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i5.BuiltMap<String, String>));
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
    final payload = (object as CreateRestApiRequest);
    final result = <Object?>[
      'name',
      serializers.serialize(
        payload.name,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.apiKeySource != null) {
      result
        ..add('apiKeySource')
        ..add(serializers.serialize(
          payload.apiKeySource!,
          specifiedType: const FullType(_i3.ApiKeySourceType),
        ));
    }
    if (payload.binaryMediaTypes != null) {
      result
        ..add('binaryMediaTypes')
        ..add(serializers.serialize(
          payload.binaryMediaTypes!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.cloneFrom != null) {
      result
        ..add('cloneFrom')
        ..add(serializers.serialize(
          payload.cloneFrom!,
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
          specifiedType: const FullType(_i4.EndpointConfiguration),
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
            _i5.BuiltMap,
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
    return result;
  }
}
