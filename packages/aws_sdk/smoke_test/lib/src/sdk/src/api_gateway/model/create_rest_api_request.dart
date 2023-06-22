// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String name,
    String? description,
    String? version,
    String? cloneFrom,
    List<String>? binaryMediaTypes,
    int? minimumCompressionSize,
    _i3.ApiKeySourceType? apiKeySource,
    _i4.EndpointConfiguration? endpointConfiguration,
    String? policy,
    Map<String, String>? tags,
    bool? disableExecuteApiEndpoint,
  }) {
    disableExecuteApiEndpoint ??= false;
    return _$CreateRestApiRequest._(
      name: name,
      description: description,
      version: version,
      cloneFrom: cloneFrom,
      binaryMediaTypes:
          binaryMediaTypes == null ? null : _i5.BuiltList(binaryMediaTypes),
      minimumCompressionSize: minimumCompressionSize,
      apiKeySource: apiKeySource,
      endpointConfiguration: endpointConfiguration,
      policy: policy,
      tags: tags == null ? null : _i5.BuiltMap(tags),
      disableExecuteApiEndpoint: disableExecuteApiEndpoint,
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

  static const List<_i1.SmithySerializer<CreateRestApiRequest>> serializers = [
    CreateRestApiRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateRestApiRequestBuilder b) {
    b.disableExecuteApiEndpoint = false;
  }

  /// The name of the RestApi.
  String get name;

  /// The description of the RestApi.
  String? get description;

  /// A version identifier for the API.
  String? get version;

  /// The ID of the RestApi that you want to clone from.
  String? get cloneFrom;

  /// The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.
  _i5.BuiltList<String>? get binaryMediaTypes;

  /// A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.
  int? get minimumCompressionSize;

  /// The source of the API key for metering requests according to a usage plan. Valid values are: >`HEADER` to read the API key from the `X-API-Key` header of a request. `AUTHORIZER` to read the API key from the `UsageIdentifierKey` from a custom authorizer.
  _i3.ApiKeySourceType? get apiKeySource;

  /// The endpoint configuration of this RestApi showing the endpoint types of the API.
  _i4.EndpointConfiguration? get endpointConfiguration;

  /// A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.
  String? get policy;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i5.BuiltMap<String, String>? get tags;

  /// Specifies whether clients can invoke your API by using the default `execute-api` endpoint. By default, clients can invoke your API with the default `https://{api_id}.execute-api.{region}.amazonaws.com` endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint
  bool get disableExecuteApiEndpoint;
  @override
  CreateRestApiRequest getPayload() => this;
  @override
  List<Object?> get props => [
        name,
        description,
        version,
        cloneFrom,
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
    final helper = newBuiltValueToStringHelper('CreateRestApiRequest')
      ..add(
        'name',
        name,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'version',
        version,
      )
      ..add(
        'cloneFrom',
        cloneFrom,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'apiKeySource':
          result.apiKeySource = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ApiKeySourceType),
          ) as _i3.ApiKeySourceType);
        case 'binaryMediaTypes':
          result.binaryMediaTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'cloneFrom':
          result.cloneFrom = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
            specifiedType: const FullType(_i4.EndpointConfiguration),
          ) as _i4.EndpointConfiguration));
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
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i5.BuiltMap<String, String>));
        case 'version':
          result.version = (serializers.deserialize(
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
    CreateRestApiRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateRestApiRequest(
      :apiKeySource,
      :binaryMediaTypes,
      :cloneFrom,
      :description,
      :disableExecuteApiEndpoint,
      :endpointConfiguration,
      :minimumCompressionSize,
      :name,
      :policy,
      :tags,
      :version
    ) = object;
    result$.addAll([
      'disableExecuteApiEndpoint',
      serializers.serialize(
        disableExecuteApiEndpoint,
        specifiedType: const FullType(bool),
      ),
      'name',
      serializers.serialize(
        name,
        specifiedType: const FullType(String),
      ),
    ]);
    if (apiKeySource != null) {
      result$
        ..add('apiKeySource')
        ..add(serializers.serialize(
          apiKeySource,
          specifiedType: const FullType(_i3.ApiKeySourceType),
        ));
    }
    if (binaryMediaTypes != null) {
      result$
        ..add('binaryMediaTypes')
        ..add(serializers.serialize(
          binaryMediaTypes,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (cloneFrom != null) {
      result$
        ..add('cloneFrom')
        ..add(serializers.serialize(
          cloneFrom,
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
    if (endpointConfiguration != null) {
      result$
        ..add('endpointConfiguration')
        ..add(serializers.serialize(
          endpointConfiguration,
          specifiedType: const FullType(_i4.EndpointConfiguration),
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
            _i5.BuiltMap,
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
    return result$;
  }
}
