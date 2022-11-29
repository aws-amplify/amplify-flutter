// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.describe_remediation_configurations_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_configuration.dart'
    as _i2;

part 'describe_remediation_configurations_response.g.dart';

abstract class DescribeRemediationConfigurationsResponse
    with
        _i1.AWSEquatable<DescribeRemediationConfigurationsResponse>
    implements
        Built<DescribeRemediationConfigurationsResponse,
            DescribeRemediationConfigurationsResponseBuilder> {
  factory DescribeRemediationConfigurationsResponse(
      {List<_i2.RemediationConfiguration>? remediationConfigurations}) {
    return _$DescribeRemediationConfigurationsResponse._(
        remediationConfigurations: remediationConfigurations == null
            ? null
            : _i3.BuiltList(remediationConfigurations));
  }

  factory DescribeRemediationConfigurationsResponse.build(
      [void Function(DescribeRemediationConfigurationsResponseBuilder)
          updates]) = _$DescribeRemediationConfigurationsResponse;

  const DescribeRemediationConfigurationsResponse._();

  /// Constructs a [DescribeRemediationConfigurationsResponse] from a [payload] and [response].
  factory DescribeRemediationConfigurationsResponse.fromResponse(
    DescribeRemediationConfigurationsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeRemediationConfigurationsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeRemediationConfigurationsResponseBuilder b) {}

  /// Returns a remediation configuration object.
  _i3.BuiltList<_i2.RemediationConfiguration>? get remediationConfigurations;
  @override
  List<Object?> get props => [remediationConfigurations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeRemediationConfigurationsResponse');
    helper.add(
      'remediationConfigurations',
      remediationConfigurations,
    );
    return helper.toString();
  }
}

class DescribeRemediationConfigurationsResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeRemediationConfigurationsResponse> {
  const DescribeRemediationConfigurationsResponseAwsJson11Serializer()
      : super('DescribeRemediationConfigurationsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeRemediationConfigurationsResponse,
        _$DescribeRemediationConfigurationsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeRemediationConfigurationsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRemediationConfigurationsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'RemediationConfigurations':
          if (value != null) {
            result.remediationConfigurations.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.RemediationConfiguration)],
              ),
            ) as _i3.BuiltList<_i2.RemediationConfiguration>));
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
    final payload = (object as DescribeRemediationConfigurationsResponse);
    final result = <Object?>[];
    if (payload.remediationConfigurations != null) {
      result
        ..add('RemediationConfigurations')
        ..add(serializers.serialize(
          payload.remediationConfigurations!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.RemediationConfiguration)],
          ),
        ));
    }
    return result;
  }
}
