// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.delete_config_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_config_rule_request.g.dart';

abstract class DeleteConfigRuleRequest
    with
        _i1.HttpInput<DeleteConfigRuleRequest>,
        _i2.AWSEquatable<DeleteConfigRuleRequest>
    implements Built<DeleteConfigRuleRequest, DeleteConfigRuleRequestBuilder> {
  factory DeleteConfigRuleRequest({required String configRuleName}) {
    return _$DeleteConfigRuleRequest._(configRuleName: configRuleName);
  }

  factory DeleteConfigRuleRequest.build(
          [void Function(DeleteConfigRuleRequestBuilder) updates]) =
      _$DeleteConfigRuleRequest;

  const DeleteConfigRuleRequest._();

  factory DeleteConfigRuleRequest.fromRequest(
    DeleteConfigRuleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteConfigRuleRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteConfigRuleRequestBuilder b) {}

  /// The name of the Config rule that you want to delete.
  String get configRuleName;
  @override
  DeleteConfigRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [configRuleName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteConfigRuleRequest');
    helper.add(
      'configRuleName',
      configRuleName,
    );
    return helper.toString();
  }
}

class DeleteConfigRuleRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DeleteConfigRuleRequest> {
  const DeleteConfigRuleRequestAwsJson11Serializer()
      : super('DeleteConfigRuleRequest');

  @override
  Iterable<Type> get types => const [
        DeleteConfigRuleRequest,
        _$DeleteConfigRuleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteConfigRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteConfigRuleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DeleteConfigRuleRequest);
    final result = <Object?>[
      'ConfigRuleName',
      serializers.serialize(
        payload.configRuleName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
