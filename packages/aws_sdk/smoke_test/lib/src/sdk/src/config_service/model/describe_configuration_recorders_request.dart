// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.describe_configuration_recorders_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_configuration_recorders_request.g.dart';

/// The input for the DescribeConfigurationRecorders action.
abstract class DescribeConfigurationRecordersRequest
    with
        _i1.HttpInput<DescribeConfigurationRecordersRequest>,
        _i2.AWSEquatable<DescribeConfigurationRecordersRequest>
    implements
        Built<DescribeConfigurationRecordersRequest,
            DescribeConfigurationRecordersRequestBuilder> {
  /// The input for the DescribeConfigurationRecorders action.
  factory DescribeConfigurationRecordersRequest(
      {List<String>? configurationRecorderNames}) {
    return _$DescribeConfigurationRecordersRequest._(
        configurationRecorderNames: configurationRecorderNames == null
            ? null
            : _i3.BuiltList(configurationRecorderNames));
  }

  /// The input for the DescribeConfigurationRecorders action.
  factory DescribeConfigurationRecordersRequest.build(
      [void Function(DescribeConfigurationRecordersRequestBuilder)
          updates]) = _$DescribeConfigurationRecordersRequest;

  const DescribeConfigurationRecordersRequest._();

  factory DescribeConfigurationRecordersRequest.fromRequest(
    DescribeConfigurationRecordersRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeConfigurationRecordersRequest>>
      serializers = [
    DescribeConfigurationRecordersRequestAwsJson11Serializer()
  ];

  /// A list of configuration recorder names.
  _i3.BuiltList<String>? get configurationRecorderNames;
  @override
  DescribeConfigurationRecordersRequest getPayload() => this;
  @override
  List<Object?> get props => [configurationRecorderNames];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeConfigurationRecordersRequest')
          ..add(
            'configurationRecorderNames',
            configurationRecorderNames,
          );
    return helper.toString();
  }
}

class DescribeConfigurationRecordersRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeConfigurationRecordersRequest> {
  const DescribeConfigurationRecordersRequestAwsJson11Serializer()
      : super('DescribeConfigurationRecordersRequest');

  @override
  Iterable<Type> get types => const [
        DescribeConfigurationRecordersRequest,
        _$DescribeConfigurationRecordersRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigurationRecordersRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConfigurationRecordersRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationRecorderNames':
          result.configurationRecorderNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeConfigurationRecordersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConfigurationRecordersRequest(:configurationRecorderNames) =
        object;
    if (configurationRecorderNames != null) {
      result$
        ..add('ConfigurationRecorderNames')
        ..add(serializers.serialize(
          configurationRecorderNames,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
