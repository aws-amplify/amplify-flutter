// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.usage_plan; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_stage.dart' as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/quota_settings.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/throttle_settings.dart'
    as _i4;

part 'usage_plan.g.dart';

/// Represents a usage plan used to specify who can assess associated API stages. Optionally, target request rate and quota limits can be set. In some cases clients can exceed the targets that you set. Don’t rely on usage plans to control costs. Consider using [Amazon Web Services Budgets](https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html) to monitor costs and [WAF](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html) to manage API requests.
abstract class UsagePlan
    with _i1.AWSEquatable<UsagePlan>
    implements Built<UsagePlan, UsagePlanBuilder> {
  /// Represents a usage plan used to specify who can assess associated API stages. Optionally, target request rate and quota limits can be set. In some cases clients can exceed the targets that you set. Don’t rely on usage plans to control costs. Consider using [Amazon Web Services Budgets](https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html) to monitor costs and [WAF](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html) to manage API requests.
  factory UsagePlan({
    List<_i2.ApiStage>? apiStages,
    String? description,
    String? id,
    String? name,
    String? productCode,
    _i3.QuotaSettings? quota,
    Map<String, String>? tags,
    _i4.ThrottleSettings? throttle,
  }) {
    return _$UsagePlan._(
      apiStages: apiStages == null ? null : _i5.BuiltList(apiStages),
      description: description,
      id: id,
      name: name,
      productCode: productCode,
      quota: quota,
      tags: tags == null ? null : _i5.BuiltMap(tags),
      throttle: throttle,
    );
  }

  /// Represents a usage plan used to specify who can assess associated API stages. Optionally, target request rate and quota limits can be set. In some cases clients can exceed the targets that you set. Don’t rely on usage plans to control costs. Consider using [Amazon Web Services Budgets](https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html) to monitor costs and [WAF](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html) to manage API requests.
  factory UsagePlan.build([void Function(UsagePlanBuilder) updates]) =
      _$UsagePlan;

  const UsagePlan._();

  /// Constructs a [UsagePlan] from a [payload] and [response].
  factory UsagePlan.fromResponse(
    UsagePlan payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer> serializers = [
    UsagePlanRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UsagePlanBuilder b) {}

  /// The associated API stages of a usage plan.
  _i5.BuiltList<_i2.ApiStage>? get apiStages;

  /// The description of a usage plan.
  String? get description;

  /// The identifier of a UsagePlan resource.
  String? get id;

  /// The name of a usage plan.
  String? get name;

  /// The AWS Markeplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.
  String? get productCode;

  /// The target maximum number of permitted requests per a given unit time interval.
  _i3.QuotaSettings? get quota;

  /// The collection of tags. Each tag element is associated with a given resource.
  _i5.BuiltMap<String, String>? get tags;

  /// A map containing method level throttling information for API stage in a usage plan.
  _i4.ThrottleSettings? get throttle;
  @override
  List<Object?> get props => [
        apiStages,
        description,
        id,
        name,
        productCode,
        quota,
        tags,
        throttle,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UsagePlan');
    helper.add(
      'apiStages',
      apiStages,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'id',
      id,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'productCode',
      productCode,
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

class UsagePlanRestJson1Serializer
    extends _i6.StructuredSmithySerializer<UsagePlan> {
  const UsagePlanRestJson1Serializer() : super('UsagePlan');

  @override
  Iterable<Type> get types => const [
        UsagePlan,
        _$UsagePlan,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UsagePlan deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsagePlanBuilder();
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
                _i5.BuiltList,
                [FullType(_i2.ApiStage)],
              ),
            ) as _i5.BuiltList<_i2.ApiStage>));
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
        case 'id':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'productCode':
          if (value != null) {
            result.productCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'quota':
          if (value != null) {
            result.quota.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.QuotaSettings),
            ) as _i3.QuotaSettings));
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
        case 'throttle':
          if (value != null) {
            result.throttle.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ThrottleSettings),
            ) as _i4.ThrottleSettings));
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
    final payload = (object as UsagePlan);
    final result = <Object?>[];
    if (payload.apiStages != null) {
      result
        ..add('apiStages')
        ..add(serializers.serialize(
          payload.apiStages!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i2.ApiStage)],
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
    if (payload.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
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
    if (payload.productCode != null) {
      result
        ..add('productCode')
        ..add(serializers.serialize(
          payload.productCode!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.quota != null) {
      result
        ..add('quota')
        ..add(serializers.serialize(
          payload.quota!,
          specifiedType: const FullType(_i3.QuotaSettings),
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
    if (payload.throttle != null) {
      result
        ..add('throttle')
        ..add(serializers.serialize(
          payload.throttle!,
          specifiedType: const FullType(_i4.ThrottleSettings),
        ));
    }
    return result;
  }
}
