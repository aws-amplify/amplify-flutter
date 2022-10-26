// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.put_config_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/tag.dart' as _i4;

part 'put_config_rule_request.g.dart';

abstract class PutConfigRuleRequest
    with
        _i1.HttpInput<PutConfigRuleRequest>,
        _i2.AWSEquatable<PutConfigRuleRequest>
    implements Built<PutConfigRuleRequest, PutConfigRuleRequestBuilder> {
  factory PutConfigRuleRequest({
    required _i3.ConfigRule configRule,
    List<_i4.Tag>? tags,
  }) {
    return _$PutConfigRuleRequest._(
      configRule: configRule,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  factory PutConfigRuleRequest.build(
          [void Function(PutConfigRuleRequestBuilder) updates]) =
      _$PutConfigRuleRequest;

  const PutConfigRuleRequest._();

  factory PutConfigRuleRequest.fromRequest(
    PutConfigRuleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    PutConfigRuleRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutConfigRuleRequestBuilder b) {}

  /// The rule that you want to add to your account.
  _i3.ConfigRule get configRule;

  /// An array of tag object.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  PutConfigRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRule,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutConfigRuleRequest');
    helper.add(
      'configRule',
      configRule,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class PutConfigRuleRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutConfigRuleRequest> {
  const PutConfigRuleRequestAwsJson11Serializer()
      : super('PutConfigRuleRequest');

  @override
  Iterable<Type> get types => const [
        PutConfigRuleRequest,
        _$PutConfigRuleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutConfigRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutConfigRuleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigRule':
          result.configRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ConfigRule),
          ) as _i3.ConfigRule));
          break;
        case 'Tags':
          if (value != null) {
            result.tags.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i5.BuiltList<_i4.Tag>));
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
    final payload = (object as PutConfigRuleRequest);
    final result = <Object?>[
      'ConfigRule',
      serializers.serialize(
        payload.configRule,
        specifiedType: const FullType(_i3.ConfigRule),
      ),
    ];
    if (payload.tags != null) {
      result
        ..add('Tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    return result;
  }
}
