// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_retention_configurations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_retention_configurations_request.g.dart';

abstract class DescribeRetentionConfigurationsRequest
    with
        _i1.HttpInput<DescribeRetentionConfigurationsRequest>,
        _i2.AWSEquatable<DescribeRetentionConfigurationsRequest>
    implements
        Built<DescribeRetentionConfigurationsRequest,
            DescribeRetentionConfigurationsRequestBuilder> {
  factory DescribeRetentionConfigurationsRequest({
    List<String>? retentionConfigurationNames,
    String? nextToken,
  }) {
    return _$DescribeRetentionConfigurationsRequest._(
      retentionConfigurationNames: retentionConfigurationNames == null
          ? null
          : _i3.BuiltList(retentionConfigurationNames),
      nextToken: nextToken,
    );
  }

  factory DescribeRetentionConfigurationsRequest.build(
      [void Function(DescribeRetentionConfigurationsRequestBuilder)
          updates]) = _$DescribeRetentionConfigurationsRequest;

  const DescribeRetentionConfigurationsRequest._();

  factory DescribeRetentionConfigurationsRequest.fromRequest(
    DescribeRetentionConfigurationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeRetentionConfigurationsRequest>>
      serializers = [
    DescribeRetentionConfigurationsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeRetentionConfigurationsRequestBuilder b) {}

  /// A list of names of retention configurations for which you want details. If you do not specify a name, Config returns details for all the retention configurations for that account.
  ///
  /// Currently, Config supports only one retention configuration per region in your account.
  _i3.BuiltList<String>? get retentionConfigurationNames;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeRetentionConfigurationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        retentionConfigurationNames,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeRetentionConfigurationsRequest')
          ..add(
            'retentionConfigurationNames',
            retentionConfigurationNames,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeRetentionConfigurationsRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeRetentionConfigurationsRequest> {
  const DescribeRetentionConfigurationsRequestAwsJson11Serializer()
      : super('DescribeRetentionConfigurationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeRetentionConfigurationsRequest,
        _$DescribeRetentionConfigurationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeRetentionConfigurationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRetentionConfigurationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RetentionConfigurationNames':
          result.retentionConfigurationNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeRetentionConfigurationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeRetentionConfigurationsRequest(
      :retentionConfigurationNames,
      :nextToken
    ) = object;
    if (retentionConfigurationNames != null) {
      result$
        ..add('RetentionConfigurationNames')
        ..add(serializers.serialize(
          retentionConfigurationNames,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
