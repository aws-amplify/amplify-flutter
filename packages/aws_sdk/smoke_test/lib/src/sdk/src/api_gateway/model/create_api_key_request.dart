// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.create_api_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/stage_key.dart' as _i3;

part 'create_api_key_request.g.dart';

/// Request to create an ApiKey resource.
abstract class CreateApiKeyRequest
    with
        _i1.HttpInput<CreateApiKeyRequest>,
        _i2.AWSEquatable<CreateApiKeyRequest>
    implements Built<CreateApiKeyRequest, CreateApiKeyRequestBuilder> {
  /// Request to create an ApiKey resource.
  factory CreateApiKeyRequest({
    String? name,
    String? description,
    bool? enabled,
    bool? generateDistinctId,
    String? value,
    List<_i3.StageKey>? stageKeys,
    String? customerId,
    Map<String, String>? tags,
  }) {
    enabled ??= false;
    generateDistinctId ??= false;
    return _$CreateApiKeyRequest._(
      name: name,
      description: description,
      enabled: enabled,
      generateDistinctId: generateDistinctId,
      value: value,
      stageKeys: stageKeys == null ? null : _i4.BuiltList(stageKeys),
      customerId: customerId,
      tags: tags == null ? null : _i4.BuiltMap(tags),
    );
  }

  /// Request to create an ApiKey resource.
  factory CreateApiKeyRequest.build(
          [void Function(CreateApiKeyRequestBuilder) updates]) =
      _$CreateApiKeyRequest;

  const CreateApiKeyRequest._();

  factory CreateApiKeyRequest.fromRequest(
    CreateApiKeyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateApiKeyRequest>> serializers = [
    CreateApiKeyRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateApiKeyRequestBuilder b) {
    b.enabled = false;
    b.generateDistinctId = false;
  }

  /// The name of the ApiKey.
  String? get name;

  /// The description of the ApiKey.
  String? get description;

  /// Specifies whether the ApiKey can be used by callers.
  bool get enabled;

  /// Specifies whether (`true`) or not (`false`) the key identifier is distinct from the created API key value. This parameter is deprecated and should not be used.
  bool get generateDistinctId;

  /// Specifies a value of the API key.
  String? get value;

  /// DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API key.
  _i4.BuiltList<_i3.StageKey>? get stageKeys;

  /// An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.
  String? get customerId;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i4.BuiltMap<String, String>? get tags;
  @override
  CreateApiKeyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        name,
        description,
        enabled,
        generateDistinctId,
        value,
        stageKeys,
        customerId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateApiKeyRequest')
      ..add(
        'name',
        name,
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
        'generateDistinctId',
        generateDistinctId,
      )
      ..add(
        'value',
        value,
      )
      ..add(
        'stageKeys',
        stageKeys,
      )
      ..add(
        'customerId',
        customerId,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class CreateApiKeyRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CreateApiKeyRequest> {
  const CreateApiKeyRequestRestJson1Serializer() : super('CreateApiKeyRequest');

  @override
  Iterable<Type> get types => const [
        CreateApiKeyRequest,
        _$CreateApiKeyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateApiKeyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateApiKeyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'generateDistinctId':
          result.generateDistinctId = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stageKeys':
          result.stageKeys.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.StageKey)],
            ),
          ) as _i4.BuiltList<_i3.StageKey>));
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
    CreateApiKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateApiKeyRequest(
      :customerId,
      :description,
      :enabled,
      :generateDistinctId,
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
      'generateDistinctId',
      serializers.serialize(
        generateDistinctId,
        specifiedType: const FullType(bool),
      ),
    ]);
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
            _i4.BuiltList,
            [FullType(_i3.StageKey)],
          ),
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
