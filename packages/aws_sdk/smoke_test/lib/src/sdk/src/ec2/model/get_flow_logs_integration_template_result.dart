// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_flow_logs_integration_template_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_flow_logs_integration_template_result.g.dart';

abstract class GetFlowLogsIntegrationTemplateResult
    with
        _i1.AWSEquatable<GetFlowLogsIntegrationTemplateResult>
    implements
        Built<GetFlowLogsIntegrationTemplateResult,
            GetFlowLogsIntegrationTemplateResultBuilder> {
  factory GetFlowLogsIntegrationTemplateResult({String? result}) {
    return _$GetFlowLogsIntegrationTemplateResult._(result: result);
  }

  factory GetFlowLogsIntegrationTemplateResult.build(
      [void Function(GetFlowLogsIntegrationTemplateResultBuilder)
          updates]) = _$GetFlowLogsIntegrationTemplateResult;

  const GetFlowLogsIntegrationTemplateResult._();

  /// Constructs a [GetFlowLogsIntegrationTemplateResult] from a [payload] and [response].
  factory GetFlowLogsIntegrationTemplateResult.fromResponse(
    GetFlowLogsIntegrationTemplateResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetFlowLogsIntegrationTemplateResult>>
      serializers = [GetFlowLogsIntegrationTemplateResultEc2QuerySerializer()];

  /// The generated CloudFormation template.
  String? get result;
  @override
  List<Object?> get props => [result];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetFlowLogsIntegrationTemplateResult')
          ..add(
            'result',
            result,
          );
    return helper.toString();
  }
}

class GetFlowLogsIntegrationTemplateResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<GetFlowLogsIntegrationTemplateResult> {
  const GetFlowLogsIntegrationTemplateResultEc2QuerySerializer()
      : super('GetFlowLogsIntegrationTemplateResult');

  @override
  Iterable<Type> get types => const [
        GetFlowLogsIntegrationTemplateResult,
        _$GetFlowLogsIntegrationTemplateResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetFlowLogsIntegrationTemplateResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFlowLogsIntegrationTemplateResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'result':
          result.result = (serializers.deserialize(
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
    GetFlowLogsIntegrationTemplateResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetFlowLogsIntegrationTemplateResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetFlowLogsIntegrationTemplateResult(:result) = object;
    if (result != null) {
      result$
        ..add(const _i2.XmlElementName('Result'))
        ..add(serializers.serialize(
          result,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
