// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.get_custom_rule_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_custom_rule_policy_request.g.dart';

abstract class GetCustomRulePolicyRequest
    with
        _i1.HttpInput<GetCustomRulePolicyRequest>,
        _i2.AWSEquatable<GetCustomRulePolicyRequest>
    implements
        Built<GetCustomRulePolicyRequest, GetCustomRulePolicyRequestBuilder> {
  factory GetCustomRulePolicyRequest({String? configRuleName}) {
    return _$GetCustomRulePolicyRequest._(configRuleName: configRuleName);
  }

  factory GetCustomRulePolicyRequest.build(
          [void Function(GetCustomRulePolicyRequestBuilder) updates]) =
      _$GetCustomRulePolicyRequest;

  const GetCustomRulePolicyRequest._();

  factory GetCustomRulePolicyRequest.fromRequest(
    GetCustomRulePolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetCustomRulePolicyRequest>>
      serializers = [GetCustomRulePolicyRequestAwsJson11Serializer()];

  /// The name of your Config Custom Policy rule.
  String? get configRuleName;
  @override
  GetCustomRulePolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [configRuleName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetCustomRulePolicyRequest')
      ..add(
        'configRuleName',
        configRuleName,
      );
    return helper.toString();
  }
}

class GetCustomRulePolicyRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GetCustomRulePolicyRequest> {
  const GetCustomRulePolicyRequestAwsJson11Serializer()
      : super('GetCustomRulePolicyRequest');

  @override
  Iterable<Type> get types => const [
        GetCustomRulePolicyRequest,
        _$GetCustomRulePolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetCustomRulePolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCustomRulePolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
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
    GetCustomRulePolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetCustomRulePolicyRequest(:configRuleName) = object;
    if (configRuleName != null) {
      result$
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          configRuleName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
