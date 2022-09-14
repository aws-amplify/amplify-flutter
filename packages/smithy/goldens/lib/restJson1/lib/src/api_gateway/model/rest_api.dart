// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.api_gateway.model.rest_api; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/api_gateway/model/api_key_source_type.dart'
    as _i2;
import 'package:rest_json1_v1/src/api_gateway/model/endpoint_configuration.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i5;

part 'rest_api.g.dart';

abstract class RestApi
    with _i1.AWSEquatable<RestApi>
    implements Built<RestApi, RestApiBuilder> {
  factory RestApi(
      {_i2.ApiKeySourceType? apiKeySource,
      _i3.BuiltList<String>? binaryMediaTypes,
      DateTime? createdDate,
      String? description,
      bool? disableExecuteApiEndpoint,
      _i4.EndpointConfiguration? endpointConfiguration,
      String? id,
      int? minimumCompressionSize,
      String? name,
      String? policy,
      _i3.BuiltMap<String, String>? tags,
      String? version,
      _i3.BuiltList<String>? warnings}) {
    return _$RestApi._(
        apiKeySource: apiKeySource,
        binaryMediaTypes: binaryMediaTypes,
        createdDate: createdDate,
        description: description,
        disableExecuteApiEndpoint: disableExecuteApiEndpoint,
        endpointConfiguration: endpointConfiguration,
        id: id,
        minimumCompressionSize: minimumCompressionSize,
        name: name,
        policy: policy,
        tags: tags,
        version: version,
        warnings: warnings);
  }

  factory RestApi.build([void Function(RestApiBuilder) updates]) = _$RestApi;

  const RestApi._();

  static const List<_i5.SmithySerializer> serializers = [
    RestApiRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestApiBuilder b) {}
  _i2.ApiKeySourceType? get apiKeySource;
  _i3.BuiltList<String>? get binaryMediaTypes;
  DateTime? get createdDate;
  String? get description;
  bool? get disableExecuteApiEndpoint;
  _i4.EndpointConfiguration? get endpointConfiguration;
  String? get id;
  int? get minimumCompressionSize;
  String? get name;
  String? get policy;
  _i3.BuiltMap<String, String>? get tags;
  String? get version;
  _i3.BuiltList<String>? get warnings;
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
        warnings
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestApi');
    helper.add('apiKeySource', apiKeySource);
    helper.add('binaryMediaTypes', binaryMediaTypes);
    helper.add('createdDate', createdDate);
    helper.add('description', description);
    helper.add('disableExecuteApiEndpoint', disableExecuteApiEndpoint);
    helper.add('endpointConfiguration', endpointConfiguration);
    helper.add('id', id);
    helper.add('minimumCompressionSize', minimumCompressionSize);
    helper.add('name', name);
    helper.add('policy', policy);
    helper.add('tags', tags);
    helper.add('version', version);
    helper.add('warnings', warnings);
    return helper.toString();
  }
}

class RestApiRestJson1Serializer
    extends _i5.StructuredSmithySerializer<RestApi> {
  const RestApiRestJson1Serializer() : super('RestApi');

  @override
  Iterable<Type> get types => const [RestApi, _$RestApi];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  RestApi deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = RestApiBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'apiKeySource':
          if (value != null) {
            result.apiKeySource = (serializers.deserialize(value,
                    specifiedType: const FullType(_i2.ApiKeySourceType))
                as _i2.ApiKeySourceType);
          }
          break;
        case 'binaryMediaTypes':
          if (value != null) {
            result.binaryMediaTypes.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltList, [FullType(String)]))
                as _i3.BuiltList<String>));
          }
          break;
        case 'createdDate':
          if (value != null) {
            result.createdDate = (serializers.deserialize(value,
                specifiedType: const FullType(DateTime)) as DateTime);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'disableExecuteApiEndpoint':
          if (value != null) {
            result.disableExecuteApiEndpoint = (serializers.deserialize(value,
                specifiedType: const FullType(bool)) as bool);
          }
          break;
        case 'endpointConfiguration':
          if (value != null) {
            result.endpointConfiguration.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i4.EndpointConfiguration))
                as _i4.EndpointConfiguration));
          }
          break;
        case 'id':
          if (value != null) {
            result.id = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'minimumCompressionSize':
          if (value != null) {
            result.minimumCompressionSize = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'policy':
          if (value != null) {
            result.policy = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'tags':
          if (value != null) {
            result.tags.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i3.BuiltMap, [FullType(String), FullType(String)]))
                as _i3.BuiltMap<String, String>));
          }
          break;
        case 'version':
          if (value != null) {
            result.version = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'warnings':
          if (value != null) {
            result.warnings.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltList, [FullType(String)]))
                as _i3.BuiltList<String>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as RestApi);
    final result = <Object?>[];
    if (payload.apiKeySource != null) {
      result
        ..add('apiKeySource')
        ..add(serializers.serialize(payload.apiKeySource!,
            specifiedType: const FullType(_i2.ApiKeySourceType)));
    }
    if (payload.binaryMediaTypes != null) {
      result
        ..add('binaryMediaTypes')
        ..add(serializers.serialize(payload.binaryMediaTypes!,
            specifiedType: const FullType(_i3.BuiltList, [FullType(String)])));
    }
    if (payload.createdDate != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(payload.createdDate!,
            specifiedType: const FullType(DateTime)));
    }
    if (payload.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(payload.description!,
            specifiedType: const FullType(String)));
    }
    if (payload.disableExecuteApiEndpoint != null) {
      result
        ..add('disableExecuteApiEndpoint')
        ..add(serializers.serialize(payload.disableExecuteApiEndpoint!,
            specifiedType: const FullType(bool)));
    }
    if (payload.endpointConfiguration != null) {
      result
        ..add('endpointConfiguration')
        ..add(serializers.serialize(payload.endpointConfiguration!,
            specifiedType: const FullType(_i4.EndpointConfiguration)));
    }
    if (payload.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(payload.id!,
            specifiedType: const FullType(String)));
    }
    if (payload.minimumCompressionSize != null) {
      result
        ..add('minimumCompressionSize')
        ..add(serializers.serialize(payload.minimumCompressionSize!,
            specifiedType: const FullType(int)));
    }
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(payload.name!,
            specifiedType: const FullType(String)));
    }
    if (payload.policy != null) {
      result
        ..add('policy')
        ..add(serializers.serialize(payload.policy!,
            specifiedType: const FullType(String)));
    }
    if (payload.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(payload.tags!,
            specifiedType: const FullType(
                _i3.BuiltMap, [FullType(String), FullType(String)])));
    }
    if (payload.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(payload.version!,
            specifiedType: const FullType(String)));
    }
    if (payload.warnings != null) {
      result
        ..add('warnings')
        ..add(serializers.serialize(payload.warnings!,
            specifiedType: const FullType(_i3.BuiltList, [FullType(String)])));
    }
    return result;
  }
}
