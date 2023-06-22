// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_configuration_recorders_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_recorder.dart'
    as _i2;

part 'describe_configuration_recorders_response.g.dart';

/// The output for the DescribeConfigurationRecorders action.
abstract class DescribeConfigurationRecordersResponse
    with
        _i1.AWSEquatable<DescribeConfigurationRecordersResponse>
    implements
        Built<DescribeConfigurationRecordersResponse,
            DescribeConfigurationRecordersResponseBuilder> {
  /// The output for the DescribeConfigurationRecorders action.
  factory DescribeConfigurationRecordersResponse(
      {List<_i2.ConfigurationRecorder>? configurationRecorders}) {
    return _$DescribeConfigurationRecordersResponse._(
        configurationRecorders: configurationRecorders == null
            ? null
            : _i3.BuiltList(configurationRecorders));
  }

  /// The output for the DescribeConfigurationRecorders action.
  factory DescribeConfigurationRecordersResponse.build(
      [void Function(DescribeConfigurationRecordersResponseBuilder)
          updates]) = _$DescribeConfigurationRecordersResponse;

  const DescribeConfigurationRecordersResponse._();

  /// Constructs a [DescribeConfigurationRecordersResponse] from a [payload] and [response].
  factory DescribeConfigurationRecordersResponse.fromResponse(
    DescribeConfigurationRecordersResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i4.SmithySerializer<DescribeConfigurationRecordersResponse>>
      serializers = [
    DescribeConfigurationRecordersResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConfigurationRecordersResponseBuilder b) {}

  /// A list that contains the descriptions of the specified configuration recorders.
  _i3.BuiltList<_i2.ConfigurationRecorder>? get configurationRecorders;
  @override
  List<Object?> get props => [configurationRecorders];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeConfigurationRecordersResponse')
          ..add(
            'configurationRecorders',
            configurationRecorders,
          );
    return helper.toString();
  }
}

class DescribeConfigurationRecordersResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeConfigurationRecordersResponse> {
  const DescribeConfigurationRecordersResponseAwsJson11Serializer()
      : super('DescribeConfigurationRecordersResponse');

  @override
  Iterable<Type> get types => const [
        DescribeConfigurationRecordersResponse,
        _$DescribeConfigurationRecordersResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigurationRecordersResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConfigurationRecordersResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationRecorders':
          result.configurationRecorders.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ConfigurationRecorder)],
            ),
          ) as _i3.BuiltList<_i2.ConfigurationRecorder>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeConfigurationRecordersResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConfigurationRecordersResponse(:configurationRecorders) =
        object;
    if (configurationRecorders != null) {
      result$
        ..add('ConfigurationRecorders')
        ..add(serializers.serialize(
          configurationRecorders,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ConfigurationRecorder)],
          ),
        ));
    }
    return result$;
  }
}
