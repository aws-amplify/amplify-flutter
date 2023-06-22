// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.api_gateway.model.rest_api; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/api_gateway/model/api_key_source_type.dart'
    as _i2;
import 'package:rest_json1_v2/src/api_gateway/model/endpoint_configuration.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i5;

part 'rest_api.g.dart';

abstract class RestApi
    with _i1.AWSEquatable<RestApi>
    implements Built<RestApi, RestApiBuilder> {
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

  factory RestApi.build([void Function(RestApiBuilder) updates]) = _$RestApi;

  const RestApi._();

  static const List<_i5.SmithySerializer<RestApi>> serializers = [
    RestApiRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestApiBuilder b) {}
  String? get id;
  String? get name;
  String? get description;
  DateTime? get createdDate;
  String? get version;
  _i4.BuiltList<String>? get warnings;
  _i4.BuiltList<String>? get binaryMediaTypes;
  int? get minimumCompressionSize;
  _i2.ApiKeySourceType? get apiKeySource;
  _i3.EndpointConfiguration? get endpointConfiguration;
  String? get policy;
  _i4.BuiltMap<String, String>? get tags;
  bool? get disableExecuteApiEndpoint;
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
    if (disableExecuteApiEndpoint != null) {
      result$
        ..add('disableExecuteApiEndpoint')
        ..add(serializers.serialize(
          disableExecuteApiEndpoint,
          specifiedType: const FullType(bool),
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
