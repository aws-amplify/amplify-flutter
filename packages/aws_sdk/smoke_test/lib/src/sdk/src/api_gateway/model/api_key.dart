// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.api_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'api_key.g.dart';

/// A resource that can be distributed to callers for executing Method resources that require an API key. API keys can be mapped to any Stage on any RestApi, which indicates that the callers with the API key can make requests to that stage.
abstract class ApiKey
    with _i1.AWSEquatable<ApiKey>
    implements Built<ApiKey, ApiKeyBuilder> {
  /// A resource that can be distributed to callers for executing Method resources that require an API key. API keys can be mapped to any Stage on any RestApi, which indicates that the callers with the API key can make requests to that stage.
  factory ApiKey({
    DateTime? createdDate,
    String? customerId,
    String? description,
    bool? enabled,
    String? id,
    DateTime? lastUpdatedDate,
    String? name,
    List<String>? stageKeys,
    Map<String, String>? tags,
    String? value,
  }) {
    return _$ApiKey._(
      createdDate: createdDate,
      customerId: customerId,
      description: description,
      enabled: enabled,
      id: id,
      lastUpdatedDate: lastUpdatedDate,
      name: name,
      stageKeys: stageKeys == null ? null : _i2.BuiltList(stageKeys),
      tags: tags == null ? null : _i2.BuiltMap(tags),
      value: value,
    );
  }

  /// A resource that can be distributed to callers for executing Method resources that require an API key. API keys can be mapped to any Stage on any RestApi, which indicates that the callers with the API key can make requests to that stage.
  factory ApiKey.build([void Function(ApiKeyBuilder) updates]) = _$ApiKey;

  const ApiKey._();

  /// Constructs a [ApiKey] from a [payload] and [response].
  factory ApiKey.fromResponse(
    ApiKey payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ApiKeyRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ApiKeyBuilder b) {}

  /// The timestamp when the API Key was created.
  DateTime? get createdDate;

  /// An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.
  String? get customerId;

  /// The description of the API Key.
  String? get description;

  /// Specifies whether the API Key can be used by callers.
  bool? get enabled;

  /// The identifier of the API Key.
  String? get id;

  /// The timestamp when the API Key was last updated.
  DateTime? get lastUpdatedDate;

  /// The name of the API Key.
  String? get name;

  /// A list of Stage resources that are associated with the ApiKey resource.
  _i2.BuiltList<String>? get stageKeys;

  /// The collection of tags. Each tag element is associated with a given resource.
  _i2.BuiltMap<String, String>? get tags;

  /// The value of the API Key.
  String? get value;
  @override
  List<Object?> get props => [
        createdDate,
        customerId,
        description,
        enabled,
        id,
        lastUpdatedDate,
        name,
        stageKeys,
        tags,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ApiKey');
    helper.add(
      'createdDate',
      createdDate,
    );
    helper.add(
      'customerId',
      customerId,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'enabled',
      enabled,
    );
    helper.add(
      'id',
      id,
    );
    helper.add(
      'lastUpdatedDate',
      lastUpdatedDate,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'stageKeys',
      stageKeys,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class ApiKeyRestJson1Serializer extends _i3.StructuredSmithySerializer<ApiKey> {
  const ApiKeyRestJson1Serializer() : super('ApiKey');

  @override
  Iterable<Type> get types => const [
        ApiKey,
        _$ApiKey,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ApiKey deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiKeyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'createdDate':
          if (value != null) {
            result.createdDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'customerId':
          if (value != null) {
            result.customerId = (serializers.deserialize(
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
        case 'enabled':
          if (value != null) {
            result.enabled = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
        case 'lastUpdatedDate':
          if (value != null) {
            result.lastUpdatedDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
        case 'stageKeys':
          if (value != null) {
            result.stageKeys.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
          }
          break;
        case 'tags':
          if (value != null) {
            result.tags.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i2.BuiltMap<String, String>));
          }
          break;
        case 'value':
          if (value != null) {
            result.value = (serializers.deserialize(
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
    final payload = (object as ApiKey);
    final result = <Object?>[];
    if (payload.createdDate != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(
          payload.createdDate!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.customerId != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(
          payload.customerId!,
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
    if (payload.enabled != null) {
      result
        ..add('enabled')
        ..add(serializers.serialize(
          payload.enabled!,
          specifiedType: const FullType(bool),
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
    if (payload.lastUpdatedDate != null) {
      result
        ..add('lastUpdatedDate')
        ..add(serializers.serialize(
          payload.lastUpdatedDate!,
          specifiedType: const FullType(DateTime),
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
    if (payload.stageKeys != null) {
      result
        ..add('stageKeys')
        ..add(serializers.serialize(
          payload.stageKeys!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
