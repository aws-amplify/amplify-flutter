// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.create_usage_plan_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_stage.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/quota_settings.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/throttle_settings.dart'
    as _i5;

part 'create_usage_plan_request.g.dart';

/// The POST request to create a usage plan with the name, description, throttle limits and quota limits, as well as the associated API stages, specified in the payload.
abstract class CreateUsagePlanRequest
    with
        _i1.HttpInput<CreateUsagePlanRequest>,
        _i2.AWSEquatable<CreateUsagePlanRequest>
    implements Built<CreateUsagePlanRequest, CreateUsagePlanRequestBuilder> {
  /// The POST request to create a usage plan with the name, description, throttle limits and quota limits, as well as the associated API stages, specified in the payload.
  factory CreateUsagePlanRequest({
    List<_i3.ApiStage>? apiStages,
    String? description,
    required String name,
    _i4.QuotaSettings? quota,
    Map<String, String>? tags,
    _i5.ThrottleSettings? throttle,
  }) {
    return _$CreateUsagePlanRequest._(
      apiStages: apiStages == null ? null : _i6.BuiltList(apiStages),
      description: description,
      name: name,
      quota: quota,
      tags: tags == null ? null : _i6.BuiltMap(tags),
      throttle: throttle,
    );
  }

  /// The POST request to create a usage plan with the name, description, throttle limits and quota limits, as well as the associated API stages, specified in the payload.
  factory CreateUsagePlanRequest.build(
          [void Function(CreateUsagePlanRequestBuilder) updates]) =
      _$CreateUsagePlanRequest;

  const CreateUsagePlanRequest._();

  factory CreateUsagePlanRequest.fromRequest(
    CreateUsagePlanRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateUsagePlanRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateUsagePlanRequestBuilder b) {}

  /// The associated API stages of the usage plan.
  _i6.BuiltList<_i3.ApiStage>? get apiStages;

  /// The description of the usage plan.
  String? get description;

  /// The name of the usage plan.
  String get name;

  /// The quota of the usage plan.
  _i4.QuotaSettings? get quota;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i6.BuiltMap<String, String>? get tags;

  /// The throttling limits of the usage plan.
  _i5.ThrottleSettings? get throttle;
  @override
  CreateUsagePlanRequest getPayload() => this;
  @override
  List<Object?> get props => [
        apiStages,
        description,
        name,
        quota,
        tags,
        throttle,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateUsagePlanRequest');
    helper.add(
      'apiStages',
      apiStages,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'quota',
      quota,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'throttle',
      throttle,
    );
    return helper.toString();
  }
}

class CreateUsagePlanRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CreateUsagePlanRequest> {
  const CreateUsagePlanRequestRestJson1Serializer()
      : super('CreateUsagePlanRequest');

  @override
  Iterable<Type> get types => const [
        CreateUsagePlanRequest,
        _$CreateUsagePlanRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateUsagePlanRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateUsagePlanRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'apiStages':
          if (value != null) {
            result.apiStages.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.ApiStage)],
              ),
            ) as _i6.BuiltList<_i3.ApiStage>));
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
        case 'name':
          result.name = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'quota':
          if (value != null) {
            result.quota.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.QuotaSettings),
            ) as _i4.QuotaSettings));
          }
          break;
        case 'tags':
          if (value != null) {
            result.tags.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i6.BuiltMap<String, String>));
          }
          break;
        case 'throttle':
          if (value != null) {
            result.throttle.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ThrottleSettings),
            ) as _i5.ThrottleSettings));
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
    final payload = (object as CreateUsagePlanRequest);
    final result = <Object?>[
      'name',
      serializers.serialize(
        payload.name,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.apiStages != null) {
      result
        ..add('apiStages')
        ..add(serializers.serialize(
          payload.apiStages!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i3.ApiStage)],
          ),
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
    if (payload.quota != null) {
      result
        ..add('quota')
        ..add(serializers.serialize(
          payload.quota!,
          specifiedType: const FullType(_i4.QuotaSettings),
        ));
    }
    if (payload.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.throttle != null) {
      result
        ..add('throttle')
        ..add(serializers.serialize(
          payload.throttle!,
          specifiedType: const FullType(_i5.ThrottleSettings),
        ));
    }
    return result;
  }
}
