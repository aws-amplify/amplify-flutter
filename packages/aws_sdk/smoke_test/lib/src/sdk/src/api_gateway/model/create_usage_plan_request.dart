// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.create_usage_plan_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_stage.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/quota_settings.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/throttle_settings.dart'
    as _i4;

part 'create_usage_plan_request.g.dart';

/// The POST request to create a usage plan with the name, description, throttle limits and quota limits, as well as the associated API stages, specified in the payload.
abstract class CreateUsagePlanRequest
    with
        _i1.HttpInput<CreateUsagePlanRequest>,
        _i2.AWSEquatable<CreateUsagePlanRequest>
    implements Built<CreateUsagePlanRequest, CreateUsagePlanRequestBuilder> {
  /// The POST request to create a usage plan with the name, description, throttle limits and quota limits, as well as the associated API stages, specified in the payload.
  factory CreateUsagePlanRequest({
    required String name,
    String? description,
    List<_i3.ApiStage>? apiStages,
    _i4.ThrottleSettings? throttle,
    _i5.QuotaSettings? quota,
    Map<String, String>? tags,
  }) {
    return _$CreateUsagePlanRequest._(
      name: name,
      description: description,
      apiStages: apiStages == null ? null : _i6.BuiltList(apiStages),
      throttle: throttle,
      quota: quota,
      tags: tags == null ? null : _i6.BuiltMap(tags),
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

  static const List<_i1.SmithySerializer<CreateUsagePlanRequest>> serializers =
      [CreateUsagePlanRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateUsagePlanRequestBuilder b) {}

  /// The name of the usage plan.
  String get name;

  /// The description of the usage plan.
  String? get description;

  /// The associated API stages of the usage plan.
  _i6.BuiltList<_i3.ApiStage>? get apiStages;

  /// The throttling limits of the usage plan.
  _i4.ThrottleSettings? get throttle;

  /// The quota of the usage plan.
  _i5.QuotaSettings? get quota;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i6.BuiltMap<String, String>? get tags;
  @override
  CreateUsagePlanRequest getPayload() => this;
  @override
  List<Object?> get props => [
        name,
        description,
        apiStages,
        throttle,
        quota,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateUsagePlanRequest')
      ..add(
        'name',
        name,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'apiStages',
        apiStages,
      )
      ..add(
        'throttle',
        throttle,
      )
      ..add(
        'quota',
        quota,
      )
      ..add(
        'tags',
        tags,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'apiStages':
          result.apiStages.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i3.ApiStage)],
            ),
          ) as _i6.BuiltList<_i3.ApiStage>));
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'quota':
          result.quota.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.QuotaSettings),
          ) as _i5.QuotaSettings));
        case 'tags':
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
        case 'throttle':
          result.throttle.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ThrottleSettings),
          ) as _i4.ThrottleSettings));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateUsagePlanRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateUsagePlanRequest(
      :apiStages,
      :description,
      :name,
      :quota,
      :tags,
      :throttle
    ) = object;
    result$.addAll([
      'name',
      serializers.serialize(
        name,
        specifiedType: const FullType(String),
      ),
    ]);
    if (apiStages != null) {
      result$
        ..add('apiStages')
        ..add(serializers.serialize(
          apiStages,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i3.ApiStage)],
          ),
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
    if (quota != null) {
      result$
        ..add('quota')
        ..add(serializers.serialize(
          quota,
          specifiedType: const FullType(_i5.QuotaSettings),
        ));
    }
    if (tags != null) {
      result$
        ..add('tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (throttle != null) {
      result$
        ..add('throttle')
        ..add(serializers.serialize(
          throttle,
          specifiedType: const FullType(_i4.ThrottleSettings),
        ));
    }
    return result$;
  }
}
