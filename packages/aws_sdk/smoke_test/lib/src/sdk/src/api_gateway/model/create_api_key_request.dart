// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    String? customerId,
    String? description,
    bool? enabled,
    bool? generateDistinctId,
    String? name,
    List<_i3.StageKey>? stageKeys,
    Map<String, String>? tags,
    String? value,
  }) {
    return _$CreateApiKeyRequest._(
      customerId: customerId,
      description: description,
      enabled: enabled,
      generateDistinctId: generateDistinctId,
      name: name,
      stageKeys: stageKeys == null ? null : _i4.BuiltList(stageKeys),
      tags: tags == null ? null : _i4.BuiltMap(tags),
      value: value,
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

  static const List<_i1.SmithySerializer> serializers = [
    CreateApiKeyRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateApiKeyRequestBuilder b) {}

  /// An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.
  String? get customerId;

  /// The description of the ApiKey.
  String? get description;

  /// Specifies whether the ApiKey can be used by callers.
  bool? get enabled;

  /// Specifies whether (`true`) or not (`false`) the key identifier is distinct from the created API key value. This parameter is deprecated and should not be used.
  bool? get generateDistinctId;

  /// The name of the ApiKey.
  String? get name;

  /// DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API key.
  _i4.BuiltList<_i3.StageKey>? get stageKeys;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i4.BuiltMap<String, String>? get tags;

  /// Specifies a value of the API key.
  String? get value;
  @override
  CreateApiKeyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        customerId,
        description,
        enabled,
        generateDistinctId,
        name,
        stageKeys,
        tags,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateApiKeyRequest');
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
      'generateDistinctId',
      generateDistinctId,
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
      switch (key) {
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
        case 'generateDistinctId':
          if (value != null) {
            result.generateDistinctId = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
                _i4.BuiltList,
                [FullType(_i3.StageKey)],
              ),
            ) as _i4.BuiltList<_i3.StageKey>));
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
    final payload = (object as CreateApiKeyRequest);
    final result = <Object?>[];
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
    if (payload.generateDistinctId != null) {
      result
        ..add('generateDistinctId')
        ..add(serializers.serialize(
          payload.generateDistinctId!,
          specifiedType: const FullType(bool),
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
            _i4.BuiltList,
            [FullType(_i3.StageKey)],
          ),
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
