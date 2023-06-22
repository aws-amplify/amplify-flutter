// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_configuration_recorder_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_configuration_recorder_status_request.g.dart';

/// The input for the DescribeConfigurationRecorderStatus action.
abstract class DescribeConfigurationRecorderStatusRequest
    with
        _i1.HttpInput<DescribeConfigurationRecorderStatusRequest>,
        _i2.AWSEquatable<DescribeConfigurationRecorderStatusRequest>
    implements
        Built<DescribeConfigurationRecorderStatusRequest,
            DescribeConfigurationRecorderStatusRequestBuilder> {
  /// The input for the DescribeConfigurationRecorderStatus action.
  factory DescribeConfigurationRecorderStatusRequest(
      {List<String>? configurationRecorderNames}) {
    return _$DescribeConfigurationRecorderStatusRequest._(
        configurationRecorderNames: configurationRecorderNames == null
            ? null
            : _i3.BuiltList(configurationRecorderNames));
  }

  /// The input for the DescribeConfigurationRecorderStatus action.
  factory DescribeConfigurationRecorderStatusRequest.build(
      [void Function(DescribeConfigurationRecorderStatusRequestBuilder)
          updates]) = _$DescribeConfigurationRecorderStatusRequest;

  const DescribeConfigurationRecorderStatusRequest._();

  factory DescribeConfigurationRecorderStatusRequest.fromRequest(
    DescribeConfigurationRecorderStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeConfigurationRecorderStatusRequest>>
      serializers = [
    DescribeConfigurationRecorderStatusRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConfigurationRecorderStatusRequestBuilder b) {}

  /// The name(s) of the configuration recorder. If the name is not specified, the action returns the current status of all the configuration recorders associated with the account.
  _i3.BuiltList<String>? get configurationRecorderNames;
  @override
  DescribeConfigurationRecorderStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [configurationRecorderNames];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeConfigurationRecorderStatusRequest')
      ..add(
        'configurationRecorderNames',
        configurationRecorderNames,
      );
    return helper.toString();
  }
}

class DescribeConfigurationRecorderStatusRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeConfigurationRecorderStatusRequest> {
  const DescribeConfigurationRecorderStatusRequestAwsJson11Serializer()
      : super('DescribeConfigurationRecorderStatusRequest');

  @override
  Iterable<Type> get types => const [
        DescribeConfigurationRecorderStatusRequest,
        _$DescribeConfigurationRecorderStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigurationRecorderStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConfigurationRecorderStatusRequestBuilder();
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
    DescribeConfigurationRecorderStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConfigurationRecorderStatusRequest(
      :configurationRecorderNames
    ) = object;
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
