// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.describe_remediation_configurations_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_configuration.dart';

part 'describe_remediation_configurations_response.g.dart';

abstract class DescribeRemediationConfigurationsResponse
    with
        _i1.AWSEquatable<DescribeRemediationConfigurationsResponse>
    implements
        Built<DescribeRemediationConfigurationsResponse,
            DescribeRemediationConfigurationsResponseBuilder> {
  factory DescribeRemediationConfigurationsResponse(
      {List<RemediationConfiguration>? remediationConfigurations}) {
    return _$DescribeRemediationConfigurationsResponse._(
        remediationConfigurations: remediationConfigurations == null
            ? null
            : _i2.BuiltList(remediationConfigurations));
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

  static const List<
          _i3.SmithySerializer<DescribeRemediationConfigurationsResponse>>
      serializers = [
    DescribeRemediationConfigurationsResponseAwsJson11Serializer()
  ];

  /// Returns a remediation configuration object.
  _i2.BuiltList<RemediationConfiguration>? get remediationConfigurations;
  @override
  List<Object?> get props => [remediationConfigurations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeRemediationConfigurationsResponse')
          ..add(
            'remediationConfigurations',
            remediationConfigurations,
          );
    return helper.toString();
  }
}

class DescribeRemediationConfigurationsResponseAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<DescribeRemediationConfigurationsResponse> {
  const DescribeRemediationConfigurationsResponseAwsJson11Serializer()
      : super('DescribeRemediationConfigurationsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeRemediationConfigurationsResponse,
        _$DescribeRemediationConfigurationsResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RemediationConfigurations':
          result.remediationConfigurations.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(RemediationConfiguration)],
            ),
          ) as _i2.BuiltList<RemediationConfiguration>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeRemediationConfigurationsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeRemediationConfigurationsResponse(
      :remediationConfigurations
    ) = object;
    if (remediationConfigurations != null) {
      result$
        ..add('RemediationConfigurations')
        ..add(serializers.serialize(
          remediationConfigurations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(RemediationConfiguration)],
          ),
        ));
    }
    return result$;
  }
}
