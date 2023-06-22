// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? id,
    String? value,
    String? name,
    String? customerId,
    String? description,
    bool? enabled,
    DateTime? createdDate,
    DateTime? lastUpdatedDate,
    List<String>? stageKeys,
    Map<String, String>? tags,
  }) {
    enabled ??= false;
    return _$ApiKey._(
      id: id,
      value: value,
      name: name,
      customerId: customerId,
      description: description,
      enabled: enabled,
      createdDate: createdDate,
      lastUpdatedDate: lastUpdatedDate,
      stageKeys: stageKeys == null ? null : _i2.BuiltList(stageKeys),
      tags: tags == null ? null : _i2.BuiltMap(tags),
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

  static const List<_i3.SmithySerializer<ApiKey>> serializers = [
    ApiKeyRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ApiKeyBuilder b) {
    b.enabled = false;
  }

  /// The identifier of the API Key.
  String? get id;

  /// The value of the API Key.
  String? get value;

  /// The name of the API Key.
  String? get name;

  /// An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.
  String? get customerId;

  /// The description of the API Key.
  String? get description;

  /// Specifies whether the API Key can be used by callers.
  bool get enabled;

  /// The timestamp when the API Key was created.
  DateTime? get createdDate;

  /// The timestamp when the API Key was last updated.
  DateTime? get lastUpdatedDate;

  /// A list of Stage resources that are associated with the ApiKey resource.
  _i2.BuiltList<String>? get stageKeys;

  /// The collection of tags. Each tag element is associated with a given resource.
  _i2.BuiltMap<String, String>? get tags;
  @override
  List<Object?> get props => [
        id,
        value,
        name,
        customerId,
        description,
        enabled,
        createdDate,
        lastUpdatedDate,
        stageKeys,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ApiKey')
      ..add(
        'id',
        id,
      )
      ..add(
        'value',
        value,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'customerId',
        customerId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'enabled',
        enabled,
      )
      ..add(
        'createdDate',
        createdDate,
      )
      ..add(
        'lastUpdatedDate',
        lastUpdatedDate,
      )
      ..add(
        'stageKeys',
        stageKeys,
      )
      ..add(
        'tags',
        tags,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'createdDate':
          result.createdDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'customerId':
          result.customerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'enabled':
          result.enabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'lastUpdatedDate':
          result.lastUpdatedDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stageKeys':
          result.stageKeys.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'tags':
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
        case 'value':
          result.value = (serializers.deserialize(
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
    ApiKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ApiKey(
      :createdDate,
      :customerId,
      :description,
      :enabled,
      :id,
      :lastUpdatedDate,
      :name,
      :stageKeys,
      :tags,
      :value
    ) = object;
    result$.addAll([
      'enabled',
      serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (createdDate != null) {
      result$
        ..add('createdDate')
        ..add(serializers.serialize(
          createdDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (customerId != null) {
      result$
        ..add('customerId')
        ..add(serializers.serialize(
          customerId,
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
    if (id != null) {
      result$
        ..add('id')
        ..add(serializers.serialize(
          id,
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
    if (name != null) {
      result$
        ..add('name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (stageKeys != null) {
      result$
        ..add('stageKeys')
        ..add(serializers.serialize(
          stageKeys,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (tags != null) {
      result$
        ..add('tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (value != null) {
      result$
        ..add('value')
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
