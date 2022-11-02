// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_remediation_configurations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_remediation_configurations_request.g.dart';

abstract class DescribeRemediationConfigurationsRequest
    with
        _i1.HttpInput<DescribeRemediationConfigurationsRequest>,
        _i2.AWSEquatable<DescribeRemediationConfigurationsRequest>
    implements
        Built<DescribeRemediationConfigurationsRequest,
            DescribeRemediationConfigurationsRequestBuilder> {
  factory DescribeRemediationConfigurationsRequest(
      {required List<String> configRuleNames}) {
    return _$DescribeRemediationConfigurationsRequest._(
        configRuleNames: _i3.BuiltList(configRuleNames));
  }

  factory DescribeRemediationConfigurationsRequest.build(
      [void Function(DescribeRemediationConfigurationsRequestBuilder)
          updates]) = _$DescribeRemediationConfigurationsRequest;

  const DescribeRemediationConfigurationsRequest._();

  factory DescribeRemediationConfigurationsRequest.fromRequest(
    DescribeRemediationConfigurationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeRemediationConfigurationsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeRemediationConfigurationsRequestBuilder b) {}

  /// A list of Config rule names of remediation configurations for which you want details.
  _i3.BuiltList<String> get configRuleNames;
  @override
  DescribeRemediationConfigurationsRequest getPayload() => this;
  @override
  List<Object?> get props => [configRuleNames];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeRemediationConfigurationsRequest');
    helper.add(
      'configRuleNames',
      configRuleNames,
    );
    return helper.toString();
  }
}

class DescribeRemediationConfigurationsRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeRemediationConfigurationsRequest> {
  const DescribeRemediationConfigurationsRequestAwsJson11Serializer()
      : super('DescribeRemediationConfigurationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeRemediationConfigurationsRequest,
        _$DescribeRemediationConfigurationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeRemediationConfigurationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRemediationConfigurationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigRuleNames':
          result.configRuleNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    final payload = (object as DescribeRemediationConfigurationsRequest);
    final result = <Object?>[
      'ConfigRuleNames',
      serializers.serialize(
        payload.configRuleNames,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ),
    ];
    return result;
  }
}
